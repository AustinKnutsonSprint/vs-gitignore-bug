#include "myclass.h"
#include <iostream>

int main( int argc, char **argv )
{
	MyClass c( 1 );
	std::cout << c.X() << std::endl;
	return 0;
}
