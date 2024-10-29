#include <iostream>
#include <vector>
#include <ctime>
#include <cstdlib>
#include <ncurses.h>

enum Direction { LEFT = 1, UP, RIGHT, DOWN };
constexpr int MAX_TAIL_SIZE = 1000;
constexpr int START_TAIL_SIZE = 3;
constexpr int MAX_FOOD_SIZE = 20;
constexpr int FOOD_EXPIRE_SECONDS = 10;
constexpr int SPEED = 20000;
constexpr char EXIT_KEY = 'q';

struct Tail {
    int x, y;
};

class Food {
public:
    int x, y;
    time_t put_time;
    bool is_active;
    char point;

    Food() : x(0), y(0), put_time(0), is_active(false), point('$') {}

    void spawn(int max_x, int max_y) {
        x = rand() % (max_x - 1);
        y = rand() % (max_y - 2) + 1;
        put_time = time(nullptr);
        is_active = true;
        mvprintw(y, x, "%c", point);
    }

    void checkExpiration() {
        if (is_active && time(nullptr) - put_time > FOOD_EXPIRE_SECONDS) {
            is_active = false;
            mvprintw(y, x, " ");
        }
    }
};

class Snake {
public:
    int x, y;
    Direction direction;
    size_t tail_size;
    std::vector<Tail> tail;

    Snake() : x(0), y(2), direction(RIGHT), tail_size(START_TAIL_SIZE) {
        tail.resize(MAX_TAIL_SIZE);
    }

    void move(int max_x, int max_y) {
        mvprintw(y, x, " ");
        switch (direction) {
            case LEFT:  x = (x <= 0) ? max_x : x - 1; break;
            case RIGHT: x = (x >= max_x) ? 0 : x + 1; break;
            case UP:    y = (y <= 0) ? max_y : y - 1; break;
            case DOWN:  y = (y >= max_y) ? 0 : y + 1; break;
        }
        mvprintw(y, x, "@");
    }

    void updateTail() {
        mvprintw(tail[tail_size - 1].y, tail[tail_size - 1].x, " ");
        for (size_t i = tail_size - 1; i > 0; --i) {
            tail[i] = tail[i - 1];
            if (tail[i].y || tail[i].x) {
                mvprintw(tail[i].y, tail[i].x, "*");
            }
        }
        tail[0] = {x, y};
    }

    void grow() {
        if (tail_size < MAX_TAIL_SIZE) {
            tail_size++;
        }
    }

    bool hasCollided() const {
        for (size_t i = 1; i < tail_size; ++i) {
            if (x == tail[i].x && y == tail[i].y) return true;
        }
        return false;
    }
};

class Game {
public:
    Snake snake;
    std::vector<Food> food;

    Game() : food(MAX_FOOD_SIZE) {}

    void setup() {
        initscr();
        keypad(stdscr, TRUE);
        noecho();
        curs_set(FALSE);
        srand(time(nullptr));
        putFood();
    }

    void run() {
        int max_x, max_y, key;
        getmaxyx(stdscr, max_y, max_x);
        mvprintw(0, 0, "Use arrows to control. Press 'q' to exit");

        while ((key = getch()) != EXIT_KEY) {
            handleInput(key);
            if (snake.hasCollided()) break;

            snake.move(max_x, max_y);
            snake.updateTail();

            if (checkFoodCollision()) {
                snake.grow();
            }

            displayLevel();  // Обновляем уровень на экране
            refreshFood(max_x, max_y);
            timeout(100);
        }

        endScreen();
        endwin();
    }

private:
    void handleInput(int key) {
        switch (key) {
            case KEY_DOWN: snake.direction = DOWN; break;
            case KEY_UP:   snake.direction = UP; break;
            case KEY_LEFT: snake.direction = LEFT; break;
            case KEY_RIGHT:snake.direction = RIGHT; break;
        }
    }

    void putFood() {
        int max_x, max_y;
        getmaxyx(stdscr, max_y, max_x);
        for (auto& f : food) {
            f.spawn(max_x, max_y);
        }
    }

    bool checkFoodCollision() {
        for (auto& f : food) {
            if (f.is_active && snake.x == f.x && snake.y == f.y) {
                f.is_active = false;
                return true;
            }
        }
        return false;
    }

    void refreshFood(int max_x, int max_y) {
        for (auto& f : food) {
            if (!f.is_active) f.spawn(max_x, max_y);
            f.checkExpiration();
        }
    }

    void displayLevel() {
        int max_x, max_y;
        getmaxyx(stdscr, max_y, max_x);
        mvprintw(0, max_x - 10, "LEVEL: %zu", snake.tail_size);
    }

    void endScreen() {
        int max_x, max_y;
        getmaxyx(stdscr, max_y, max_x);
        mvprintw(max_y / 2, max_x / 2 - 10, "Game Over! Your LEVEL: %zu", snake.tail_size);
        mvprintw(max_y - 2, max_x / 2 - 10, "Press any key to exit");
        refresh();
        nodelay(stdscr, FALSE);  // Ожидаем нажатия клавиши без тайм-аута
        getch();  // Ожидаем нажатия клавиши перед завершением
    }

};

int main() {
    Game game;
    game.setup();
    game.run();
    return 0;
}

