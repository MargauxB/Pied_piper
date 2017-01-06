public static void main(String [ ] args){
	thows InterruptedException{	
		InitUsb BoumBoum = new InitUsb();
		BoumBoum.mlbInitUsb();
		Thread.sleep(1000);
		BoumBoum.mlbinFire();
		Thread.sleep(2000);
		BoumBoum.mlbinMoveDown();
		Thread.sleep(2000);
		BoumBoum.mlbinMoveLeft();
		Thread.sleep(2000);
		BoumBoum.mlbinMoveRight();
		Thread.sleep(2000);
		BoumBoum.mlbinFire();
}
