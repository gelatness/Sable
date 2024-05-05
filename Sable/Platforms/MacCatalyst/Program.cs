using MediaManager;
using ObjCRuntime;
using UIKit;
using System.IO;
using System.Collections.Generic;
using static UIKit.UIDocumentPickerViewController;
namespace Sable;

public class Program
{
	// This is the main entry point of the application.
	static void Main(string[] args)
	{
		// if you want to use a different Application Delegate class from "AppDelegate"
		// you can specify it here.
		UIApplication.Main(args, null, typeof(AppDelegate));
        CrossMediaManager.Current.Init();
    }
}

