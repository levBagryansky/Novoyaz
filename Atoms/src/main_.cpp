#include "../includes/sim.hpp"

#define R_start 100
#define G_start 100
#define B_start 100

#define COUNT 100

struct Tile {
    bool exist = false;
    int x;
    int y;
};

void loadNext(Tile *prev, Tile *next);

void main_() {
    Tile prev_static_arr[COUNT * COUNT];
    Tile next_static_arr[COUNT * COUNT];
    Tile* prev = prev_static_arr;
    Tile* next = next_static_arr;
    for (int x = 0; x < COUNT; ++x) {
        for (int y = 0; y < COUNT; ++y) {
            if (next_rand() % 50 == 0 && !prev[y * COUNT + x-1].exist) {
                prev[y * COUNT + x].exist = true;
                prev[y * COUNT + x].x = x;
                prev[y * COUNT + x].y = y;
                ++y;
            }
        }
    }

    for (int i = 0; i < 200; ++i) {
        if (interrupt()) {
            break;
        }
        for (int x = 0; x < COUNT; ++x) {
            for (int y = 0; y < COUNT; ++y) {
                if (prev[y * COUNT + x].exist) {
                    putTile(
                        prev[y * COUNT + x].x,
                        prev[y * COUNT + x].y,
                        R_start,
                        G_start,
                        B_start
                    );
                }
            }
        }
        loadNext(prev, next);
        Tile* tmp = prev;
        prev = next;
        next = tmp;
        flush();
    }
}

void loadNext(Tile *prev, Tile *next) {
    for (int x = 0; x < COUNT; ++x) {
        for (int y = 0; y < COUNT; ++y) {
            if (prev[y * COUNT + x].exist) {
                int x_next = x; int y_next = y;
                if (next_rand() % 2) {
                    x_next = (COUNT + x + (next_rand() % 2) * 2  - 1) % COUNT;
                } else {
                    y_next = (COUNT + y + (next_rand() % 2) * 2 - 1) % COUNT;
                }
                int i = y_next * COUNT + x_next;
                next[i] = prev[y * COUNT + x];
                next[i].x = x_next;
                next[i].y = y_next;
            }
            prev[y * COUNT + x].exist = false;
        }
    }
}
