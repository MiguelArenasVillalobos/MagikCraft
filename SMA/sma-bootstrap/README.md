# Magikcraft Bootstrap

Bootstrap sequence:

0. Load the ES6 polyfills into the global scope.
1. Patch `require` so that modules can be resolved from `scriptcraft-plugins`.
1. Scan the `scriptcraft-plugins` directory.
1. Autoload the contents of any `plugins` sub-directories in the SMA plugins.

## Debugging require

Set `DEBUG_REQUIRE=true` to turn on module require debugging.
