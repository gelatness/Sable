package crc646e364d2ff34954e7;


public class NotificationListener
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.google.android.exoplayer2.ui.PlayerNotificationManager.NotificationListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onNotificationCancelled:(IZ)V:GetOnNotificationCancelled_IZHandler:Com.Google.Android.Exoplayer2.UI.PlayerNotificationManager/INotificationListenerInvoker, ExoPlayer.UI\n" +
			"n_onNotificationPosted:(ILandroid/app/Notification;Z)V:GetOnNotificationPosted_ILandroid_app_Notification_ZHandler:Com.Google.Android.Exoplayer2.UI.PlayerNotificationManager/INotificationListenerInvoker, ExoPlayer.UI\n" +
			"";
		mono.android.Runtime.register ("MediaManager.Platforms.Android.MediaSession.NotificationListener, MediaManager", NotificationListener.class, __md_methods);
	}


	public NotificationListener ()
	{
		super ();
		if (getClass () == NotificationListener.class) {
			mono.android.TypeManager.Activate ("MediaManager.Platforms.Android.MediaSession.NotificationListener, MediaManager", "", this, new java.lang.Object[] {  });
		}
	}


	public void onNotificationCancelled (int p0, boolean p1)
	{
		n_onNotificationCancelled (p0, p1);
	}

	private native void n_onNotificationCancelled (int p0, boolean p1);


	public void onNotificationPosted (int p0, android.app.Notification p1, boolean p2)
	{
		n_onNotificationPosted (p0, p1, p2);
	}

	private native void n_onNotificationPosted (int p0, android.app.Notification p1, boolean p2);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
