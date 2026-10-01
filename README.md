
IR viewer
----

> for reading `program-ir.cirru` file generated from calcit-runner.

Demo http://repo.calcit-lang.org/calcit-ir-viewer/ .

### Workflow

Calcit / `@calcit/procs` 0.27.0, Node.js 24, Yarn 4.18.0.
Keep only `calcit.cirru` and `deps.cirru`; CI rejects retired snapshot files.

```sh
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit calcit.cirru --check-only
yarn build
node --test scripts/ir-viewer-regression.test.mjs
```

`yarn build` compiles the default JS browser entry and builds once; `yarn dev`
compiles initially and starts Vite. For live edits, run `calcit calcit.cirru -w`
in another terminal.

CI builds with absolute COS/CDN asset URLs and uses released COS action v1.2.0's
built-in HTML reference and public upload verification. No extra verification
script is needed. Only frontend `dist` resources are uploaded;
the original server rsync source and destination remain unchanged.
PR paths use `pr/<number>/<run-id>/<attempt>/`; runs queue per PR and separately
for production, without cancellation. Canonical/entry/public, quality baseline,
dynamic-method zero-findings and existing business gates remain; repeated
migration and diagnostic reports are removed. State edits use `update-state-tree` and
single-argument Enum dispatch; regressions cover query/selection, async file
import, state/reel/render round-trips and bookmarks.

https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT
