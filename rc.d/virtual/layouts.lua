-- order matters
layouts = {
    awful.layout.suit.floating,
    awful.layout.suit.tile,
    awful.layout.suit.tile.left,
    awful.layout.suit.tile.bottom,
    awful.layout.suit.tile.top,
    awful.layout.suit.fair,
    awful.layout.suit.fair.horizontal
}

-- {{{ Tags
tags = {
   names = {
     { "web", "game", "term", "edit", "docs", "draw", "med", "fil", "lab" },
     { "web", "game", "term", "edit", "docs", "chat", "med", "fil", "lab" }
   },
   layout = {
     { layouts[2], layouts[1], layouts[6], layouts[2], layouts[2], layouts[6], layouts[1], layouts[2], layouts[6] },
     { layouts[4], layouts[1], layouts[7], layouts[4], layouts[4], layouts[7], layouts[1], layouts[4], layouts[7] }
   }
}

for s = 1, screen.count() do
-- Each screen has its own tag table.
   tags[s] = awful.tag(tags.names[s], s, tags.layout[s])
end
-- }}}
