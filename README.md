## Focus Widget App

A simple desktop application to help users stay focused using customizable timer intervals and breaks.

**Features:**
- Configurable focus and break durations.
- Visual countdown timer.
- Start, Pause, Reset controls.
- Optional sound notifications.

**Stack:** TypeScript, Node.js

**Setup:**
```bash
cd apps/codex-lab/2026-03-17-focus-widget-app-app-1
npm install
```

**Run:**
```bash
npm run build
npm start
```

**Test:**
```bash
npm test
```

**Docker:**
```bash
docker build -t focus-widget-app .
docker run -p 3000:3000 focus-widget-app
```
