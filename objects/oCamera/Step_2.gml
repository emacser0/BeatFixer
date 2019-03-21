if (instance_exists(oPlayer)) {
        // Make sure player is inside box
        x = max(oPlayer.x - sprite_width  * 0.5 + 8, min(x, oPlayer.x + (sprite_width  * 0.5 - 8)));
        y = max(oPlayer.y - sprite_height * 0.5 + 8, min(y, oPlayer.y + (sprite_height * 0.5 - 8)));

        // Approach      
        __view_set( e__VW.XView, 0, Approach(__view_get( e__VW.XView, 0 ), x - __view_get( e__VW.WPort, 0 ) * 0.5, 10) );
        __view_set( e__VW.YView, 0, Approach(__view_get( e__VW.YView, 0 ), y - __view_get( e__VW.HPort, 0 ) * 0.5 - 16, 10) );
                
        // Make sure camera is inside room
        __view_set( e__VW.XView, 0, max(0, min(__view_get( e__VW.XView, 0 ), room_width  - __view_get( e__VW.WPort, 0 ))) );
        __view_set( e__VW.YView, 0, max(0, min(__view_get( e__VW.YView, 0 ), room_height - __view_get( e__VW.HPort, 0 ))) );      
}

// Screenshake
if (screenShake) {
    __view_set( e__VW.Angle, 0, random_range(-1, 1) );
} else {
    // Reset
    __view_set( e__VW.Angle, 0, 0 );
}

