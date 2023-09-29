#include <SFML/Graphics.hpp>
#include <stdio.h>
#include <random>
#include <cstring>

constexpr float SHAPE_SIZE = 8.0;
constexpr int COUNT = 100;
constexpr int DISPLAY_SIZE = COUNT * SHAPE_SIZE;

constexpr int R_start = 20;
constexpr int G_start = 117;
constexpr int B_start = 104;

constexpr int R_finish = 255;
constexpr int G_finish = 251;
constexpr int B_finish = 0;
constexpr int steps = 5;

int nextR(int R) {
    return R + (R_finish - R_start) / steps;
}

int nextG(int G) {
    return G + (G_finish - G_start) / steps;
}

int nextB(int B) {
    return B + (B_finish - B_start) / steps;
}

sf::RenderWindow window{ { DISPLAY_SIZE, DISPLAY_SIZE }, "CMake SFML Project" };

struct Tile {
    bool exist = false;
    int x{};
    int y{};
    u_char R{R_start};
    u_char G{G_start};
    u_char B{B_start};
    u_char alpha = 255;
};

void putTile(int x, int y, u_char R, u_char G, u_char B, u_char alpha = 255) {
    sf::RectangleShape rectangle{sf::Vector2f{SHAPE_SIZE, SHAPE_SIZE}};
    rectangle.setPosition(x * SHAPE_SIZE, y * SHAPE_SIZE);
    rectangle.setFillColor(sf::Color{R, G, B, alpha});
    window.draw(rectangle);
}

void putTile(const Tile tile) {
    if (tile.exist) {
        putTile(
                tile.x,
                tile.y,
                tile.R,
                tile.G,
                tile.B,
                tile.alpha
        );
    }
}


void loadNext(Tile *prev, Tile *next) {
    for (int x = 0; x < COUNT; ++x) {
        for (int y = 0; y < COUNT; ++y) {
            if (prev[y * COUNT + x].exist) {
                int x_next = x; int y_next = y;
                if (std::rand() % 2) {
                    x_next = (COUNT + x + (std::rand() % 2) * 2  - 1) % COUNT;
                } else {
                    y_next = (COUNT + y + (std::rand() % 2) * 2 - 1) % COUNT;
                }
                int i = y_next * COUNT + x_next;
                bool existed = next[i].exist;
                next[i] = prev[y * COUNT + x];
                next[i].x = x_next;
                next[i].y = y_next;
                if (existed) {
                    next[i].R = nextR(next[i].R);
                    next[i].G = nextG(next[i].G);
                    next[i].B = nextB(next[i].B);
                }
            }
            prev[y * COUNT + x].exist = false;
        }
    }
}

int main()
{
    window.setFramerateLimit(25);
    std::srand(51);
    Tile prev[COUNT * COUNT];
    Tile next[COUNT * COUNT];
    for (int x = 0; x < COUNT; ++x) {
        for (int y = 0; y < COUNT; ++y) {
            if (std::rand() % 35 == 0 && !prev[y * COUNT + x-1].exist) {
                prev[y * COUNT + x].exist = true;
                prev[y * COUNT + x].x = x;
                prev[y * COUNT + x].y = y;
                ++y;
            }
        }
    }

    int i = 0;
    while (window.isOpen())
    {
        i++;
        for (int x = 0; x < COUNT; ++x) {
            for (int y = 0; y < COUNT; ++y) {
                putTile(prev[y * COUNT + x]);
            }
        }
        loadNext(prev, next);
        std::swap(prev, next);
        for (auto event = sf::Event{}; window.pollEvent(event);)
        {
            if (event.type == sf::Event::Closed)
            {
                window.close();
            }
        }
        window.display();
        window.clear();
    }
    printf("i = %i\n", i);
    return 0;
}
