main: main.o mapa.o vehiculo.o terrestre.o acuatico.o rescatista.o
	g++  main.o vehiculo.o terrestre.o acuatico.o rescatista.o mapa.o -pthread -lncurses -o proyecto
	
main.o:	main.cpp mapa.o vehiculo.h
	g++ -c -std=c++11 main.cpp

vehiculo.o:	vehiculo.cpp vehiculo.h
	g++ -c vehiculo.cpp

terrestre.o:	terrestre.cpp vehiculo.h terrestre.h
	g++ -c -std=c++11 terrestre.cpp

acuatico.o:	acuatico.cpp vehiculo.h acuatico.h
	g++ -c -std=c++11 acuatico.cpp

rescatista.o:	rescatista.cpp vehiculo.h rescatista.h
	g++ -c -std=c++11 rescatista.cpp

mapa.o:	mapa.cpp mapa.h vehiculo.h
	g++ -c -std=c++11 mapa.cpp