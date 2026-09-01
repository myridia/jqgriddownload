# AGENTS.md — jqgriddownload

## What this is
A convenient CSV/Excel (xlsx) download plugin for the free-jqgrid jQuery grid.

## Stack
- JavaScript (browser, jQuery)
- free-jqgrid
- exceljs (Excel export)
- log2textarea

## Build
```bash
make.sh     # or: npm run build
```

## Run
Include `dist/jqgriddownload.js` in an HTML page, then call `.jqGrid("jqgrid_download", 'csv'|'xlsx')` from a nav button.

## Structure
- `jqgriddownload.js` — plugin source
- `dist/` — built distributable
- `package.json` — npm metadata and build script
- `make.sh` / `make_doc.sh` — build and doc helpers
- `pages/` — documentation pages

## Conventions
- No comments in code unless asked.
- Verify: `npm run build` produces a valid `dist/jqgriddownload.js`.
