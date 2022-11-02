local capabilities = require('cmp_nvim_lsp').default_capabilities()

local config = {
    cmd = {'/usr/bin/jdtls'},
    root_dir = vim.fs.dirname(vim.fs.find({'.gradlew', '.git', 'mvnw'}, { upward = true })[1]),
    capabilities = capabilities
}

require('jdtls').start_or_attach(config)
