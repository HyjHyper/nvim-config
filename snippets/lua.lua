local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local extras = require("luasnip.extras")
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require("luasnip.extras.expand_conditions")
local postfix = require("luasnip.extras.postfix").postfix
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet
local ms = ls.multi_snippet
local k = require("luasnip.nodes.key_indexer").new_key

return {

  s(
    { trig = "newsnip", snippetType = "autosnippet" },
    fmt(
      [[ 
    s("<>",
    <>(<>,{
    <> }
    )),<>]],
      {
        i(1, "trig"),
        c(2, { t("fmt"), t("fmta") }),
        i(3, "info"),
        i(4, "inputs"),
        i(5),
      },
      { delimiters = "<>" }
    )
  ),
  s(
    "example1",
    fmt("just an {iNode1}", {
      iNode1 = i(1, "example"),
    })
  ),
  s(
    "redblock",
    fmt([[<<alert danger "{}" width:60%>>]], {
      i(1),
    })
  ),
  s(
    "blueblock",
    fmt([[<<alert primary "{}" width:60%]], {
      i(1),
    })
  ),
  s(
    "greenblock",
    fmt([[<<alert success "{}" width:60%]], {
      i(1),
    })
  ),
  s(
    "greyblock",
    fmt([[<<alert secondary "{}" width:60%]], {
      i(1),
    })
  ),
  s(
    "yellowblock",
    fmt([[<<alert warning "{}" width:60%]], {
      i(1),
    })
  ),
  s(
    "infoblock",
    fmt([[<<alert info "{}" width:60%]], {
      i(1),
    })
  ),
  s(
    "lightblock",
    fmt([[<<alert light "{}" width:60%]], {
      i(1),
    })
  ),
  s(
    "darkblock",
    fmt([[<<alert dark "{}" width:60%]], {
      i(1),
    })
  ),
  s(
    "bluebar",
    fmt([[<<alert primary src:"{}" class:"leftbar border-primary">>]], {
      i(1),
    })
  ),
  s(
    "greenbar",
    fmt([[<<alert success src:"{}" class:"leftbar border-success">>]], {
      i(1),
    })
  ),
  s(
    "redbar",
    fmt([[<<alert danger src:"{}" class:"leftbar border-danger">>]], {
      i(1),
    })
  ),
  s(
    "yellowbar",
    fmt([[<<alert warning src:"{}" class:"leftbar border-warning">>]], {
      i(1),
    })
  ),
  s(
    "infobar",
    fmt([[<<alert info src:"{}" class:"leftbar border-info">>]], {
      i(1),
    })
  ),
  s(
    "greybar",
    fmt([[<<alert secondary src:"{}" class:"leftbar border-secondary">>]], {
      i(1),
    })
  ),
  s(
    "darkbar",
    fmt([[<<alert dark src:"{}" class:"leftbar border-dark">>]], {
      i(1),
    })
  ),
}
