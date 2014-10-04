CPP     = g++
CXX     = gcc
INCLUDE = -I $(HLS_HOME)/include
#CFLAGS  = -Wa,--32
CFLAGS  = 
LINKARGS = -lstdc++

TARGET 	= run_sample
OBJECTS	= tb.o

${TARGET}  : ${OBJECTS}
${OBJECTS} : tb.cpp

%.o : %.cpp
	${CPP} -c ${INCLUDE} ${CFLAGS} $<

%.o : %.c
	${CXX} -c ${INCLUDE} ${CFLAGS} $<

${TARGET} : ${OBJECTS}
	${CPP} ${OBJECTS} ${LINKARGS} -o $@ 

clean:
	rm -rf *.o ${TARGET}
