local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep
local line_begin = require("luasnip.extras.expand_conditions").line_begin

local function in_mathzone()
  return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

local function in_text()
  ---@diagnostic disable-next-line: undefined-global
  return not tex.in_mathzone()
end

return {
  s({ trig = "!=", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\neq"),
  }, { condition = in_mathzone }),
  s({ trig = "!>", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\mapsto"),
  }, { condition = in_mathzone }),
  s({ trig = "!%->", snippetType = "autosnippet", priority = 2000 }, {
    t("\\longmapsto"),
  }, { condition = in_mathzone }),
  s({ trig = "%*%*", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\cdot"),
  }, { condition = in_mathzone }),
  s({ trig = "xx", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\times"),
  }, { condition = in_mathzone }),
  s({ trig = "%+%-", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\pm"),
  }, { condition = in_mathzone }),
  s({ trig = "%-%+", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\mp"),
  }, { condition = in_mathzone }),
  s({ trig = "%->", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\to"),
  }, { condition = in_mathzone }),
  s({ trig = "<%->", wordTrig = false, regTrig = true, snippetType = "autosnippet", priority = 2000 }, {
    t("\\leftrightarrow"),
  }, { condition = in_mathzone }),
  s({ trig = "<%-%->", wordTrig = false, regTrig = true, snippetType = "autosnippet", priority = 2000 }, {
    t("\\longleftrightarrow"),
  }, { condition = in_mathzone }),
  s({ trig = "%.%.%.", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\dots"),
  }, { condition = in_mathzone }),
  s({ trig = "<<", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\ll"),
  }, { condition = in_mathzone }),
  s({ trig = "<=", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\leq"),
  }, { condition = in_mathzone }),
  s({ trig = "<>", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\diamond"),
  }, { condition = in_mathzone }),
  s({ trig = "=<", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\impliedby"),
  }, { condition = in_mathzone }),
  s({ trig = "==", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("& ="),
  }, { condition = in_mathzone }),
  s({ trig = "=>", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\implies"),
  }, { condition = in_mathzone }),
  s({ trig = ">=", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\geq"),
  }, { condition = in_mathzone }),
  s({ trig = ">>", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\gg"),
  }, { condition = in_mathzone }),
  s({ trig = "AA", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\forall"),
  }, { condition = in_mathzone }),
  s({ trig = "EE", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\exists"),
  }, { condition = in_mathzone }),
  s({ trig = "cb", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("^3"),
  }, { condition = in_mathzone }),
  s({ trig = "iff", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\iff"),
  }, { condition = in_mathzone }),
  s({ trig = ";I", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\in"),
  }, { condition = in_mathzone }),
  s({ trig = "not", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\not"),
  }, { condition = in_mathzone }),
  s({ trig = "sr", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("^2"),
  }, { condition = in_mathzone }),
  s({ trig = "|=", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\models"),
  }, { condition = in_mathzone }),
  s({ trig = "||", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\mid"),
  }, { condition = in_mathzone }),
  s({ trig = "~=", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\approx"),
  }, { condition = in_mathzone }),
  s({ trig = "~~", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\sim"),
  }, { condition = in_mathzone }),
  s({ trig = "arccos", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\arccos"),
  }, { condition = in_mathzone }),
  s({ trig = "arcsin", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\arcsin"),
  }, { condition = in_mathzone }),
  s({ trig = "arctan", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\arctan"),
  }, { condition = in_mathzone }),
  s({ trig = "arccsc", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\arccsc"),
  }, { condition = in_mathzone }),
  s({ trig = "arcsec", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\arcsec"),
  }, { condition = in_mathzone }),
  s({ trig = "arccot", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\arccot"),
  }, { condition = in_mathzone }),
  s({ trig = "cos", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\cos"),
  }, { condition = in_mathzone }),
  s({ trig = "int", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\int"),
  }, { condition = in_mathzone }),
  s({ trig = "sin", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\sin"),
  }, { condition = in_mathzone }),
  s({ trig = "tan", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\tan"),
  }, { condition = in_mathzone }),
  s({ trig = "csc", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\csc"),
  }, { condition = in_mathzone }),
  s({ trig = "sec", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\sec"),
  }, { condition = in_mathzone }),
  s({ trig = "cot", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\cot"),
  }, { condition = in_mathzone }),
  s({ trig = "exp", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\exp"),
  }, { condition = in_mathzone }),
  s({ trig = "ln", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\ln"),
  }, { condition = in_mathzone }),
  s({ trig = "log", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\log"),
  }, { condition = in_mathzone }),
  s({ trig = "perp", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\perp"),
  }, { condition = in_mathzone }),
  s({ trig = "star", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\star"),
  }, { condition = in_mathzone }),
  s({ trig = "gcd", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\gcd"),
  }, { condition = in_mathzone }),
  s({ trig = "min", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\min"),
  }, { condition = in_mathzone }),
  s({ trig = "max", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\max"),
  }, { condition = in_mathzone }),
  s({ trig = "eqv", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\equiv"),
  }, { condition = in_mathzone }),
  s({ trig = "CC", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\C"),
  }, { condition = in_mathzone }),
  s({ trig = "FF", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\F"),
  }, { condition = in_mathzone }),
  s({ trig = "HH", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\HH"),
  }, { condition = in_mathzone }),
  s({ trig = "NN", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\N"),
  }, { condition = in_mathzone }),
  s({ trig = "PP", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\PP"),
  }, { condition = in_mathzone }),
  s({ trig = "QQ", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\Q"),
  }, { condition = in_mathzone }),
  s({ trig = "RR", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\R"),
  }, { condition = in_mathzone }),
  s({ trig = "ZZ", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\Z"),
  }, { condition = in_mathzone }),
  s({ trig = ";a", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\alpha"),
  }, { condition = in_mathzone }),
  s({ trig = ";A", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\forall"),
  }, { condition = in_mathzone }),
  s({ trig = ";;A", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\aleph"),
  }, { condition = in_mathzone }),
  s({ trig = ";b", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\beta"),
  }, { condition = in_mathzone }),
  s({ trig = ";d", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\delta"),
  }, { condition = in_mathzone }),
  s({ trig = ";;d", wordTrig = false, regTrig = true, snippetType = "autosnippet", priority = 2000 }, {
    t("\\partial"),
  }, { condition = in_mathzone }),
  s({ trig = ";D", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\Delta"),
  }, { condition = in_mathzone }),
  s({ trig = ";;D", wordTrig = false, regTrig = true, snippetType = "autosnippet", priority = 2000 }, {
    t("\\nabla"),
  }, { condition = in_mathzone }),
  s({ trig = ";e", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\varepsilon"),
  }, { condition = in_mathzone }),
  s({ trig = ";;e", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\epsilon"),
  }, { condition = in_mathzone }),
  s({ trig = ";E", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\exists"),
  }, { condition = in_mathzone }),
  s({ trig = ";f", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\varphi"),
  }, { condition = in_mathzone }),
  s({ trig = ";;f", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\phi"),
  }, { condition = in_mathzone }),
  s({ trig = ";F", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\Phi"),
  }, { condition = in_mathzone }),
  s({ trig = ";g", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\gamma"),
  }, { condition = in_mathzone }),
  s({ trig = ";G", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\Gamma"),
  }, { condition = in_mathzone }),
  s({ trig = ";h", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\nu"),
  }, { condition = in_mathzone }),
  s({ trig = ";i", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\iota"),
  }, { condition = in_mathzone }),
  s({ trig = ";;i", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\imath"),
  }, { condition = in_mathzone }),
  s({ trig = ";;j", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\jmath"),
  }, { condition = in_mathzone }),
  s({ trig = ";k", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\kappa"),
  }, { condition = in_mathzone }),
  s({ trig = ";l", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\lambda"),
  }, { condition = in_mathzone }),
  s({ trig = ";L", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\Lambda"),
  }, { condition = in_mathzone }),
  s({ trig = ";;l", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\ell"),
  }, { condition = in_mathzone }),
  s({ trig = ";m", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\mu"),
  }, { condition = in_mathzone }),
  s({ trig = ";n", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\nu"),
  }, { condition = in_mathzone }),
  s({ trig = ";N", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\nabla"),
  }, { condition = in_mathzone }),
  s({ trig = ";o", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\omega"),
  }, { condition = in_mathzone }),
  s({ trig = ";O", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\Omega"),
  }, { condition = in_mathzone }),
  s({ trig = ";p", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\pi"),
  }, { condition = in_mathzone }),
  s({ trig = ";P", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\prod"),
  }, { condition = in_mathzone }),
  s({ trig = ";;P", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\Pi"),
  }, { condition = in_mathzone }),
  s({ trig = ";q", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\theta"),
  }, { condition = in_mathzone }),
  s({ trig = ";;q", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\vartheta"),
  }, { condition = in_mathzone }),
  s({ trig = ";Q", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\Theta"),
  }, { condition = in_mathzone }),
  s({ trig = ";r", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\rho"),
  }, { condition = in_mathzone }),
  s({ trig = ";;r", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\varrho"),
  }, { condition = in_mathzone }),
  s({ trig = ";;R", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\Re"),
  }, { condition = in_mathzone }),
  s({ trig = ";;I", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\Im"),
  }, { condition = in_mathzone }),
  s({ trig = ";s", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\sigma"),
  }, { condition = in_mathzone }),
  s({ trig = ";;s", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\varsigma"),
  }, { condition = in_mathzone }),
  s({ trig = ";S", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\sum"),
  }, { condition = in_mathzone }),
  s({ trig = ";;S", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\Sigma"),
  }, { condition = in_mathzone }),
  s({ trig = ";t", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\tau"),
  }, { condition = in_mathzone }),
  s({ trig = ";u", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\upsilon"),
  }, { condition = in_mathzone }),
  s({ trig = ";x", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\xi"),
  }, { condition = in_mathzone }),
  s({ trig = ";X", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\Xi"),
  }, { condition = in_mathzone }),
  s({ trig = ";c", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\chi"),
  }, { condition = in_mathzone }),
  s({ trig = ";y", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\psi"),
  }, { condition = in_mathzone }),
  s({ trig = ";Y", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\Psi"),
  }, { condition = in_mathzone }),
  s({ trig = ";z", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\zeta"),
  }, { condition = in_mathzone }),
  s({ trig = ";Z", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\Zeta"),
  }, { condition = in_mathzone }),
  s({ trig = ";0", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\emptyset"),
  }, { condition = in_mathzone }),
  s({ trig = ";8", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\infty"),
  }, { condition = in_mathzone }),
  s({ trig = ";!", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\lnot"),
  }, { condition = in_mathzone }),
  s({ trig = ";&", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\land"),
  }, { condition = in_mathzone }),
  s({ trig = ";|", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\lor"),
  }, { condition = in_mathzone }),
  s({ trig = ";%+", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\cup"),
  }, { condition = in_mathzone }),
  s({ trig = ";\\", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\setminus"),
  }, { condition = in_mathzone }),
  s({ trig = ";%-", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\cap"),
  }, { condition = in_mathzone }),
  s({ trig = ";;%+", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\oplus"),
  }, { condition = in_mathzone }),
  s({ trig = ";<", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\langle"),
  }, { condition = in_mathzone }),
  s({ trig = ";>", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\rangle"),
  }, { condition = in_mathzone }),
  s({ trig = ";%(", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\left("),
    i(1),
    t("\\right)"),
  }, { condition = in_mathzone }),
  -- s({ trig = ";%(", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
  --   t("\\left("),
  -- }, { condition = in_mathzone }),
  -- s({ trig = ";%)", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
  --   t("\\right)"),
  -- }, { condition = in_mathzone }),
  s({ trig = ";{", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\left\\{"),
  }, { condition = in_mathzone }),
  s({ trig = ";}", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\right\\{"),
  }, { condition = in_mathzone }),
  s({ trig = ";C", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\subset"),
  }, { condition = in_mathzone }),
  s({ trig = ";z", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("\\zeta"),
  }, { condition = in_mathzone }),
  s({ trig = "ii", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("_i"),
  }, { condition = in_mathzone }),
  s({ trig = "ip1", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("_{i+1}"),
  }, { condition = in_mathzone }),
  s({ trig = "jj", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("_j"),
  }, { condition = in_mathzone }),
  s({ trig = "jp1", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("_{j+1}"),
  }, { condition = in_mathzone }),
  s({ trig = "kk", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("_k"),
  }, { condition = in_mathzone }),
  s({ trig = "kp1", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("_{k+1}"),
  }, { condition = in_mathzone }),
  -- s({ trig = 'nn', wordTrig = false, regTrig = true, snippetType = 'autosnippet' }, {
  --   t '_n',
  -- }, { condition = in_mathzone }),
  s({ trig = "np1", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("_{n+1}"),
  }, { condition = in_mathzone }),
  s({ trig = "np1", wordTrig = false, regTrig = true, snippetType = "autosnippet" }, {
    t("_{n+1}"),
  }, { condition = in_mathzone }),
  s(
    { trig = "([%a%)%]%}])0", wordTrig = false, regTrig = true, snippetType = "autosnippet" },
    fmta("<>_0", {
      f(function(_, snip)
        return snip.captures[1]
      end),
    }),
    { condition = in_mathzone }
  ),
  s(
    { trig = "([%a%)%]%}])1", wordTrig = false, regTrig = true, snippetType = "autosnippet" },
    fmta("<>_1", {
      f(function(_, snip)
        return snip.captures[1]
      end),
    }),
    { condition = in_mathzone }
  ),
  s(
    { trig = "([%a%)%]%}])2", wordTrig = false, regTrig = true, snippetType = "autosnippet" },
    fmta("<>_2", {
      f(function(_, snip)
        return snip.captures[1]
      end),
    }),
    { condition = in_mathzone }
  ),
  s(
    { trig = "([%a%)%]%}])3", wordTrig = false, regTrig = true, snippetType = "autosnippet" },
    fmta("<>_3", {
      f(function(_, snip)
        return snip.captures[1]
      end),
    }),
    { condition = in_mathzone }
  ),
  s(
    { trig = "([%a%)%]%}])4", wordTrig = false, regTrig = true, snippetType = "autosnippet" },
    fmta("<>_4", {
      f(function(_, snip)
        return snip.captures[1]
      end),
    }),
    { condition = in_mathzone }
  ),
  s(
    { trig = "([%a%)%]%}])5", wordTrig = false, regTrig = true, snippetType = "autosnippet" },
    fmta("<>_5", {
      f(function(_, snip)
        return snip.captures[1]
      end),
    }),
    { condition = in_mathzone }
  ),
  s(
    { trig = "([%a%)%]%}])6", wordTrig = false, regTrig = true, snippetType = "autosnippet" },
    fmta("<>_6", {
      f(function(_, snip)
        return snip.captures[1]
      end),
    }),
    { condition = in_mathzone }
  ),
  s(
    { trig = "([%a%)%]%}])7", wordTrig = false, regTrig = true, snippetType = "autosnippet" },
    fmta("<>_7", {
      f(function(_, snip)
        return snip.captures[1]
      end),
    }),
    { condition = in_mathzone }
  ),
  s(
    { trig = "([%a%)%]%}])8", wordTrig = false, regTrig = true, snippetType = "autosnippet" },
    fmta("<>_8", {
      f(function(_, snip)
        return snip.captures[1]
      end),
    }),
    { condition = in_mathzone }
  ),
  s(
    { trig = "([%a%)%]%}])9", wordTrig = false, regTrig = true, snippetType = "autosnippet" },
    fmta("<>_9", {
      f(function(_, snip)
        return snip.captures[1]
      end),
    }),
    { condition = in_mathzone }
  ),
  s(
    { trig = "([%w%)%]%}])^", wordTrig = false, regTrig = true, snippetType = "autosnippet" },
    fmta("<>^{<>}", {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
    }),
    { condition = in_mathzone }
  ),
  s(
    { trig = "([%w%)%]%}])_", wordTrig = false, regTrig = true, snippetType = "autosnippet" },
    fmta("<>_{<>}", {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
    }),
    { condition = in_mathzone }
  ),
  s(
    { trig = "sd", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("_{\\textrm{<>}}", {
      i(1),
    })
  ),
  s(
    { trig = "df", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("\\df{<>}", {
      i(1),
    })
  ),
  s(
    { trig = "dv", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("\\diff{<>}{<>}", {
      i(1),
      i(2),
    })
  ),
  s(
    { trig = "pdv", regTrig = true, wordTrig = false, snippetType = "autosnippet", priority = 2000 },
    fmta("\\diffp{<>}{<>}", {
      i(1),
      i(2),
    })
  ),
  s(
    { trig = "ndv", regTrig = true, wordTrig = false, snippetType = "autosnippet", priority = 2000 },
    fmta("\\diff[<>]{<>}{<>}", {
      i(1),
      i(2),
      i(3),
    })
  ),
  s(
    { trig = "pndv", regTrig = true, wordTrig = false, snippetType = "autosnippet", priority = 3000 },
    fmta("\\diffp[<>]{<>}{<>}", {
      i(1),
      i(2),
      i(3),
    })
  ),
  s(
    { trig = "^beg", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta(
      [[
        \begin{<>}
            <>
        \end{<>}
      ]],
      {
        i(1),
        i(2),
        rep(1),
      }
    ),
    { condition = line_begin }
  ),
  -- s(
  --   { trig = 'nn', snippetType = 'autosnippet' },
  --   fmta(
  --     [[
  --       \begin{equation*}
  --           <>
  --       \end{equation*}
  --     ]],
  --     {
  --       i(1),
  --     }
  --   ),
  --   { condition = line_begin }
  -- ),
  s(
    { trig = "ss", snippetType = "autosnippet" },
    fmta(
      [[
        \begin{equation}
            \begin{split}
                <>
            \end{split}
        \end{equation}
      ]],
      {
        i(1),
      }
    ),
    { condition = line_begin }
  ),
  -- s(
  --   { trig = 'all', snippetType = 'autosnippet' },
  --   fmta(
  --     [[
  --       \begin{align*}
  --           <>
  --       \end{align*}
  --     ]],
  --     {
  --       i(1),
  --     }
  --   ),
  --   { condition = line_begin }
  -- ),
  s(
    { trig = "itt", snippetType = "autosnippet" },
    fmta(
      [[
        \begin{itemize}
            \item <>
        \end{itemize}
      ]],
      {
        i(0),
      }
    ),
    { condition = line_begin }
  ),
  s(
    { trig = "enn", snippetType = "autosnippet" },
    fmta(
      [[
        \begin{enumerate}
            \item <>
        \end{enumerate}
      ]],
      {
        i(0),
      }
    )
  ),
  s(
    { trig = "([^%l])mk", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("<>\\(<>\\)", {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
    })
  ),
  s(
    { trig = "vec", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("\\vec{<>}", {
      i(1),
    }),
    { condition = in_mathzone }
  ),
  s(
    { trig = "^mk", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("\\( <> \\)", {
      i(1),
    })
  ),
  s(
    { trig = "([^%l])dm", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("<>\\[ <> \\]", {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
    })
  ),
  s(
    { trig = "^dm", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("\\[ <> \\]", {
      i(1),
    })
  ),
  s(
    { trig = "([^%a])tt", regTrig = true, wordTrig = false, snippetType = "autosnippet", priority = 2000 },
    fmta("<>\\texttt{<>}", {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
    }),
    { condition = in_text }
  ),
  s(
    { trig = "([^%a])tii", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("<>\\textit{<>}", {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
    })
  ),
  s(
    { trig = "tbf", snippetType = "autosnippet" },
    fmta("\\textbf{<>}", {
      i(1),
    })
  ),
  s(
    { trig = "([^%a])mrm", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("<>\\mathrm{<>}", {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
    })
  ),
  s(
    { trig = "([^%a])mcc", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("<>\\mathcal{<>}", {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
    })
  ),
  s(
    { trig = "([^%a])mcr", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("<>\\mathscr{<>}", {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
    })
  ),
  s(
    { trig = "([^%a])mbf", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("<>\\mathbf{<>}", {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
    })
  ),
  s(
    { trig = "([^%a])mbb", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("<>\\mathbb{<>}", {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
    })
  ),
  s(
    { trig = "([^%a])txt", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("<>\\text{<>}", {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
    }),
    { condition = in_mathzone }
  ),
  s(
    { trig = "([^%a])//", wordTrig = false, regTrig = true, snippetType = "autosnippet" },
    fmta("<>\\frac{<>}{<>}", {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
      i(2),
    }),
    { condition = in_mathzone }
  ),
  s(
    { trig = "([^%a])abs", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("<>\\lvert <> \\rvert", {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
    }),
    { condition = in_mathzone }
  ),
  s(
    { trig = "([^%a])nn", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("<>\\lVert <> \\rVert", {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
    }),
    { condition = in_mathzone }
  ),
  s(
    { trig = "([^%a])set", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("<>\\left\\{ <> \\right\\}", {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
    }),
    { condition = in_mathzone }
  ),
  s(
    { trig = "([^%\\])sq", wordTrig = false, regTrig = true, snippetType = "autosnippet" },
    fmta("<>\\sqrt{<>}", {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
    }),
    { condition = in_mathzone }
  ),
}
