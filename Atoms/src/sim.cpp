#include "SFML/Graphics.hpp"

constexpr float SHAPE_SIZE = 8.0;
constexpr int COUNT = 100;
constexpr int DISPLAY_SIZE = COUNT * SHAPE_SIZE;

sf::RenderWindow window{ { DISPLAY_SIZE, DISPLAY_SIZE }, "CMake SFML Project" };

void initWindow(const int limit) {
    window.setFramerateLimit(limit);
}

void putTile(int x, int y, int R, int G, int B, int alpha = 255) {
    sf::RectangleShape rectangle{sf::Vector2f{SHAPE_SIZE, SHAPE_SIZE}};
    rectangle.setPosition(x * SHAPE_SIZE, y * SHAPE_SIZE);
    rectangle.setFillColor(sf::Color{
        static_cast<sf::Uint8>(R),
        static_cast<sf::Uint8>(G),
        static_cast<sf::Uint8>(B),
        static_cast<sf::Uint8>(alpha)
    });
    window.draw(rectangle);
}

void flush() {
    window.display();
    window.clear();
}

bool interrupt() {
    auto event = sf::Event{};
    window.pollEvent(event);
    return event.type == sf::Event::KeyPressed;
}

int next_rand() {
    return std::rand();
}