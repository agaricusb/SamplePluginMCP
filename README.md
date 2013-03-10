SamplePluginMCP

An example of a Bukkit plugin written using [Minecraft Coder Pack](http://mcp.oceanlabs.de/) mappings,
instead of mc-dev/CB mappings for accessing NMS.

Allows for more readable code if you heavily access NMS,
as MCP is thoroughly deobfuscated compared to mc-dev/CB, and
has community-provided [javadocs](http://jd.minecraftforge.net/).

To build, install [Maven](https://maven.apache.org/) then run:

    mvn initialize -P -built
    mvn package

The resulting plugin in `target/SamplePluginMCP-2.0.jar` should work on vanilla CraftBukkit servers.

For more details on this process, see the Bukkit forums post
[[TUTORIAL|ADVANCED] How to develop plugins using MCP for NMS via ASM remapping](http://forums.bukkit.org/threads/tutorial-advanced-how-to-develop-plugins-using-mcp-for-nms-via-asm-remapping.131060/).
