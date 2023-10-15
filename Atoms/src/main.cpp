#include "sim.hpp"

extern void main_();

int main() {
    std::srand(51);
    initWindow();
    main_();
    return 0;
}
