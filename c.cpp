#include <time.h>
#include <iostream>
int main() {
	clock_t start = clock(), diff;
	double a = 1.21;
	for(long long i = 0; i < 100000000ll * 33; i++) {
		a += 1 / (a * a + 1);	
	}
	diff = clock() - start;
	std::cout << diff * 1000.0 / CLOCKS_PER_SEC << " ms" << '\n'; //ms
}
