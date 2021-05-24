{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "hex";
  home.homeDirectory = "/Users/hex";

  home.packages = [
    # pkgs is the set of all packages in the default home.nix implementation
    pkgs.ag
    pkgs.fzf
    pkgs.git
    pkgs.neovim
    pkgs.python3
    pkgs.ripgrep
    pkgs.ruby
    pkgs.tmux
    pkgs.vim
    pkgs.wget
  ];

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.05";
}
