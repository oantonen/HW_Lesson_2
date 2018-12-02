#include <iostream>
#include "func.hpp"
#include <cstdlib>

int	main(int ac, char *av[])
{
	if (ac < 2) {
		std::cout << "Invalid number of arguments" << std::endl;
		return 0;	
	}	

	std::cout << "Input number " << av[1] << " is ";
	
	if (is_alpha(atoi(av[1])))
		std::cout << "alphabet" << std::endl;
	else
		std::cout << "non alphabet" << std::endl;
	return 0;
}
