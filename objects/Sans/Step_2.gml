// Actual collision checks + movement
var i;

// Vertical
for (i = 0; i < abs(v); ++i) {
    if (!place_meeting(x, y + sign(v), oParSolid))
        y += sign(v);
    else {
        v = 0;
        break;
    }
}

// Horizontal
for (i = 0; i < abs(h); ++i) {
    // UP slope
    if (place_meeting(x + sign(h), y, oParSolid) && !place_meeting(x + sign(h), y - 1, oParSolid))
        --y;
    
    // DOWN slope
    if (!place_meeting(x + sign(h), y, oParSolid) && !place_meeting(x + sign(h), y + 1, oParSolid) && place_meeting(x + sign(h), y + 2, oParSolid))
        ++y;      
        
    if (!place_meeting(x + sign(h), y, oParSolid))
        x += sign(h); 
    else {
		h = 0;
        break;
    }
}

if(x >= room_width) x = room_width - sprite_width
if(x <= 0) x = sprite_width