{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    
    ignores = [
      ".direnv/"
      "node_modules/"
      ".DS_Store"
    ];

    settings = {
      user = {
        name = "GLOCKFATHERDRACO";
        email = "glockfatherdraco@gmail.com";
      };

      init = {
        defaultBranch = "main";
      };

      pull = {
        rebase = true;
      };

      push = {
        autoSetupRemote = true;
      };

      core = {
        editor = "neovim";
      };
    };
  };
}
