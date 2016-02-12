package network;
import sys.net.Socket;

class Client {
    public var id(default, null): UInt;
    public var name: String;
    public var socket: Socket;

    public static function new(socket: Socket) {
        this.socket = socket;
    }

    override public function toString():String {
        return "Client<" + name + ">";
    }
}