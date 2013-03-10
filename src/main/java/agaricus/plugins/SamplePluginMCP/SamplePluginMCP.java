
package agaricus.plugins.SamplePluginMCP;

import net.minecraft.network.packet.Packet;
import net.minecraft.util.IntHashMap;
import org.bukkit.plugin.java.JavaPlugin;

public class SamplePluginMCP extends JavaPlugin {
    @Override
    public void onEnable() {
        System.out.println("Hello, Bukkit!");

        System.out.println("Listing packets...");
        IntHashMap map = Packet.packetIdToClassMap;

        for (int i = 0; i < 255; ++i) {
            if (map.lookup(i) != null) {
                System.out.println("Packet "+i+" = "+map.lookup(i));
            }
        }
    }
}
