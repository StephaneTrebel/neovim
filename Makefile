# Target directory to install all the configuration to.
TARGET ?= ${HOME}

.DEFAULT: help

.PHONY: help
## Show help
help:
	@grep -B1 -E "^[a-zA-Z0-9_-]+\:" Makefile \
     | grep -v -- -- \
     | sed 'N;s/\n/###/' \
     | sed -n 's/^#: \(.*\)###\(.*\):.*/\2###\1/p' \
     | column -t  -s '###'

.PHONY: add-nvim-conf
#: Symlink nvim-conf
add-nvim-conf:
	ln -s $$(pwd)/nvim $(TARGET)/.config/nvim

.PHONY: install
#: Install everything
install: add-nvim-conf
	@echo Making $@…
