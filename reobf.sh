#!/bin/sh

# http://assets.minecraft.net/1_4_7/minecraft_server.jar
# http://repo.bukkit.org/content/groups/public/org/bukkit/minecraft-server/1.4.7/minecraft-server-1.4.7.jar
# https://github.com/MinecraftForge/FML

# pkgmcp -> obf
java -jar ../SpecialSource/target/SpecialSource-1.3-SNAPSHOT-shaded.jar --in-jar target/SamplePluginMCP-1.0.jar --out-jar obf-SamplePluginMCP-1.0.jar --reverse --srg-in ../MinecraftForge/mcp/conf/

# obf -> cb
java -jar ../SpecialSource/target/SpecialSource-1.3-SNAPSHOT-shaded.jar --in-jar obf-SamplePluginMCP-1.0.jar --out-jar ../test-server/plugins/SamplePluginMCP-1.0-cb.jar --srg-in obf2cb.srg --out-shade-relocation net.minecraft.server=net.minecraft.server.v1_4_R1,org.bouncycastle=net.minecraft.v1_4_R1.org.bouncycastle

