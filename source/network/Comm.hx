packag network;

import sys.net.Socket;
import sys.net.Host;

@:deprecated
class Comm {
    public static var connection: Socket;
    public static var connected(default, null): Type;

    public static function connect2server(server: Host, port: Int = 6777): Bool {
        connected = false;
        try{
            connection = new Socket();
            connection.bind(new Host(Host.localhost()), 0);
            connection.connect(server, port);
            connected = true;
        } catch{

        }

    }
}