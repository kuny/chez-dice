#--------------------------------------------------
# Project:
# Purpose:
#--------------------------------------------------

.PHONY: all run test

all: run

run:
	@chez --libdirs src:. --script src/main.ss

test:
	@chez --libdirs src:. --script test/test.ss

