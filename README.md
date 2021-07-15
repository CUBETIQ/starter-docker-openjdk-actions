# Starter Docker OpenJDK - GitHub Actions

- Run actions with docker (latest version)
- Quick and easy to use
- Support custom registry
- Support custom shell and commands
- Support OpenJDK 11

# Usage

```yaml
- name: Starter Docker OpenJDK
  uses: CUBETIQ/starter-docker-openjdk-actions@main
```

# Example Action

```yaml
name: CI

on:
  push:
    branches: [ main ]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Starter Docker OpenJDK Test
        uses: cubetiq/starter-docker-openjdk-actions@main
        with:
          shell: sh
          run: echo Docker":" $(docker version); echo Java":" $(java -version); echo Java Compiler":" $(javac -version)
```

# Contributors

- Sambo Chea <sombochea@cubetiqs.com>
