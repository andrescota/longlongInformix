#############################################################################
#  Licensed Material - Property Of IBM
# 
#  "Restricted Materials of IBM"
# 
#  IBM Informix Client SDK
# 
#  (c)  Copyright IBM Corporation 1997, 2013. All rights reserved.
# 
# ############################################################################
# 

ECHO=echo

INCL=-I$(INFORMIXDIR)/incl -I$(INFORMIXDIR)/incl/esql

ESQL = $(INFORMIXDIR)/bin/esql

RM = rm -f

# targets
DEMO1 = demo1

TARGET = $(DEMO1)

all: $(TARGET)
	$(ECHO) "All Demos Compiled Successfully"

$(DEMO1): $(DEMO1).ec
	$(ESQL) -o $(DEMO1) $(INCL) $(DEMO1).ec

clean:
	$(RM) $(TARGET)
	$(RM) $(DEMO1).c

