# Makefile
#
# by FBLabs

all: tk2k_ar

SYS=apple2

CC=cc65
AS=ca65
LD=ld65
AR=ar65
CP=cp
RM=rm

CFLAGS  = -t $(SYS) -O -I../inc -I.
AFLAGS  = -t $(SYS) -l $(*).lst -I../inc -I.
LDFLAGS = -C ../_config

OBJS = tk2k_ar.o

tk2k_ar: $(OBJS)
	$(LD) $(LDFLAGS) -o $@#060036 $^

clean:
	$(RM) -f *.o *.BIN *.lst

.c.o:
	$(CC) $(CFLAGS) -o $(*).s $<
	$(AS) $(AFLAGS) -o $@ $(*).s

.s.o:
	$(AS) $(AFLAGS) -o $@ $<
