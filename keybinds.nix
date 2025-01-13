[
  {
    key = "<C-n>";
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
    key = "<leader>h";
    mode = "n";
    silent = true;
    action = "<CMD>Telescope keymaps<CR>";
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
]
