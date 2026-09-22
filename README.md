# Morningstar Print Shop

A phone-first, Food Street–style game where the Morningstar crew runs the shop floor:
Sales → Receiving → Screen Room → Press → Dryer → Finishing → Shipping (plus Embroidery and Heat Press routes).

- `game.html` — the game (source for the claude.ai artifact)
- `index.html` — standalone copy for any static host; regenerate with `./build.sh` after editing `game.html`

Everything is one file with no build step and no server. Progress saves on each phone.
The shared team board and "on the floor now" list only work when the game is opened from its claude.ai link.
