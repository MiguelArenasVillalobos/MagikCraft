# Magikcraft

![Nukkit 589 JDK 8](https://github.com/Magikcraft/MagikCraft/workflows/Test%20on%20Nukkit%20589%20JDK%208/badge.svg)

![Nukkit 589 GraalVM](https://github.com/Magikcraft/MagikCraft/workflows/Test%20on%20Nukkit%20589%20GraalVM/badge.svg)

![Paper 1.14.2 JDK 8](https://github.com/Magikcraft/MagikCraft/workflows/Test%20on%20Paper%201.14.2%20JDK%208/badge.svg)

![Paper 1.14.2 GraalVM](https://github.com/Magikcraft/MagikCraft/workflows/Test%20on%20Paper%201.14.2%20GraalVM/badge.svg)

![Paper 1.15.2 JDK 8](https://github.com/Magikcraft/MagikCraft/workflows/Test%20on%20Paper%201.15.2%20JDK%208/badge.svg)

![Paper 1.15.2 GraalVM](https://github.com/Magikcraft/MagikCraft/workflows/Test%20on%20Paper%201.15.2%20GraalVM/badge.svg)

[![Docker Image](https://images.microbadger.com/badges/version/magikcraft/scriptcraft:1.15.2.svg)](https://hub.docker.com/repository/docker/magikcraft/scriptcraft/ "Docker image: Paperclip 1.15.2 and GraalVM")

Magikcraft is a patched version of [ScriptCraft](https://github.com/walterhiggins/ScriptCraft) that adds a few things that we missed:

- Support for installing ScriptCraft-compatible packages from [NPM](https://www.npmjs.com/org/scriptcraft), and publishing your code there to share with other developers.
- Polyfills for modern JS like Promises, `Array.filter`, `Array.from`, `Array.includes`, `EventEmitter`, `Object.assign`, and `String.includes`.
- Jasmine for unit-testing your code in Minecraft.
- [Test Docker containers](https://hub.docker.com/repository/docker/magikcraft/minecraft) with various MC server / JVM combinations for testing ScriptCraft and identifying and fixing issues.

See the README in [this repo](https://github.com/Magikcraft/scriptcraft-modular-arch) for some more details.

You can install Magikcraft in your own Bukkit-compatible Minecraft server (see INSTALL.md), run a server using the [magikcraft/scriptcraft](https://hub.docker.com/repository/docker/magikcraft/scriptcraft) Docker image, or use our hosted instance with a web-based code editor at [magikcraft.io](https://www.magikcraft.io).

When used with the [`smac`](https://www.npmjs.com/package/smac) command-line utility, you can run a dockerised Magikcraft server with a TypeScript / JavaScript REPL at the console.

You can create your own Magikcraft-compatible NPM packages using our [Yeoman generator](https://www.npmjs.com/package/generator-sma-plugin).

## Relationship with ScriptCraft

MagikCraft is [downstream](https://reflectoring.io/upstream-downstream/#upstream-and-downstream-open-source-projects) from ScriptCraft. We maintain our own patch set and testing in Magikcraft, and contribute fixes to ScriptCraft code upstream to the ScriptCraft project, so that the wider ScriptCraft community benefits from them.
