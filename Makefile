PREFIX ?= /usr/local/bin
CFLAGS = -Wall -Werror -std=gnu99 -O

include os-detect.inc

SRCS = tracer-$(OS).c frame.c

OBJS = $(patsubst %.c,%.o,$(SRCS))

swo-tracer: $(OBJS)
	gcc $(CFLAGS) $^ -o $@

install: swo-tracer
	install -d $(PREFIX)
	install $< $(PREFIX)/$<

clean:
	@rm -f $(OBJS) swo-tracer

.PHONY: install clean
