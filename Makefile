z:
	@ln -s ~/.dotfiles/z/z.sh ~/z.sh
.PHONY: z

zsh:
	@ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
.PHONY: zsh

ghostty:
	@ln -s ~/.dotfiles/ghostty ~/.config/ghostty
.PHONY: ghostty

nvim:
	@ln -s ~/.dotfiles/nvim ~/.config/nvim
.PHONY: nvim

starship:
	@ln -s ~/.dotfiles/starship/starship.toml ~/.config/starship.toml
.PHONY: starship

wallpapers:
	@ln -s ~/.dotfiles/wallpapers/backgrounds ~/.local/share/backgrounds
.PHONY: wallpapers

finder:
	@sudo apt install fd-find
	@sudo apt install ripgrep
	@ln -s $(which fdfind) ~/.local/bin/fd
.PHONY: finder
