# Upgrade ir-viewer to current cr workflow

- Aligned `deps.cirru` `:calcit-version` with current CLI `0.12.11`.
- Updated `Respo/respo.calcit` to `0.16.32` via `caps outdated --yes`.
- Updated `package.json` to use `@calcit/procs` `0.12.11`.
- Added missing runtime npm deps required by generated `respo-ui` output: `cirru-color`, `copy-text-to-clipboard`, `dayjs`.
- Updated CI workflow to use `yarn install --immutable` and direct `cr js`.
- Verified with `cr --version`, `yarn install --immutable`, `cr js`, `yarn vite build --base=./`, and `caps --ci outdated`.