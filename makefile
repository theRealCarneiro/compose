PREFIX=/usr/local
BIN_DIR=${DESTDIR}${PREFIX}/bin
LICENSE_DIR=${DESTDIR}${PREFIX}/share/licenses/compose
ZSH_COMPLETION_DIR=${DESTDIR}${PREFIX}/share/zsh/site-functions
BASH_COMPLETION_DIR=${DESTDIR}${PREFIX}/share/bash-completion/completions
# MAN_DIR=${DESTDIR}${PREFIX}/share/man/man1

options:
	@echo compose build options:
	@echo "PREFIX               = $(PREFIX)"
	@echo "BIN_DIR              = $(BIN_DIR)"
	@echo "LICENSE_DIR          = $(LICENSE_DIR)"
	@echo "ZSH_COMPLETION_DIR   = $(ZSH_COMPLETION_DIR)"
	@echo "BASH_COMPLETION_DIR  = $(BASH_COMPLETION_DIR)"

install:
	install -Dm755 src/compose "${BIN_DIR}/compose"
	install -Dm644 LICENSE "${LICENSE_DIR}/LICENSE"
	install -Dm644 completion/zsh/_compose "${ZSH_COMPLETION_DIR}/_compose"
	install -Dm644 completion/bash/compose "${BASH_COMPLETION_DIR}/compose"
	
uninstall:
	rm "${BIN_DIR}/compose"
	rm -r "${LICENSE_DIR}"
	rm "${ZSH_COMPLETION_DIR}/_compose"
	rm "${BASH_COMPLETION_DIR}/compose"
	rm "${MAN_DIR}/compose.1"
