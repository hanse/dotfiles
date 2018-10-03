install:
	@homesick clone hanse/dotfiles
	@homesick clone dotfiles

update:
	@git submodule foreach git pull origin master

.PHONY: install update
