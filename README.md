# Sudoku

A simple, self-contained Sudoku web app. Single `index.html` — no build step, no dependencies. Pure HTML/CSS/JS.

## Features

- Randomly generated puzzles with a **unique** solution (backtracking solver + solution counter)
- Four difficulties: Easy / Medium / Hard / Expert
- Notes (pencil marks), hints, mistake highlighting, timer
- Keyboard support (arrows to move, `1–9` to fill, `Backspace` to erase, `N` for notes)

## Run locally

Open `index.html` in a browser, or serve it:

```bash
python3 -m http.server 8000
# then visit http://localhost:8000
```

## Docker

```bash
docker build -t sudoku .
docker run -p 8080:80 sudoku
# then visit http://localhost:8080
```

## Deployment

Deployed to Dokploy as a Dockerfile-built application.
