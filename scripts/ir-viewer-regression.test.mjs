import assert from 'node:assert/strict';
import { registerHooks } from 'node:module';
import test from 'node:test';
import 'fake-indexeddb/auto';
import { IDBDatabase } from 'fake-indexeddb';
import { get as readDB, set as writeDB } from 'idb-keyval';
import * as clt from '../js-out/calcit.core.mjs';
import { store } from '../js-out/app.schema.mjs';
import { Op, Bookmark, decode_store } from '../js-out/app.types.mjs';
import { updater } from '../js-out/app.updater.mjs';
import { comp_code, comp_file_entry, comp_container, comp_import, comp_preview } from '../js-out/app.comp.container.mjs';
import { Control, new_reel, record_op } from '../js-out/reel.typed.mjs';
import { make_string } from '../js-out/respo.render.html.mjs';
import { event__GT_edn } from '../js-out/respo.util.format.mjs';
import { component_$q_, component_tree } from '../js-out/respo.util.detect.mjs';
import { load_$x_ as loadSaved, save_$x_ as saveSaved, queue_save_$x_ as queueSaved, flush_save_$x_ as flushSaved } from '../js-out/app.storage.mjs';

const t = clt.init_tags(['states', 'cursor', 'data', 'file-entry', 'query', 'selected', 'value', 'files', 'defs', 'event', 'input', 'click', 'change', 'children', 'node', 'some', 'bookmarks', 'pointer', 'new-bookmark', 'point-to', 'remove-bookmark', 'preview', 'ir', 'ir-data']);
const map = clt._$n__$M_;
const list = clt._$L_;
const nth = (v, i) => clt.option_$o_unwrap(clt.nth(v, i));
const field = (v, k) => clt.option_$o_unwrap(clt.get(v, k));
const op = (tag, ...values) => clt._PCT__$o__$o_(Op, tag, ...values);
const files = map('app.alpha', map(t.defs, map()), 'app.beta', map(t.defs, map()));

/** Find a matching handler in actual Respo render nodes for interaction regressions. */
function eventHandler(node, tag, accept = () => true) {
  if (clt.enum_$q_(node)) return node.extra.length ? eventHandler(node.extra[0], tag, accept) : undefined;
  if (component_$q_(node)) return eventHandler(component_tree(node), tag, accept);
  const events = clt.get(node, t.event);
  if (clt._$n_enum_$o_nth(events, 0) === t.some) {
    const handler = clt.get(clt.option_$o_unwrap(events), tag);
    if (clt._$n_enum_$o_nth(handler, 0) === t.some && accept(node)) return clt.option_$o_unwrap(handler);
  }
  const children = clt.get(node, t.children);
  if (clt._$n_enum_$o_nth(children, 0) === t.some) {
    const pairs = clt.option_$o_unwrap(children);
    for (let i = 0; i < clt.count(pairs); i++) {
      const found = eventHandler(field(nth(pairs, i), t.node), tag, accept);
      if (found) return found;
    }
  }
}

test('state updates modify the state tree without nesting another store', () => {
  const mixed = list(t['file-entry'], '名称', 2);
  const decoded = op(t.states, mixed, false);
  assert.equal(clt.format_cirru_edn(clt._$n_enum_$o_nth(decoded, 1)), clt.format_cirru_edn(mixed));
  assert.equal(clt._$n_enum_$o_nth(decoded, 2), false);
  assert.throws(() => op(t.states, list(true), false), /Op::states.*declared type/);
  assert.throws(() => comp_file_entry(map(t.cursor, list(true), t.data, map(t.selected, '', t.query, '')), files), /CursorKey/);
  assert.equal(clt.option_$o_some_$q_(decode_store(clt.assoc(store, t.states, map(t.cursor, mixed)))), true);
  assert.equal(clt.option_$o_none_$q_(decode_store(clt.assoc(store, t.states, map(t.cursor, list(true))))), true);

  const next = updater(store, op(t.states, list(t['file-entry']), map(t.query, 'alpha', t.selected, '')), 'state', 1);
  const states = field(next, t.states);
  assert.equal(field(field(field(states, t['file-entry']), t.data), t.query), 'alpha');
  assert.equal(clt.contains_$q_(states, t.states), false);
  assert.equal(field(next, t.pointer), 0);
  const root = updater(next, op(t.states, list(), map(t.query, 'root')), 'root', 2);
  assert.equal(field(field(field(root, t.states), t.data), t.query), 'root');
  assert.equal(clt.contains_$q_(field(root, t.states), t['file-entry']), true);
  assert.equal(clt.format_cirru_edn(clt.option_$o_unwrap(decode_store(root))), clt.format_cirru_edn(root));
  assert.equal(clt._$n_enum_$o_nth(decode_store(clt.parse_cirru_edn(clt.format_cirru_edn(root))), 0), t.some);
});

