package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
import gameobjects.Ball;

/**
 * A FlxState which can be used for the actual gameplay.
 */
class PlayState extends FlxState {
    /**
     * Function that is called up when to state is created to set it up.
     */
    var ball: Ball;
    override public function create(): Void {
        ball = new Ball();
        ball.setPosition(FlxG.width / 2, FlxG.height / 2);
        add(ball);
        super.create();
    }

    /**
     * Function that is called when this sstate is destroyed - you might want to
     * consider setting all objects this state uses to null to help garbage collection.
     */
    override public function destroy(): Void {
        super.destroy();
    }

    /**
     * Function that is called once every frame.
     */
    override public function update(): Void {
        super.update();
    }
}