# Docker CI Project

## What this does
Every push to the `main` branch triggers a GitHub Actions pipeline that:
1. Checks out the code
2. Runs tests using pytest
3. Builds a Docker image
4. Pushes the image to Docker Hub with two tags

## How tags are generated

### `latest` tag
Always points to the most recent build from the main branch.
Every new push overwrites this tag on Docker Hub.

### Git commit SHA tag
Each image is also tagged with the full Git commit SHA
(e.g. `gracebidemi/Bidemigrace-docker-ci-project:a1b2c3d4e5...`).
This is generated automatically by GitHub Actions using:
`${{ github.sha }}`

This means every single build is uniquely identifiable
and you can roll back to any previous image at any time.

## How to pull the image
```bash
# Pull latest
docker pull bidemigrace/Bidemigrace-docker-ci-project:latest

# Pull specific commit
docker pull bidemigrace/Bidemigrace-docker-ci-project:<commit-sha>
```

## Project structure
```
docker-ci-project/
├── greet_user.py
├── testfile.py
├── Dockerfile
├── README.md
└── .github/
    └── workflows/
        └── docker-build.yml
```