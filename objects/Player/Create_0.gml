WalkSpeedDefault = 3
WalkSpeed = 3
runSpeedMultiplier = 1.5
HP = 500
HPMax = 500
RecoveryRate = 1
RecoveryMultiplier = 1
RecoveryMultiplierMin = 1
RecoveryMultiplierMax = 4
RecoveryMultiplierPenaltyRate = 100
RecoveryMultiplierDecreaseTimeOutMaxDefault = 600
RecoveryMultiplierDecreaseTimeOutMax = RecoveryMultiplierDecreaseTimeOutMaxDefault - RecoveryMultiplier * RecoveryMultiplierPenaltyRate
RecoveryMultiplierDecreaseTimeOut = RecoveryMultiplierDecreaseTimeOutMax
onRectangularObject = false

// Movement speed
h = 0;
v = 0;

// Collision below
onGround = false;

// Movement Vars //////////////////////////////////////////////////////////////

// Adjust THIS to adjust overall player speed
m = 1;

// Acceleration + friction
groundAccel = 1.0  * m;
groundFric  = 2.0  * m;
airAccel    = 0.75 * m;
airFric     = 0.10 * m;

// Max movement speeds
maxH        = 4.0  * m;
maxV        = 9.0  * m;

jumpHeight  = 8.0  * m;
gravRise    = 0.5  * m;
gravFall    = 0.5  * m;
gravSlide   = 0.25 * m;

camDist     = 24.0; // (later versions)

// Frames prior to being able to push off of wall slide with arrow keys (doesn't affect wall jump)
clingTime   = 4.0  * m;
///////////////////////////////////////////////////////////////////////////////

// State Info /////////////////////////////////////////////////////////////////
// States
IDLE     = 10;
RUN      = 11;
JUMP     = 12;

// Facings
RIGHT =  1;
LEFT  = -1;

// Initialize properties
state  = IDLE;
facing = image_xscale; // Change xscale in editor to adjust initial facing

// For squash + stretch
xscale = 1;
yscale = 1;
///////////////////////////////////////////////////////////////////////////////

// Misc ///////////////////////////////////////////////////////////////////////

// Relative collision checks
cLeft  = 0;
cRight = 0;
cAbove = 0;

// Wall slide
canStick = true;
sticking = false;

///////////////////////////////////////////////////////////////////////////////


length = 6; //4;
w1 = 3;
w2 = 5; //0;
c1 = c_white
c2 = c_white
a1 = 1;
a2 = 1;
xscatter = 0//6;
yscatter = 1;
xdrift = 0;
ydrift = 5;

