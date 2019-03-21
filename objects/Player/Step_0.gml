var kLeft, kLeftRelease, kRight, kRightRelease, kUp, kDown, kJump, kJumpRelease, kShift, kShiftRelease, tempAccel, tempFric;
kLeft         = keyboard_check(ord("A"));
kLeftRelease  = keyboard_check_released(ord("A"));
kRight        = keyboard_check(ord("D"));
kRightRelease = keyboard_check_released(ord("D"));
kUp           = keyboard_check(ord("W"));
kDown         = keyboard_check(ord("S"));
kJump         = keyboard_check_pressed(vk_space);
kJumpRelease  = keyboard_check_released(vk_space);
kShift        = keyboard_check(vk_shift)
kShiftRelease = keyboard_check_released(vk_shift)

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
if (kLeft && !kRight && !sticking) {
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
if (kRight && !kLeft && !sticking) {
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

// Jump
if (kJump && onGround) {
    if (onGround || (!cRight && !cLeft)) {
        // Stretch sprite 
        xscale = 0.66;
        yscale = 1.33;
        v = -jumpHeight;
        state = JUMP;
    }
} else {
    // Variable hop
    if (kJumpRelease) {
        if (v < 0 && v >= -jumpHeight)
            v *= 0.25; 
    }
}

// Friction
if (!kRight && !kLeft)
    h = Approach(h, 0, tempFric);

if (onGround && h == 0)
    state = IDLE;    
       

if(kLeft) {
	sprite_index = LinkWalkLeft
}
if(kLeftRelease) {
	sprite_index = LinkLeft
}
if(kRight) {
	sprite_index = LinkWalkRight
}
if(kRightRelease) {
	sprite_index = LinkRight
}

if(kShift) {
	WalkSpeed = WalkSpeedDefault * runSpeedMultiplier
	image_speed = runSpeedMultiplier
}
if(kShiftRelease) {
	WalkSpeed = WalkSpeedDefault
	image_speed = 1
}
