########################################################
# author : Andreas Hadjiprocopis (andreashad2@gmail.com)
# date   : 11/02/2020
# licence: GPL
########################################################

all: target1

.PHONY: dbcheck

target1: CALLER = target1
target1: dbcheck target1.flag
	@echo doing target1 with caller=$(CALLER) REMAKE=$(REMAKE)
	@if [ "$(REMAKE)" == "update" ]; then echo "must build target $@"; else echo "no need to build $@"; fi

dbcheck:
	@echo "but first I am checking $@ and $< and $^ (caller: $(CALLER))"
	# shell out external program
	$(eval REMAKE := $(shell dbcheck.sh "$(CALLER).flag"))
