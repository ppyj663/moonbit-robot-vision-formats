# Contributing

Contributions should keep the offline bridge boundary intact: no networked ROS
client, no hidden service dependency and no large binary fixtures in the main
repository.

Please run:

```bash
moon check --target all --deny-warn --fmt
moon test --target all
moon fmt --check
moon info
```

If public APIs change, review the generated `pkg.generated.mbti` diff before
opening a pull request.
