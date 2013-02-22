#!/bin/sh
# http://assets.minecraft.net/1_4_7/minecraft_server.jar
# https://github.com/MinecraftForge/FML/tree/master/conf

# obf -> pkgmcp
java -jar ../SpecialSource/target/SpecialSource-1.3-SNAPSHOT-shaded.jar --in-jar ../jars/minecraft_server-147.jar --out-jar ../jars/minecraft-server-pkgmcp-1.4.7.jar --srg-in ../MinecraftForge/mcp/conf/
mvn install:install-file -Dfile=minecraft-server-pkgmcp-1.4.7.jar -DgroupId=org.bukkit -DartifactId=minecraft-server-pkgmcp -Dpackaging=jar -Dversion=1.4.7

# cb <-> obf 
java -jar ../SpecialSource/target/SpecialSource-1.3-SNAPSHOT-shaded.jar --first-jar ../jars/minecraft_server-147.jar --second-jar ../jars/minecraft-server-1.4.7.jar --srg-out obf2cb.srg

