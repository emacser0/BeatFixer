with(Player)
{	
	if(RecoveryMultiplier > RecoveryMultiplierMin)
	{
		RecoveryMultiplier--
		Player_FixRecoveryMultiplierTimeOutMax()
		RecoveryMultiplierDecreaseTimeOut = RecoveryMultiplierDecreaseTimeOutMax
    }
}