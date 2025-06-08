{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;

    autosuggestion.enable = true;
    history.size = 1000000;
    syntaxHighlighting.enable = true;

    initContent = ''
      [[ ! -f ${./p10k.zsh} ]] || source ${./p10k.zsh}
      eval "$(zoxide init --cmd cd zsh)"
    '';

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
    };

    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
    ];

    shellAliases = {
      cat = "bat";
      clear = "printf '\\033[2J\\033[3J\\033[1;1H'";
    };
  };
}
