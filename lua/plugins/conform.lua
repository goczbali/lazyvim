return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      tex = { "texfmt" },
    },
    formatters = {
      injected = { options = { ignore_errors = true } },
      texfmt = {
        command = "tex-fmt",
        args = { "$FILENAME" },
        stdin = false,
      },
    },
  },
}
