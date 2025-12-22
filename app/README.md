# DevOps Portfolio Static App

This is a minimal Node.js static website used as a contract-first application
for an end-to-end DevOps CI/CD project.

## Endpoints

- `/` → Static website
- `/health` → Health check (200 OK)
- `/meta` → Build metadata (env, git sha)

## Environment Variables

| Variable | Description |
|-------|-------------|
| PORT | Application port |
| APP_ENV | local / ci / prod |
| GIT_SHA | Injected by CI |

## Run Locally

```bash
npm install
npm start
