# My Git Workflow

How I save and publish my SQL practice. Repo: https://github.com/mclaughlin-samuel/learning-sql

## Every time I write a new query

1. In DBeaver, write the query, then **File → Save As** (`⌘⇧S`) into the right topic folder,
   e.g. `queries/01-select/`. Use a lowercase, descriptive name like `customers-in-texas.sql`.

2. In Terminal, from the project folder, run these three commands:

   ```bash
   git add -A
   git commit -m "Add query: customers in Texas"
   git push
   ```

   - `git add -A` — stage all my changes (new and edited files)
   - `git commit -m "..."` — save a snapshot with a short description
   - `git push` — upload it to GitHub

That's it. Each commit is dated automatically, so my history is a timeline of what I've learned.

## Handy commands

```bash
git status              # what's changed but not yet committed
git log --oneline       # my commit history, one line each
```

## Running a query to check it works

```bash
sqlite3 rexon_metals.db < queries/01-select/all-customers.sql
```

## As I move through the book

Make a new folder per topic so it stays organized:

```
queries/01-select/
queries/02-where/
queries/03-group-by/
queries/04-joins/
```

## Notes / gotchas

- This repo pushes over **HTTPS** using the `gh` login (account: `mclaughlin-samuel`),
  not SSH — the SSH key is tied to an old account.
- If `git push` ever asks to log in again: `gh auth login` (GitHub.com → HTTPS → web browser).
