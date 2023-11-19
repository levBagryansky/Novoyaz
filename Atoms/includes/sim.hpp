#ifndef ATOMS_SIM_HPP
#define ATOMS_SIM_HPP

void initWindow(int limit = 20);

void putTile(int x, int y, int R, int G, int B, int alpha = 255) ;

void flush() ;

bool interrupt() ;

int next_rand();

#endif //ATOMS_SIM_HPP
