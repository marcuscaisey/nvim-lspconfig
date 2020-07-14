local configs = require 'nvim_lsp/configs'
local util = require 'nvim_lsp/util'

local server_name = "pyright"

local installer = util.npm_installer {
  server_name = server_name;
  packages = {server_name};
  binaries = {server_name};
}

configs[server_name] = {
  default_config = {
    cmd = {"pyright-langserver", "--stdio"};
    filetypes = {"python"};
   root_dir = util.root_pattern(".git", "setup.py",  "setup.cfg", "pyproject.toml", "requirements.txt");
  };
  docs = {
    description = [[
https://github.com/microsoft/pyright

`pyright`, a static type checker and language server for python
]];
  };
}

configs[server_name].install = installer.install
configs[server_name].install_info = installer.info

-- configs[server_name].install = installer.install
-- configs[server_name].install_info = installer.info
-- vim:et ts=2 sw=2
