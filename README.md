# hello_zig

## how to build

```bash
zig build
```

## how to debug in vscode

create `.vscode/launch.json`

```json
{
    "version": "0.2.0",
    "configurations": [
        {
            "type": "lldb",
            "request": "launch",
            "name": "Debug",
            "program": "${workspaceFolder}/zig-out/bin/hello-world.exe",
            "cwd": "${workspaceFolder}"
        },
        {
            "name": "Debug exe",
            "type": "cppvsdbg",
            "request": "launch",
            "program": "${workspaceFolder}/zig-out/bin/hello-world.exe",
            "args": [],
            "stopAtEntry": false,
            "cwd": "${workspaceFolder}/zig-out/bin",
            "symbolSearchPath": "${workspaceFolder}/zig-out/bin",
            "environment": [],
            "externalConsole": false,
            "logging": {
                "moduleLoad": false
            },
        }
    ]
}
```

PS: lldb does not work on windows, use cppvsdbg instead!
