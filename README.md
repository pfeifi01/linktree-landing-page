# links.pfeifhofer.dev

A small private index of everything running on the NAS. Static page, no backend,
no data, no auth — safe to hand to a friend, but `noindex, nofollow` so it does
not show up in search results.

## Adding or changing a link

Edit the `GROUPS` array near the bottom of `index.html`. That is the only part
meant to be edited:

```js
{ name: "Thing", url: "https://thing.pfeifhofer.dev", desc: "One short line", icon: "🔧" }
```

Optional `tag: "todo"` marks a URL that is not confirmed yet, `tag: "wip"` marks
something not live. The `port` field is documentation only and is not rendered.

Commit and push to `main` — GitHub Actions deploys to the NAS.

## Local preview

```bash
python -m http.server 8088
```

Then open http://localhost:8088.

## Deployment

```text
Project:       links
Subdomain:     links.pfeifhofer.dev
NAS port:      8088
Project path:  /volume1/Martin/Webhosting/docker/webhosting/links
Deploy script: /usr/local/bin/deploy-links
Container:     pfeifhofer-links
Cloudflare:    http://192.168.1.98:8088
```

Follows `New Project Setup Guide.md`. The repo side is done (`Dockerfile`,
`docker-compose.yml`, `.github/workflows/deploy-to-nas.yml`). The one-time
NAS/GitHub/Cloudflare setup is in that guide, steps 3, 5, 6, 7 and 9.

## Port map (from `Notes.txt`)

| Port | Project |
|---|---|
| 8080 | personal landing page |
| 8081 | ancestry |
| 8082 | portfolio (demo) |
| 8083 | mtg |
| 8084 | sardinia |
| 8085 | wardrobe |
| 8086 | sales |
| 8087 | uab (Daniel) |
| 8088 | **links (this page)** |
| 8090 | (private, not listed here) |
