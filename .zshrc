# --- Configurações de Histórico ---
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Opções para o histórico ser persistente e inteligente
setopt appendhistory         # Adiciona ao histórico em vez de sobrescrever
setopt sharehistory          # Compartilha o histórico entre abas do Kitty
setopt inc_append_history    # Salva o comando logo após executado
setopt hist_ignore_all_dups  # Não salva comandos repetidos (limpa o autosuggest)
setopt hist_ignore_space     # Comandos que começam com espaço não vão para o histórico

# --- Binds ---
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char
bindkey "^H" backward-kill-word
bindkey "^[[3;5~" kill-word
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

# --- Plugins ---
source "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# --- fzf ---
source <(fzf --zsh)

# --- Starship Prompt ---
eval "$(starship init zsh)"

# Iniciar o Hyprland automaticamente se estiver no TTY1
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec start-hyprland
fi

~ 
