GRAPHIC_TARGET_SUFFIX=png
TEXT_TARGET_SUFFIX=pdf

DOT=dot -T$(GRAPHIC_TARGET_SUFFIX)
RST2OTHER=rst2pdf

RESSOURCES_PATH=./src/
TARGETS_PATH=./

GRAPHIC_RESSOURCES=$(wildcard $(RESSOURCES_PATH)/*.dot)
GRAPHIC_TARGETS=$(patsubst $(RESSOURCES_PATH)/%.dot,$(TARGETS_PATH)/%.$(GRAPHIC_TARGET_SUFFIX),$(GRAPHIC_RESSOURCES))
TEXT_RESSOURCES=$(wildcard $(RESSOURCES_PATH)/*.rst)
TEXT_TARGETS=$(patsubst $(RESSOURCES_PATH)/%.rst,$(TARGETS_PATH)/%.$(TEXT_TARGET_SUFFIX),$(TEXT_RESSOURCES))

all: $(GRAPHIC_TARGETS) $(TEXT_TARGETS)

$(TARGETS_PATH)/%.$(GRAPHIC_TARGET_SUFFIX) : $(RESSOURCES_PATH)/%.dot
	$(DOT) $< -o $@

$(TARGETS_PATH)/%.$(TEXT_TARGET_SUFFIX) : $(RESSOURCES_PATH)/%.rst
	$(RST2OTHER) $< -o $@

