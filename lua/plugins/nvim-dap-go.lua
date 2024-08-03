return {
    -- https://github.com/mfussenegger/nvim-dap
    'mfussenegger/nvim-dap',
    ft = 'go',
    dependencies = {},
    config = function ()
    require('dap').setup()
  end
}
