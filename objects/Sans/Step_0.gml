FBSUIBackGroundInstance.x = x
FBSUIBackGroundInstance.y = y

if (onGround) {
    tempAccel = groundAccel;
    tempFric  = groundFric;
} else {
    tempAccel = airAccel;
    tempFric  = airFric;
}

// Gravity ////////////////////////////////////////////////////////////////////
if (!onGround) {
    state = JUMP;
    if ((cLeft || cRight) && v >= 0) {
        // Wall slide
        v = Approach(v, maxV, gravSlide);
    } else {
        
        // Fall normally
        if (v < 0)
            v = Approach(v, maxV, gravRise);
        else
            v = Approach(v, maxV, gravFall);
    }
}
///////////////////////////////////////////////////////////////////////////////

// Left 
if (behavior == 1 && !sticking) {
    facing = LEFT;

    // Apply acceleration left
    if (h > 0)
        h = Approach(h, 0, tempFric);   
    h = Approach(h, -maxH, tempAccel);
        
    if (onGround /*&& !cLeft*/)
        state = RUN;
    else {
        if (onGround)
            state = IDLE;
    }
}

// Right 
if (behavior == 2 && !sticking) {
    facing = RIGHT;

    // Apply acceleration right
    if (h < 0)
        h = Approach(h, 0, tempFric);   
    h = Approach(h, maxH, tempAccel);
        
    if (onGround /*&& !cRight*/)
        state = RUN;
    else {
        if (onGround)
            state = IDLE;
    }
}

// Friction
if (behavior == 0)
    h = Approach(h, 0, tempFric);

if (onGround && h == 0)
    state = IDLE;    
       