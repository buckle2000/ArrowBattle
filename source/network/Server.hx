package network;
import sys.net.Socket;
import sys.net.Host;
import network.Coder;
import network.Client;

class Server {
    public var listener: Socket;
    public var success(default, null): Bool;
    public var clients: Array<Client>;
    public var feedbackHandlers: Array < haxe.io.Bytes->Bool >;
    
    public static function main(): Void {
        var server = new Server();
        server.init();
        server.mainloop();
    }

    public function new() {
        try {
            listener = new Socket();
            listener.bind(new Host(Host.localhost()), network.Coder.DEFAULT_SERVER_PORT);
            listener.listen(256);
            listener.setBlocking(false);
            clients = new Array<Client>();
            success = true;
        } catch (e: Dynamic) {
            success = false;
        }
    }

    public function mainloop() {
        while (true) {
            var newcomer : Socket = tryAccept();
            if (newcomer != null)
                clients.push(newcomer);

            for (c : Client in clients) {
                try {
                    var feedback = s.input.read(Coder.COMMANDSEQ_LEN);
                } catch {
                    Sys.println("Connection Lost to " + c);
                }
            }
        }

    }

    public function tryAccept(): Socket {
        try {
            var incoming = listener.accept();
            return incoming;
        } catch (e: Dynamic) {
            return null;
        }
    }
}