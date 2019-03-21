with(Player)
{
	if(HP + RecoveryRate * RecoveryMultiplierDecreaseTimeOut <= HPMax)
	{
		HP += RecoveryRate * RecoveryMultiplierDecreaseTimeOut
	}
	if(RecoveryMultiplierDecreaseTimeOut > 0 &&
	   RecoveryMultiplier > RecoveryMultiplierMin)
	{
		RecoveryMultiplierDecreaseTimeOut--
	}
	else
	{
		Player_DecreaseRecoveryMultiplier()
		RecoveryMultiplierDecreaseTimeOut = RecoveryMultiplierDecreaseTimeOutMax
	}
}
	