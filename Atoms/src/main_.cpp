#include "../includes/sim.hpp"

constexpr int R_start = 100;
constexpr int G_start = 100;
constexpr int B_start = 100;

constexpr int R_finish = 255;
constexpr int G_finish = 251;
constexpr int B_finish = 0;
constexpr int steps = 8;

constexpr int COUNT = 100;

struct RGB {
    int R;
    int G;
    int B;
    int step;
};

struct Tile {
    bool exist = false;
    int x{};
    int y{};
    RGB rgb{};
};

RGB nextRGB(RGB curr);
void putTile(Tile tile);
void loadNext(Tile *prev, Tile *next);

void main_() {
    Tile prev_static_arr[COUNT * COUNT];
    Tile next_static_arr[COUNT * COUNT];
    Tile* prev = prev_static_arr;
    Tile* next = next_static_arr;
    constexpr RGB default_rgb = RGB{
        .R = R_start,
        .G = G_start,
        .B = B_start,
        .step = 0
    };
    for (int x = 0; x < COUNT; ++x) {
        for (int y = 0; y < COUNT; ++y) {
            if (next_rand() % 50 == 0 && !prev[y * COUNT + x-1].exist) {
                prev[y * COUNT + x].exist = true;
                prev[y * COUNT + x].x = x;
                prev[y * COUNT + x].y = y;
                prev[y * COUNT + x].rgb = default_rgb;
                ++y;
            }
        }
    }

    for (int i = 0; i < 100; ++i) {
        if (interrupt()) {
            break;
        }
        for (int x = 0; x < COUNT; ++x) {
            for (int y = 0; y < COUNT; ++y) {
                putTile(prev[y * COUNT + x]);
            }
        }
        loadNext(prev, next);
        Tile* tmp = prev;
        prev = next;
        next = tmp;
        flush();
    }
}

RGB nextRGB(const RGB curr) {
    return RGB {
        .R = curr.R + (R_finish - R_start) / steps,
        .G = curr.G + (G_finish - G_start) / steps,
        .B = curr.B + (B_finish - B_start) / steps,
        .step = curr.step + 1
    };
}

void putTile(const Tile tile) {
    if (tile.exist) {
        putTile(
            tile.x,
            tile.y,
            tile.rgb.R,
            tile.rgb.G,
            tile.rgb.B
        );
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
                bool existed = next[i].exist;
                RGB rgb_prev = next[i].rgb;
                next[i] = prev[y * COUNT + x];
                next[i].x = x_next;
                next[i].y = y_next;
                if (existed) {
                    next[i].rgb = nextRGB(
                        rgb_prev.step > next[i].rgb.step ? rgb_prev: next[i].rgb
                    );
                }
            }
            prev[y * COUNT + x].exist = false;
        }
    }
}

