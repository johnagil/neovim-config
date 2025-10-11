-- stops line too long lint warning in markdown files
-- requires .markdownlint-cli2.yaml in home directory with the following:
-- config:
--  MD013: false
local HOME = os.getenv("HOME")
return {
  "mfussenegger/nvim-lint",
  optional = true,
  opts = {
    linters = {
      ["markdownlint-cli2"] = {
        args = { "--config", HOME .. "/.markdownlint-cli2.yaml", "--" },
      },
    },
  },
}
