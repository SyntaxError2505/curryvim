return {
  "jay-babu/mason-nvim-dap.nvim",
  dependencies = { "mfussenegger/nvim-dap", "williamboman/mason.nvim" },
  opts = {
    automatic_installation = true,
    ensure_installed = {},
    handlers = {
      function(config)
        require("mason-nvim-dap").default_setup(config)
      end,
    },
  },
}
