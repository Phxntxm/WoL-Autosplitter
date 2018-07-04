//Originally created by TheFuncannon
//Updated by Phantom

state("WizardOfLegend")
{
	float gameTime: "mono.dll", 0x002655E0, 0x28, 0xD8, 0xA0, 0x230, 0x90;
	
	byte stage: "mono.dll", 0x002690C0, 0xF8, 0x08, 0x10, 0xA0, 0x230, 0xA4;
	byte level: "mono.dll", 0x002690C0, 0xF8, 0x08, 0x10, 0xA0, 0x230, 0xA0;
}

start
{
	if (old.stage == 0 && current.stage == 0 && old.level == 0 && current.level == 1)
		return true;
}

reset
{
	if (current.stage == 0 && current.level == 0)
		return true;
}

split
{
	if (old.stage == current.stage && old.level == current.level - 1)
		return true;
}


isLoading
{
	return true;
}

gameTime
{
	return TimeSpan.FromSeconds(current.gameTime);
}