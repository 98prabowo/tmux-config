.PHONY: link, unlink, help

link:
	@echo "🔗 Linking config to $(HOME)..."
	@stow --target=$(HOME) config

unlink:
	@echo "❌ Unlinking config from $(HOME)..."
	@stow --target=$(HOME) --delete config

help:
	@echo "📦 Usage:"
	@echo "  make link   - Symlink config to $(HOME) using stow"
	@echo "  make unlink - Remove symlinks from $(HOME) using stow --delete"
