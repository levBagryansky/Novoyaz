#include <SFML/Graphics.hpp>
#include <stdio.h>
#include <random>

constexpr float SHAPE_SIZE = 8.0;
constexpr int COUNT = 100;
constexpr int DISPLAY_SIZE = COUNT * SHAPE_SIZE;

sf::RenderWindow window{ { DISPLAY_SIZE, DISPLAY_SIZE }, "CMake SFML Project" };

struct Tile {
    bool exist = false;
    int x{};
    int y{};
    u_char R{};
    u_char G{};
    u_char B{};
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
                while (next[y_next * COUNT + x_next].exist) {
                    y_next = (y_next + 1) % COUNT;
                }
                next[y_next * COUNT + x_next] = prev[y * COUNT + x];
                next[y_next * COUNT + x_next].x = x_next;
                next[y_next * COUNT + x_next].y = y_next;
                prev[y * COUNT + x].exist = false;
            }
        }
    }
}

int main()
{
    window.setFramerateLimit(20);
    std::srand(51);
    Tile prev[COUNT * COUNT];
    Tile next[COUNT * COUNT];
    for (int x = 0; x < COUNT; ++x) {
        for (int y = 0; y < COUNT; ++y) {
            if (std::rand() % 100 == 0 && !prev[y * COUNT + x-1].exist) {
                prev[y * COUNT + x].exist = true;
                prev[y * COUNT + x].x = x;
                prev[y * COUNT + x].y = y;
                prev[y * COUNT + x].R = 30;
                prev[y * COUNT + x].G = 160;
                prev[y * COUNT + x].B = 50;
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
