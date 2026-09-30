import assert from 'node:assert/strict';
import test from 'node:test';
import * as clt from '../js-out/calcit.core.mjs';
import { store } from '../js-out/app.schema.mjs';
import { Op, Bookmark } from '../js-out/app.types.mjs';
import { updater } from '../js-out/app.updater.mjs';
import { comp_file_entry, comp_container } from '../js-out/app.comp.container.mjs';
import { new_reel, record_op } from '../js-out/reel.typed.mjs';
import { make_string } from '../js-out/respo.render.html.mjs';
import { component_$q_, component_tree } from '../js-out/respo.util.detect.mjs';

const t = clt.init_tags(['states', 'cursor', 'data', 'file-entry', 'query', 'selected', 'value', 'files', 'defs', 'event', 'input', 'click', 'change', 'children', 'some', 'bookmarks', 'pointer', 'new-bookmark', 'point-to', 'remove-bookmark', 'preview', 'ir', 'ir-data']);
const map = clt._$n__$M_;
const list = clt._$L_;
const nth = (v, i) => clt.option_$o_unwrap(clt.nth(v, i));
const field = (v, k) => clt.option_$o_unwrap(clt.get(v, k));
const op = (tag, ...values) => clt._PCT__$o__$o_(Op, tag, ...values);
const files = map('app.alpha', map(t.defs, map()), 'app.beta', map(t.defs, map()));

function eventHandler(node, tag, accept = () => true) {
  if (component_$q_(node)) return eventHandler(clt.option_$o_unwrap(component_tree(node)), tag, accept);
  const events = clt.get(node, t.event);
  if (clt._$n_enum_$o_nth(events, 0) === t.some) {
    const handler = clt.get(clt.option_$o_unwrap(events), tag);
    if (clt._$n_enum_$o_nth(handler, 0) === t.some && accept(node)) return clt.option_$o_unwrap(handler);
  }
  const children = clt.get(node, t.children);
  if (clt._$n_enum_$o_nth(children, 0) === t.some) {
    const pairs = clt.option_$o_unwrap(children);
    for (let i = 0; i < clt.count(pairs); i++) {
      const found = eventHandler(nth(nth(pairs, i), 1), tag, accept);
      if (found) return found;
    }
  }
}

test('state updates modify the state tree without nesting another store', () => {
  const next = updater(store, op(t.states, list(t['file-entry']), map(t.query, 'alpha', t.selected, '')), 'state', 1);
  const states = field(next, t.states);
  assert.equal(field(field(field(states, t['file-entry']), t.data), t.query), 'alpha');
  assert.equal(clt.contains_$q_(states, t.states), false);
  assert.equal(field(next, t.pointer), 0);
  const root = updater(next, op(t.states, list(), map(t.query, 'root')), 'root', 2);
  assert.equal(field(field(field(root, t.states), t.data), t.query), 'root');
  assert.equal(clt.contains_$q_(field(root, t.states), t['file-entry']), true);
});

test('query dispatch is a single Enum and round-trips through updater/Reel/render', () => {
  const initial = clt.assoc(store, t.ir, map(t.files, files));
  let reel = new_reel(initial);
  const input = eventHandler(comp_container(reel), t.input);
  assert.equal(typeof input, 'function');
  input(map(t.value, 'alpha'), (...args) => {
    assert.equal(args.length, 1);
    reel = record_op(updater, reel, args[0], 'query', 1);
  });
  const html = make_string(comp_container(reel));
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
  let captured;
  await handler(map(t.event, { target }), (...args) => { assert.equal(args.length, 1); captured = args[0]; });
  assert.equal(target.value, '');
  assert.equal(clt._$n_enum_$o_nth(captured, 0), t['ir-data']);
  const next = updater(store, captured, 'file', 1);
  assert.equal(clt.count(field(field(next, t.ir), t.files)), 2);
  assert.equal(clt.count(field(next, t.bookmarks)), 0);
});

test('bookmark removal clamps pointer and keeps preview unchanged', () => {
  const bookmark = clt._PCT__$o__$o_(Bookmark, clt.init_tags(['bookmark']).bookmark, 'app.alpha', 'main!');
  let next = updater(store, op(t['new-bookmark'], bookmark), 'bookmark', 1);
  next = updater(next, op(t.preview, 'preview'), 'preview', 2);
  next = updater(next, op(t['remove-bookmark'], 0), 'remove', 3);
  assert.equal(clt.count(field(next, t.bookmarks)), 0);
  assert.equal(field(next, t.pointer), 0);
  assert.equal(field(next, t.preview), 'preview');
});
