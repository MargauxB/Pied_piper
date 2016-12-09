package com.android.PiedPiper
public class InitUsb {
	static {
		System.loadLibrary("mlbin_jni")
	}

	public native int mlbInitUsb(JNIEnv*env, Jobject this)
	public native int mlbFreeUsb(JNIEnv*env,Jobject this)
	public native int mlbinFire(JNIEnv*env, Jobject this)
	public native int mlbinMoveDown(JNIEnv*env, Jobject this)
	public native int mlbinMoveLeft(JNIEnv*env, Jobject this)
	public native int mlbinMoveRight(JNIEnv*env, Jobject this)
	public native int mlbinMoveUp(JNIEnv*env, Jobject this)
	public native int mlbStop(JNIEnv*env, Jobject this)

}