test('query dispatch is a single Enum and round-trips through updater/Reel/render', () => {
  const initial = clt.assoc(store, t.ir, map(t.files, files));
  let reel = new_reel(initial);
  const onControl = () => assert.fail('Query changes must use application dispatch');
  const input = eventHandler(comp_container(reel, onControl), t.input);
  assert.equal(typeof input, 'function');
  input(event__GT_edn({type: 'input', target: {value: 'alpha'}}), (...args) => {
    assert.equal(args.length, 1);
    reel = record_op(updater, reel, args[0], 'query', 1);
  });
  const html = make_string(comp_container(reel, onControl));
  assert.match(html, /app.alpha/);
  assert.doesNotMatch(html, /app.beta/);
});

test('namespace selection dispatches one Enum and survives rerender', () => {
  const state = map(t.cursor, list(t['file-entry']), t.data, map(t.selected, '', t.query, ''));
  const view = comp_file_entry(state, files);
  let captured;
  eventHandler(view, t.click, node => make_string(node).includes('app.alpha') && !make_string(node).includes('app.beta'))(null, (...args) => {
    assert.equal(args.length, 1); captured = args[0];
  });
  const next = updater(store, captured, 'selection', 1);
  assert.equal(field(field(field(field(next, t.states), t['file-entry']), t.data), t.selected), 'app.alpha');
});

test('IR file import awaits file text and dispatches one ir-data Enum', async () => {
  const inputState = map(t.cursor, list(t['file-entry']), t.data, map(t.selected, '', t.query, ''));
  const handler = eventHandler(comp_file_entry(inputState, files), t.change);
  assert.equal(typeof handler, 'function');
  const target = { value: 'program-ir.cirru', files: { item: () => ({ text: async () => clt.format_cirru_edn(map(t.files, files)) }) } };
  const event = { target, currentTarget: target, type: 'change', defaultPrevented: false, eventPhase: 2, preventDefault() {}, stopPropagation() {} };
  let captured;
  await handler(event__GT_edn(event), (...args) => { assert.equal(args.length, 1); captured = args[0]; });
  assert.equal(target.value, '');
  assert.equal(clt._$n_enum_$o_nth(captured, 0), t['ir-data']);
  const next = updater(store, captured, 'file', 1);
  assert.equal(clt.count(field(field(next, t.ir), t.files)), 2);
  assert.equal(clt.count(field(next, t.bookmarks)), 0);
});

test('bookmark removal clamps pointer and keeps preview unchanged', () => {
  const bookmark = clt._PCT__$o__$o_(Bookmark, clt.init_tags(['bookmark']).bookmark, 'app.alpha', 'main!');
  let next = updater(store, op(t['new-bookmark'], bookmark), 'bookmark', 1);
  const preview = map(t.value, 'preview');
  next = updater(next, op(t.preview, preview), 'preview', 2);
  next = updater(next, op(t['remove-bookmark'], 0), 'remove', 3);
  assert.equal(clt.count(field(next, t.bookmarks)), 0);
  assert.equal(field(next, t.pointer), 0);
  assert.equal(field(next, t.preview), preview);
});

