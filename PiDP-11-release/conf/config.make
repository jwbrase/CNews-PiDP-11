# make header file
# pathname variables
# =()<NEWSARTS=@<NEWSARTS>@>()=
NEWSARTS=/var/news
# =()<NEWSOV=@<NEWSOV>@>()=
NEWSOV=/var/news
# =()<NEWSBIN=@<NEWSBIN>@>()=
NEWSBIN=/usr/libexec/news
# =()<NEWSCTL=@<NEWSCTL>@>()=
NEWSCTL=/usr/etc/news
# =()<NEWSCONFIG=@<NEWSCONFIG>@>()=
NEWSCONFIG=/usr/etc/news/bin/config

# workaround for System V make bug
SHELL=/bin/sh

# directories where things go
UIBIN=/usr/bin
RBIN=/usr/libexec/news/input

# compilation stuff
# LIB is for makefile dependencies, LIBS for cc invocations
LIB=../libcnews.a
LIBS=../libcnews.a 
CFLAGS=$(MORECFLAGS) -O -DSMALLMEM -I../include
LDFLAGS=$(CFLAGS) 
LINTFLAGS=$(MORELINTFLAGS) -I../include

# directories etc.
CONF=/usr/src/cnews/conf
MAKE=/usr/src/cnews/conf/maker
TO=$(CONF)/cpto
IN=$(CONF)/cmpto $(CMPOPT)
CF=$(CONF)/checkfile $(CMPOPT)
MKDIR=$(CONF)/mkdirs
MX=chmod +x
UPDATE=$(CONF)/update.ran ../libcnews.a
LIBCMP=$(CONF)/libcmp ../libcnews.a

# misc configuration bits
SPACEFOR=statfs
DOSPACEFOR=dospacefor
QUEUELEN=hdb
UID=news
GID=news
SIZE=small
DBZ=libdbz
STDIO=sysstdio
SERVER=
REPORTTO=jon
URGENTTO=jon

# things for testing
HERE=. ../conf/rsetup ;

# fake files needed
HFAKE= sys/timeb.h
OFAKE= fgetline.o putenv.o remove.o fsync.o
