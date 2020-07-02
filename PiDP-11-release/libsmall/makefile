MORECFLAGS=-I../relay



# =()<@<INCLUDE>@>()=
.include "../include/config.make"



OBJS=active.slow.o
ALL=$(OBJS)

u:	$(ALL)
	$(UPDATE) $(OBJS)
	../conf/update.ran ../libcnews.a active.slow.o

o:	$(OBJS)

cmp:	$(ALL)
	$(LIBCMP) $(OBJS)

clean:
	rm -f *.o