test('runtime dispatch preserves mixed-key preview and separates Reel controls', async () => {
  // Match the extension resolution Vite provides for bottom-tip in the browser.
  const hooks = registerHooks({
    resolve(specifier, context, nextResolve) {
      return nextResolve(specifier === 'virtual-dom/create-element' ? specifier + '.js' : specifier, context);
    },
  });
  const { dispatch_$x_, on_control_$x_, _$s_reel } = await import('../js-out/app.main.mjs').finally(() => hooks.deregister());
  const readPreview = () => field(field(clt.deref(_$s_reel), clt.newTag('store')), t.preview);
  const expr = map(clt.newTag('ns'), 'app.alpha', clt.newTag('def'), 'main!', 'source-note', 'legacy metadata');
  eventHandler(comp_import(expr), t.click)(map(), dispatch_$x_);
  assert.equal(clt._$e_(readPreview(), expr), true);
  for (const kind of ['cirru-quote', 'tuple', 'struct', 'enum', 'record']) {
    const node = map(clt.newTag('kind'), clt.newTag(kind), 'source-note', 'legacy metadata');
    const click = eventHandler(comp_code(node, false), t.click);
    assert.equal(typeof click, 'function', kind);
    click(map(), dispatch_$x_);
    assert.equal(clt._$e_(readPreview(), node), true, kind);
  }
  eventHandler(comp_preview(readPreview()), t.click)(map(), dispatch_$x_);
  assert.equal(readPreview(), null);

  const beforeControl = clt.deref(_$s_reel);
  const display = clt.newTag('display?');
  const records = clt.newTag('records');
  on_control_$x_(clt._PCT__$o__$o_(Control, clt.newTag('toggle')));
  const afterControl = clt.deref(_$s_reel);
  assert.equal(field(afterControl, display), !field(beforeControl, display));
  assert.equal(field(afterControl, records), field(beforeControl, records));
});

const loadSnapshot = (key, legacy = () => clt._PCT__$o__$o_(clt.Option, clt.newTag('none'))) => new Promise(resolve => loadSaved(key, legacy, resolve));
const saveSnapshot = (key, value) => new Promise(resolve => saveSaved(key, value, resolve));
const resultTag = result => clt._$n_enum_$o_nth(result, 0).value;

test('IndexedDB retains a complete IR snapshot larger than localStorage capacity', async () => {
  const largeIR = map(t.files, files, clt.init_tags(['padding']).padding, 'x'.repeat(9 * 1024 * 1024));
  const snapshot = updater(store, op(t['ir-data'], largeIR), 'large', 1);
  assert.equal(resultTag(await saveSnapshot('ir-viewer-large', snapshot)), 'ok');
  const loaded = await loadSnapshot('ir-viewer-large');
  assert.equal(resultTag(loaded), 'ok');
  const restored = clt.option_$o_unwrap(loaded.extra[0]);
  assert.equal(clt.format_cirru_edn(restored), clt.format_cirru_edn(snapshot));
});

test('legacy storage remains readable until saved and IndexedDB then takes precedence', async () => {
  const bookmark = clt._PCT__$o__$o_(Bookmark, clt.init_tags(['bookmark']).bookmark, 'app.main', 'main!');
  const legacyStore = updater(store, op(t['new-bookmark'], bookmark), 'legacy-bookmark', 1);
  const legacyText = clt.format_cirru_edn(legacyStore);
  let legacyReads = 0;
  const readLegacy = () => { legacyReads++; return clt._PCT__$o__$o_(clt.Option, clt.newTag('some'), legacyText); };
  const loaded = await loadSnapshot('ir-viewer-legacy', readLegacy);
  assert.equal(resultTag(loaded), 'ok');
  assert.equal(await readDB('ir-viewer-legacy'), undefined);
  const restored = clt.option_$o_unwrap(loaded.extra[0]);
  assert.equal(clt.format_cirru_edn(nth(field(restored, t.bookmarks), 0)), clt.format_cirru_edn(bookmark));
  assert.equal(resultTag(await saveSnapshot('ir-viewer-legacy', restored)), 'ok');
  assert.equal(await readDB('ir-viewer-legacy'), legacyText);
  const anonymousText = legacyText.replace("%:: 'Bookmark 'bookmark", ":: 'bookmark");
  await writeDB('ir-viewer-anonymous-legacy', anonymousText);
  const oldAnonymous = await loadSnapshot('ir-viewer-anonymous-legacy');
  assert.equal(resultTag(oldAnonymous), 'ok');
  assert.equal(clt.format_cirru_edn(nth(field(clt.option_$o_unwrap(oldAnonymous.extra[0]), t.bookmarks), 0)), clt.format_cirru_edn(bookmark));
  assert.equal(resultTag(await loadSnapshot('ir-viewer-legacy', readLegacy)), 'ok');
  assert.equal(legacyReads, 1);
});

