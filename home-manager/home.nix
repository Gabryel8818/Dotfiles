{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "gabreu";
  home.homeDirectory = "/home/gabreu";
  home.packages = [
    pkgs.kubectl
    pkgs.kubernetes-helm-wrapped
    pkgs.tfswitch
    pkgs.fzf
    pkgs.duf
    pkgs.neofetch
    pkgs.gh
    pkgs.kubectx
    pkgs.vault
    pkgs.k9s
    pkgs.docker
    pkgs.docker-compose
    pkgs.lazygit
    pkgs.shellcheck
    pkgs.ansible
    pkgs.glow
    pkgs.vagrant
    pkgs.bat
    pkgs.dogdns
    pkgs.bottom
    pkgs.ripgrep
    pkgs.minikube
    pkgs.fd
    pkgs.tree
    pkgs.gron
    pkgs.podman
    pkgs.podman-compose
    pkgs.buildah
    pkgs.trufflehog
    pkgs.vhs
    pkgs.lazydocker
    pkgs.trivy
    pkgs.git
    pkgs.fish
    pkgs.deadnix
    pkgs.statix
    pkgs.awscli2
    pkgs.httpie
    pkgs.lazydocker
    pkgs.navi
    pkgs.terraformer
    pkgs.siege
    pkgs.infracost
    pkgs.conftest
    pkgs.k6
  ];

  programs.git = {
    enable = true;
    userName = "Gabryel8818";
    userEmail = "gabriel_melo8818@hotmail.com";
    extraConfig = { 
      core.pager = "delta";
      interactive.diffFilter = "delta --color-only";
      delta = {
 	navigate = "true";
	side-by-side = "true";
	};
      merge = { 
	conflictstyle = "diff3";
	};
      diff = { 
	colorMoved = "default";	
      }; 
      credential."https://github.com" = {
	helper = "!/home/gabreu/.nix-profile/bin/gh auth git-credential"; 
      };
      credential."https://gist.github.com" = {
	helper = "!/home/gabreu/.nix-profile/bin/gh auth git-credential"; 
      };
      pull = { 
	ff = "only";
      };
    };
  };
 home.file.".gitconfig".source = "/home/gabreu/.config/git/config";
  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
