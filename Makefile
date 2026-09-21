.PHONY: install-tmux-conf install-auto-update

install-tmux-conf:
	@if [ -f ~/.tmux.conf ] || [ -L ~/.tmux.conf ]; then \
		echo "Error: ~/.tmux.conf already exists. Please remove it first."; \
		exit 1; \
	fi
	@ln -s $(PWD)/.tmux.conf ~/.tmux.conf
	@echo "Successfully symlinked .tmux.conf to ~/.tmux.conf"

install-auto-update:
	@if [ -f ~/.zshrc ]; then \
		if ! grep -q "cd ~/.dotfiles && git pull" ~/.zshrc; then \
			echo "" >> ~/.zshrc; \
			echo "# Auto-update dotfiles" >> ~/.zshrc; \
			echo "cd ~/.dotfiles && git pull && cd -" >> ~/.zshrc; \
			echo "Added auto-update command to ~/.zshrc"; \
		else \
			echo "Auto-update command already exists in ~/.zshrc"; \
		fi \
	elif [ -f ~/.bashrc ]; then \
		if ! grep -q "cd ~/.dotfiles && git pull" ~/.bashrc; then \
			echo "" >> ~/.bashrc; \
			echo "# Auto-update dotfiles" >> ~/.bashrc; \
			echo "cd ~/.dotfiles && git pull && cd -" >> ~/.bashrc; \
			echo "Added auto-update command to ~/.bashrc"; \
		else \
			echo "Auto-update command already exists in ~/.bashrc"; \
		fi \
	else \
		echo "Error: Neither ~/.zshrc nor ~/.bashrc found."; \
		exit 1; \
	fi
