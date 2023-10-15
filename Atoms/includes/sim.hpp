#ifndef ATOMS_SIM_HPP
#define ATOMS_SIM_HPP

#include <cstdint>

void initWindow(int limit = 20);

void putTile(int x, int y, uint8_t R, uint8_t G, uint8_t B, uint8_t alpha = 255) ;

void flush() ;

bool interrupt() ;

int next_rand();

#endif //ATOMS_SIM_HPP
