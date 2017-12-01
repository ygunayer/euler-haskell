# euler-haskell
Another attempt at solving Project Euler problems, this time with Haskell.

The project structure is largely based on [guillaume-nargeot/project-euler-haskell](https://github.com/guillaume-nargeot/project-euler-haskell)

## Development

### Initialize the Project
Use Cabal to install dependencies
```bash
$ cabal install --enable-tests
```

### Run a Specific Solution
```bash
$ cabal run 1
```

### Run Tests
```bash
$ cabal test
```

## Build an Executable
```bash
$ cabal build
```

**Note:** The resulting exceutable will be placed at `dist/build/euler` (e.g. `dist/build/euler/euler.exe`)
