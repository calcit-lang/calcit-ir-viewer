
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
calcit calcit.cirru js
yarn vite build
node --test scripts/ir-viewer-regression.test.mjs
```

CI builds with absolute COS/CDN asset URLs and uses cos-upload-action v1.1.1's
built-in public verification. Only frontend `dist` resources are uploaded;
the original server rsync source and destination remain unchanged.
Shared PR uploads are serialized. State edits use `update-state-tree` and
single-argument Enum dispatch; regressions cover query/selection, async file
import, state/reel/render round-trips and bookmarks.

https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT
