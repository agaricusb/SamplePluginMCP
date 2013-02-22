
package agaricus.plugins.SamplePluginMCP;

import net.minecraft.util.IntHashMap;
import org.bukkit.plugin.java.JavaPlugin;

import java.util.Iterator;

public class SamplePluginMCP extends JavaPlugin {
    @Override
    public void onEnable() {
        System.out.println("Hello, Bukkit!");

        System.out.println("Listing packets...");
        IntHashMap map = net.minecraft.network.packet.Packet.packetIdToClassMap;

        for (int i = 0; i < 255; ++i) {
            if (map.lookup(i) != null) {
                System.out.println("Packet "+i+" = "+map.lookup(i));
            }
        }
    }
}