test('failed reads and writes report errors without replacing the saved snapshot', async () => {
  const legacyFailure = await loadSnapshot('ir-viewer-unreadable-legacy', () => { throw new Error('synthetic legacy read failure'); });
  assert.equal(resultTag(legacyFailure), 'err');
  assert.match(legacyFailure.extra[0], /synthetic legacy read failure/);
  assert.equal(await readDB('ir-viewer-unreadable-legacy'), undefined);
  const key = 'ir-viewer-failure';
  await writeDB(key, 'not valid Cirru EDN');
  assert.equal(resultTag(await loadSnapshot(key)), 'err');
  assert.equal(await readDB(key), 'not valid Cirru EDN');
  const invalid = clt.format_cirru_edn(store).replace(':pointer 0', ':pointer |not-a-number');
  await writeDB(key, invalid);
  assert.equal(resultTag(await loadSnapshot(key)), 'err');
  const original = IDBDatabase.prototype.transaction;
  try {
    IDBDatabase.prototype.transaction = function () { throw new DOMException('synthetic blocked transaction', 'QuotaExceededError'); };
    const failed = await saveSnapshot(key, store);
    assert.equal(resultTag(failed), 'err');
    assert.match(failed.extra[0], /synthetic blocked transaction/);
  } finally {
    IDBDatabase.prototype.transaction = original;
  }
  assert.equal(await readDB(key), invalid);
});

test('autosave coalesces edits and keeps only one write in flight', async context => {
  context.mock.timers.enable({ apis: ['setTimeout'] });
  const original = IDBDatabase.prototype.transaction;
  let writes = 0, active = 0, maxActive = 0;
  IDBDatabase.prototype.transaction = function (...args) {
    const transaction = original.apply(this, args);
    if (args[1] === 'readwrite') {
      writes++; active++; maxActive = Math.max(maxActive, active);
      transaction.addEventListener('complete', () => { active--; }, { once: true });
    }
    return transaction;
  };
  try {
    let firstComplete, secondComplete;
    const first = new Promise(resolve => { firstComplete = resolve; });
    const second = new Promise(resolve => { secondComplete = resolve; });
    const key = 'ir-viewer-coalesced';
    for (let i = 0; i < 3; i++) queueSaved(key, store, firstComplete);
    assert.equal(writes, 0);
    context.mock.timers.tick(1000);
    const latest = updater(store, op(t['ir-data'], map(t.files, files)), 'latest', 1);
    queueSaved(key, latest, secondComplete);
    flushSaved();
    context.mock.timers.tick(1000);
    assert.equal(resultTag(await first), 'ok');
    assert.equal(writes, 1);
    context.mock.timers.tick(1000);
    assert.equal(resultTag(await second), 'ok');
    assert.equal(writes, 2);
    assert.equal(maxActive, 1);
    assert.equal(await readDB(key), clt.format_cirru_edn(latest));
    flushSaved();
    assert.equal(writes, 2);
  } finally {
    IDBDatabase.prototype.transaction = original;
    context.mock.timers.reset();
  }
});
