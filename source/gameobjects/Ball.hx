package gameobjects;
import flixel.FlxG;
import flixel.util.FlxColor;
import flixel.FlxSprite;
using flixel.util.FlxSpriteUtil;

class Ball extends FlxSprite {
    private static inline var BALLRADIUS = 8;
    public function new() {
        super();
        makeGraphic(BALLRADIUS * 2, BALLRADIUS * 2, FlxColor.TRANSPARENT, true);
        var midpoint = this.getMidpoint();
        this.drawCircle(midpoint.x, midpoint.y);
        
    }
}
