#ifndef ATOMS_SIM_HPP
#define ATOMS_SIM_HPP

#include "SFML/Graphics.hpp"

void initWindow(int limit = 20);

void putTile(int x, int y, u_char R, u_char G, u_char B, u_char alpha = 255) ;

void flush() ;

bool interrupt() ;

#endif //ATOMS_SIM_HPP
