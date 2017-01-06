package com.android.PiedPiper
public class InitUsb {
	static {
		System.loadLibrary("mlbin_jni")
	}

	public native int mlbInitUsb()
	public native int mlbFreeUsb()
	public native int mlbinFire()
	public native int mlbinMoveDown()
	public native int mlbinMoveLeft()
	public native int mlbinMoveRight()
	public native int mlbinMoveUp()
	public native int mlbStop()

}
