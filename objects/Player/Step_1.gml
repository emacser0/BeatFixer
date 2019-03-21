var temp;

// Check if you were onGround previous frame
temp = onGround;

onGround = place_meeting(x,y+1,oParSolid)

// Update relative collision
cLeft  = place_meeting(x - 1, y, oBlock); 
cRight = place_meeting(x + 1, y, oBlock); 
cAbove = place_meeting(x, y - 1, oParSolid);

