# Rabbita template

Template for web app using MoonBit and Rabbita.

# Getting started

1. Clone this repository.
2. Add the latest Rabbita dependency.

   In the project directory:

   ```bash
   moon add moonbit-community/rabbita
   ```

3. Start the dev server.

   In the project directory:

   ```bash
   npm i
   npm run dev
   ```

   You can also use Bun instead of npm:

   ```bash
   bun i
   bun run dev
   ```

## Debug

Use the following steps to debug MoonBit code in VSCode:

1. Open the JavaScript Debug Terminal:

    Press `Shift + Command + P` on Mac or `Ctrl + Shift + P` on Windows/Linux to open the command palette. Search for `Debug: JavaScript Debug Terminal` and run it.

2. Run the `npm run dev` (or `bun run dev`) command in the JavaScript Debug Terminal.

3. Set breakpoints in the MoonBit code.

4. Open the browser and visit the link displayed in the terminal. The breakpoints will be triggered when the code is executed.

## Release build

```
npm run build
```

or using bun:

```
bun run build
```

The release build will be generated in the `dist` directory.
