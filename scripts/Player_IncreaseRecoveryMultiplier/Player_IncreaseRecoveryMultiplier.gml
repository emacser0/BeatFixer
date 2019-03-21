with(Player)
{
	if(RecoveryMultiplier < RecoveryMultiplierMax)
	{
		RecoveryMultiplier++
	}
	Player_FixRecoveryMultiplierTimeOutMax()
	RecoveryMultiplierDecreaseTimeOut = RecoveryMultiplierDecreaseTimeOutMax
}