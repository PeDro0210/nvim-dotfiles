return {

  --Haskell LSP
  require("lspconfig")["hls"].setup({
    filetypes = { "haskell", "lhaskell", "cabal" },
  }),
}
