SamplePluginMCP

An example of a Bukkit plugin written using MCP mappings,
instead of mc-dev/CB mappings for accessing NMS.

Allows for more readable code if you heavily access NMS,
as MCP is heavily deobfuscated compared to mc-dev/CB.

Usage:

* Add MCP-remapped minecraft\_server as a library
* Write your plugin using net.minecraft classes (see javadoc at http://jd.minecraftforge.net/)
* Compile your plugin
* Reobfuscate
* Remap to CB mappings

The resulting plugin should work on vanilla CraftBukkit servers.

