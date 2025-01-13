{
  pkgs,
  lib,
  ...
}: let
  lazygit_toggle = (import ./lazygit_toggle.nix pkgs).path;
in {
  vim = {
    spellcheck.enable = true;
    viAlias = true;
    vimAlias = true;
    options = {
      shiftwidth = 4;
      tabstop = 4;
    };
    extraLuaFiles = [
      lazygit_toggle
    ];
    useSystemClipboard = true;
    lineNumberMode = "number";
    keymaps = [
      {
        key = "<leader>f";
        mode = "n";
        silent = true;
        action = "<CMD>Neotree toggle<CR>";
      }
      {
        key = ";";
        mode = "n";
        silent = true;
        action = ":";
      }
      {
        key = "<leader>ff";
        mode = "n";
        silent = true;
        action = "<CMD>Telescope find_files<CR>";
      }
      {
        key = "<leader>fg";
        mode = "n";
        silent = true;
        action = "<CMD>Telescope live_grep<CR>";
      }
      {
        key = "<leader>gg";
        mode = "n";
        silent = true;
        action = ''<CMD>lua term_lazygit_toggle()<CR>'';
      }
      {
        key = "<C-h>";
        mode = ["n" "t"];
        silent = true;
        action = "<CMD>wincmd h<CR>";
      }
      {
        key = "<C-j>";
        mode = ["n" "t"];
        silent = true;
        action = "<CMD>wincmd j<CR>";
      }
      {
        key = "<C-k>";
        mode = ["n" "t"];
        silent = true;
        action = "<CMD>wincmd k<CR>";
      }
      {
        key = "<C-l>";
        mode = ["n" "t"];
        silent = true;
        action = "<CMD>wincmd l<CR>";
      }
      {
        key = "<C-t>";
        mode = ["n" "t"];
        silent = true;
        action = "<CMD>ToggleTerm<CR>";
      }

      #{
      # key = "<leader>p";
      # mode = "n";
      # silent = true;
      # action = '':lua require("cellular-automaton").start_animation("make_it_rain")<CR>'';
      #}
    ];
    languages = {
      enableFormat = true;
      enableLSP = true;
      enableTreesitter = true;

      nix.enable = true;
      rust.enable = true;
      clang.enable = true;
      rust.crates.enable = true;
      csharp.enable = true;
      markdown.enable = true;
      python.enable = true;
      # Nim LSP is broken on Darwin and therefore
      # should be disabled by default. Users may still enable
      # `vim.languages.vim` to enable it, this does not restrict
      # that.
      # See: <https://github.com/PMunch/nimlsp/issues/178#issue-2128106096>
      nim.enable = false;
    };

    lsp = {
      formatOnSave = true;
      lspkind.enable = false;
      lightbulb.enable = true;
      lspsaga.enable = false;
      trouble.enable = true;
      lspSignature.enable = true;
      otter-nvim.enable = true;
      lsplines.enable = true;
      nvim-docs-view.enable = true;
    };

    debugger = {
      nvim-dap = {
        enable = true;
        ui.enable = true;
      };
    };
    visuals = {
      nvim-scrollbar.enable = true;
      nvim-web-devicons.enable = true;
      nvim-cursorline.enable = true;
      cinnamon-nvim.enable = true;
      fidget-nvim.enable = true;

      highlight-undo.enable = true;
      indent-blankline.enable = true;

      # Fun
      cellular-automaton.enable = false;
    };
    statusline = {
      lualine = {
        enable = true;
        theme = "catppuccin";
      };
    };

    theme = {
      enable = true;
      name = "catppuccin";
      style = "mocha";
      transparent = false;
    };

    autopairs.nvim-autopairs.enable = true;

    autocomplete.nvim-cmp.enable = true;
    snippets.luasnip.enable = true;

    filetree = {
      neo-tree = {
        enable = true;
      };
    };

    tabline = {
      nvimBufferline.enable = true;
    };

    treesitter.context.enable = true;

    binds = {
      whichKey.enable = true;
      cheatsheet.enable = true;
    };

    telescope.enable = true;

    git = {
      enable = true;
      gitsigns.enable = true;
      gitsigns.codeActions.enable = false; # throws an annoying debug message
    };

    minimap = {
      minimap-vim.enable = false;
      codewindow.enable = true; # lighter, faster, and uses lua for configuration
    };

    dashboard = {
      dashboard-nvim.enable = false;
      alpha.enable = true;
    };

    notify = {
      nvim-notify.enable = true;
    };

    projects = {
      project-nvim.enable = true;
    };

    utility = {
      ccc.enable = false;
      vim-wakatime.enable = false;
      icon-picker.enable = true;
      surround.enable = true;
      diffview-nvim.enable = true;
      motion = {
        hop.enable = true;
        leap.enable = true;
        precognition.enable = true;
      };

      images = {
        image-nvim.enable = false;
      };
    };

    notes = {
      obsidian.enable = false; # FIXME: neovim fails to build if obsidian is enabled
      neorg.enable = false;
      orgmode.enable = false;
      mind-nvim.enable = true;
      todo-comments.enable = true;
    };

    terminal = {
      toggleterm = {
        enable = true;
        lazygit.enable = false; #I use custom script
      };
    };

    ui = {
      borders.enable = true;
      noice.enable = true;
      colorizer.enable = true;
      modes-nvim.enable = false; # the theme looks terrible with catppuccin
      illuminate.enable = true;
      breadcrumbs = {
        enable = true;
        navbuddy.enable = true;
      };
      smartcolumn = {
        enable = true;
        setupOpts.custom_colorcolumn = {
          # this is a freeform module, it's `buftype = int;` for configuring column position
          nix = "110";
          ruby = "120";
          java = "130";
          go = ["90" "130"];
        };
      };
      fastaction.enable = true;
    };

    assistant = {
      chatgpt.enable = false;
      copilot = {
        enable = false;
        cmp.enable = true;
      };
    };

    session = {
      nvim-session-manager.enable = false;
    };

    gestures = {
      gesture-nvim.enable = false;
    };

    comments = {
      comment-nvim.enable = true;
    };

    presence = {
      neocord.enable = false;
    };
  };
}
