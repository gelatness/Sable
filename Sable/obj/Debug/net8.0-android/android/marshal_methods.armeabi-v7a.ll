; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [330 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [654 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 246
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 283
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 145
	i32 53857724, ; 8: ca/Microsoft.Maui.Controls.resources => 0x335cdbc => 293
	i32 66541672, ; 9: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 68219467, ; 10: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 11: Microsoft.Maui.Graphics.dll => 0x44bb714 => 188
	i32 82292897, ; 12: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 13: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 265
	i32 113429830, ; 14: zh-HK/Microsoft.Maui.Controls.resources => 0x6c2cd46 => 323
	i32 117431740, ; 15: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 16: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 265
	i32 122350210, ; 17: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 18: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 287
	i32 142721839, ; 19: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 20: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 21: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 22: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 220
	i32 176265551, ; 23: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 24: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 267
	i32 184328833, ; 25: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 26: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 322
	i32 199333315, ; 27: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 323
	i32 205061960, ; 28: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 29: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 218
	i32 220171995, ; 30: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 31: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 240
	i32 230752869, ; 32: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 33: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 34: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 35: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 36: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 223
	i32 266337479, ; 37: Xamarin.Google.Guava.FailureAccess.dll => 0xfdffcc7 => 282
	i32 276479776, ; 38: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 39: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 242
	i32 280482487, ; 40: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 239
	i32 280992041, ; 41: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 294
	i32 291076382, ; 42: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 293579439, ; 43: ExoPlayer.Dash.dll => 0x117faaaf => 194
	i32 298918909, ; 44: System.Net.Ping.dll => 0x11d123fd => 69
	i32 318968648, ; 45: Xamarin.AndroidX.Activity.dll => 0x13031348 => 209
	i32 321597661, ; 46: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 47: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 307
	i32 342366114, ; 48: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 241
	i32 356389973, ; 49: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 306
	i32 357576608, ; 50: cs/Microsoft.Maui.Controls.resources => 0x15502fa0 => 294
	i32 360082299, ; 51: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 52: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 53: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 54: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 55: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 56: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 57: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 58: _Microsoft.Android.Resource.Designer => 0x17969339 => 326
	i32 403441872, ; 59: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 60: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 318
	i32 441335492, ; 61: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 224
	i32 442565967, ; 62: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 63: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 237
	i32 451504562, ; 64: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 452127346, ; 65: ExoPlayer.Database.dll => 0x1af2ea72 => 195
	i32 456227837, ; 66: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 67: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 68: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 69: System.dll => 0x1bff388e => 164
	i32 476646585, ; 70: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 239
	i32 486930444, ; 71: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 252
	i32 498788369, ; 72: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 73: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 305
	i32 503918385, ; 74: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 299
	i32 513247710, ; 75: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 182
	i32 526420162, ; 76: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527168573, ; 77: hi/Microsoft.Maui.Controls.resources => 0x1f6bf43d => 302
	i32 527452488, ; 78: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 287
	i32 530272170, ; 79: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 80: Microsoft.Extensions.Logging => 0x20216150 => 178
	i32 540030774, ; 81: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 82: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 83: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 84: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 85: Jsr305Binding => 0x213954e7 => 278
	i32 569601784, ; 86: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 276
	i32 577335427, ; 87: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 88: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 313
	i32 601371474, ; 89: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 90: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 91: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 92: Xamarin.AndroidX.CustomView => 0x2568904f => 229
	i32 639843206, ; 93: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 235
	i32 643868501, ; 94: System.Net => 0x2660a755 => 81
	i32 662205335, ; 95: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 96: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 272
	i32 666292255, ; 97: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 216
	i32 672442732, ; 98: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 99: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 100: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 293
	i32 690569205, ; 101: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 102: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 289
	i32 693804605, ; 103: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 104: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 105: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 284
	i32 700358131, ; 106: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 107: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 308
	i32 709557578, ; 108: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 296
	i32 720511267, ; 109: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 288
	i32 722857257, ; 110: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 723193629, ; 111: Sable => 0x2b1b0f1d => 0
	i32 735137430, ; 112: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 113: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 114: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 206
	i32 759451189, ; 115: MediaManager => 0x2d444e35 => 189
	i32 759454413, ; 116: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 117: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 118: System.IO.Compression => 0x2e394f87 => 46
	i32 789151979, ; 119: Microsoft.Extensions.Options => 0x2f0980eb => 181
	i32 790371945, ; 120: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 230
	i32 804715423, ; 121: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 122: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 244
	i32 812693636, ; 123: ExoPlayer.Dash => 0x3070b884 => 194
	i32 823281589, ; 124: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 125: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 126: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 127: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 128: Xamarin.AndroidX.Print => 0x3246f6cd => 258
	i32 870878177, ; 129: ar/Microsoft.Maui.Controls.resources => 0x33e88be1 => 292
	i32 873119928, ; 130: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 131: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 132: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 133: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 134: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 915551335, ; 135: ExoPlayer.Ext.MediaSession => 0x36923467 => 200
	i32 926902833, ; 136: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 320
	i32 928116545, ; 137: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 283
	i32 939704684, ; 138: ExoPlayer.Extractor => 0x3802c16c => 198
	i32 952186615, ; 139: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 140: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 288
	i32 966729478, ; 141: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 279
	i32 967690846, ; 142: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 241
	i32 975236339, ; 143: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 144: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 145: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 146: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 147: System.Collections.dll => 0x3b2c715c => 12
	i32 993161700, ; 148: zh-Hans/Microsoft.Maui.Controls.resources => 0x3b3271e4 => 324
	i32 994442037, ; 149: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 994547685, ; 150: es/Microsoft.Maui.Controls.resources => 0x3b4797e5 => 298
	i32 1001831731, ; 151: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 152: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 262
	i32 1019214401, ; 153: System.Drawing => 0x3cbffa41 => 36
	i32 1028013380, ; 154: ExoPlayer.UI.dll => 0x3d463d44 => 204
	i32 1028951442, ; 155: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 177
	i32 1029334545, ; 156: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 295
	i32 1031528504, ; 157: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 280
	i32 1035644815, ; 158: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 214
	i32 1036536393, ; 159: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 160: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 161: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 248
	i32 1067306892, ; 162: GoogleGson => 0x3f9dcf8c => 173
	i32 1082857460, ; 163: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 164: Xamarin.Kotlin.StdLib => 0x409e66d8 => 285
	i32 1098259244, ; 165: System => 0x41761b2c => 164
	i32 1121599056, ; 166: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 247
	i32 1127624469, ; 167: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 180
	i32 1149092582, ; 168: Xamarin.AndroidX.Window => 0x447dc2e6 => 275
	i32 1151313727, ; 169: ExoPlayer.Rtsp => 0x449fa73f => 201
	i32 1170634674, ; 170: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 171: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 271
	i32 1178241025, ; 172: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 256
	i32 1178797549, ; 173: fi/Microsoft.Maui.Controls.resources => 0x464305ed => 299
	i32 1179022490, ; 174: Plugin.FilePicker => 0x4646749a => 291
	i32 1179519184, ; 175: MediaManager.Forms => 0x464e08d0 => 190
	i32 1203215381, ; 176: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 312
	i32 1204270330, ; 177: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 216
	i32 1208641965, ; 178: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 179: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 180: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 310
	i32 1243150071, ; 181: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 276
	i32 1253011324, ; 182: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1263886435, ; 183: Xamarin.Google.Guava.dll => 0x4b556063 => 281
	i32 1264511973, ; 184: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 266
	i32 1267360935, ; 185: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 270
	i32 1271249867, ; 186: Plugin.FilePicker.dll => 0x4bc5bbcb => 291
	i32 1273260888, ; 187: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 221
	i32 1275534314, ; 188: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 289
	i32 1278448581, ; 189: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 213
	i32 1293217323, ; 190: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 232
	i32 1309188875, ; 191: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1309209905, ; 192: ExoPlayer.DataSource => 0x4e08f531 => 196
	i32 1322716291, ; 193: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 275
	i32 1324164729, ; 194: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 195: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 196: System.IO => 0x514d38cd => 57
	i32 1376866003, ; 197: Xamarin.AndroidX.SavedState => 0x52114ed3 => 262
	i32 1379779777, ; 198: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1395857551, ; 199: Xamarin.AndroidX.Media.dll => 0x5333188f => 253
	i32 1402170036, ; 200: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 201: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 225
	i32 1406299041, ; 202: Xamarin.Google.Guava.FailureAccess => 0x53d26ba1 => 282
	i32 1408764838, ; 203: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 204: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 205: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1434145427, ; 206: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 207: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 279
	i32 1439761251, ; 208: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 209: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 210: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 211: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 212: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461234159, ; 213: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 214: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 215: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 216: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 215
	i32 1470490898, ; 217: Microsoft.Extensions.Primitives => 0x57a5e912 => 182
	i32 1479771757, ; 218: System.Collections.Immutable => 0x5833866d => 9
	i32 1480156764, ; 219: ExoPlayer.DataSource.dll => 0x5839665c => 196
	i32 1480492111, ; 220: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 221: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 222: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 263
	i32 1493001747, ; 223: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 302
	i32 1514721132, ; 224: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 297
	i32 1536373174, ; 225: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 226: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 227: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 228: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 229: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 317
	i32 1554762148, ; 230: fr/Microsoft.Maui.Controls.resources => 0x5cabc9a4 => 300
	i32 1565862583, ; 231: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 232: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 233: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 234: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1580413037, ; 235: sv/Microsoft.Maui.Controls.resources => 0x5e33306d => 318
	i32 1582372066, ; 236: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 231
	i32 1591080825, ; 237: zh-Hant/Microsoft.Maui.Controls.resources => 0x5ed5f779 => 325
	i32 1592978981, ; 238: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 239: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 280
	i32 1601112923, ; 240: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 241: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 242: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 243: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 251
	i32 1622358360, ; 244: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 245: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 274
	i32 1635184631, ; 246: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 235
	i32 1636350590, ; 247: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 228
	i32 1639515021, ; 248: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 249: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 250: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 251: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 252: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 268
	i32 1658251792, ; 253: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 277
	i32 1670060433, ; 254: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 223
	i32 1675553242, ; 255: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 256: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 257: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 258: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 259: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 260: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 261: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 286
	i32 1700397376, ; 262: ExoPlayer.Transformer => 0x655a0140 => 203
	i32 1701541528, ; 263: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 264: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 244
	i32 1726116996, ; 265: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 266: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 267: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 219
	i32 1736233607, ; 268: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 315
	i32 1744735666, ; 269: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 270: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 271: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 272: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 273: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765620304, ; 274: ExoPlayer.Core => 0x693d3a50 => 193
	i32 1765942094, ; 275: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 276: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 267
	i32 1770582343, ; 277: Microsoft.Extensions.Logging.dll => 0x6988f147 => 178
	i32 1776026572, ; 278: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 279: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 280: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1788241197, ; 281: Xamarin.AndroidX.Fragment => 0x6a96652d => 237
	i32 1808609942, ; 282: Xamarin.AndroidX.Loader => 0x6bcd3296 => 251
	i32 1809966115, ; 283: nb/Microsoft.Maui.Controls.resources => 0x6be1e423 => 310
	i32 1813058853, ; 284: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 285
	i32 1813201214, ; 285: Xamarin.Google.Android.Material => 0x6c13413e => 277
	i32 1818569960, ; 286: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 257
	i32 1818787751, ; 287: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1821794637, ; 288: hu/Microsoft.Maui.Controls.resources => 0x6c96614d => 304
	i32 1824175904, ; 289: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 290: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 291: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 179
	i32 1842015223, ; 292: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 321
	i32 1847515442, ; 293: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 206
	i32 1850226322, ; 294: MediaManager.dll => 0x6e483692 => 189
	i32 1858542181, ; 295: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 296: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1879696579, ; 297: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 298: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 217
	i32 1888955245, ; 299: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 300: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 301: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 302: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 303: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 304: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 305: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1960264639, ; 306: ja/Microsoft.Maui.Controls.resources => 0x74d743bf => 307
	i32 1961813231, ; 307: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 264
	i32 1968388702, ; 308: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 174
	i32 1983156543, ; 309: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 286
	i32 1984283898, ; 310: ExoPlayer.Ext.MediaSession.dll => 0x7645c4fa => 200
	i32 1985761444, ; 311: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 208
	i32 2011961780, ; 312: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2014344398, ; 313: hr/Microsoft.Maui.Controls.resources => 0x781074ce => 303
	i32 2019465201, ; 314: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 248
	i32 2025202353, ; 315: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 292
	i32 2031763787, ; 316: Xamarin.Android.Glide => 0x791a414b => 205
	i32 2043674646, ; 317: it/Microsoft.Maui.Controls.resources => 0x79d00016 => 306
	i32 2045470958, ; 318: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 319: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 243
	i32 2060060697, ; 320: System.Windows.dll => 0x7aca0819 => 154
	i32 2070888862, ; 321: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 322: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 323: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2106312818, ; 324: ExoPlayer.Decoder => 0x7d8bc872 => 197
	i32 2113912252, ; 325: ExoPlayer.UI => 0x7dffbdbc => 204
	i32 2127167465, ; 326: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 327: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 328: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 329: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2150663486, ; 330: ko/Microsoft.Maui.Controls.resources => 0x8030853e => 308
	i32 2159891885, ; 331: Microsoft.Maui => 0x80bd55ad => 186
	i32 2165051842, ; 332: ro/Microsoft.Maui.Controls.resources => 0x810c11c2 => 315
	i32 2181898931, ; 333: Microsoft.Extensions.Options.dll => 0x820d22b3 => 181
	i32 2192057212, ; 334: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 179
	i32 2193016926, ; 335: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 336: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 290
	i32 2201231467, ; 337: System.Net.Http => 0x8334206b => 64
	i32 2202964214, ; 338: ExoPlayer.dll => 0x834e90f6 => 191
	i32 2217644978, ; 339: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 271
	i32 2222056684, ; 340: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2239138732, ; 341: ExoPlayer.SmoothStreaming => 0x85768bac => 202
	i32 2244775296, ; 342: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 252
	i32 2252106437, ; 343: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 344: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 345: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 346: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 175
	i32 2267999099, ; 347: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 207
	i32 2270573516, ; 348: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 300
	i32 2279755925, ; 349: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 260
	i32 2289298199, ; 350: th/Microsoft.Maui.Controls.resources => 0x8873eb17 => 319
	i32 2293034957, ; 351: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 352: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2297326322, ; 353: MediaManager.Forms.dll => 0x88ee6af2 => 190
	i32 2298471582, ; 354: System.Net.Mail => 0x88ffe49e => 66
	i32 2305521784, ; 355: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 356: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 211
	i32 2320631194, ; 357: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 358: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 359: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 360: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 361: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369760409, ; 362: tr/Microsoft.Maui.Controls.resources => 0x8d3fac99 => 320
	i32 2371007202, ; 363: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 174
	i32 2378619854, ; 364: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 365: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2401565422, ; 366: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 367: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 234
	i32 2421380589, ; 368: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2421992093, ; 369: nl/Microsoft.Maui.Controls.resources => 0x905caa9d => 311
	i32 2423080555, ; 370: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 221
	i32 2435356389, ; 371: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 372: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 373: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 374: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 375: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 376: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 224
	i32 2471841756, ; 377: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 378: Java.Interop.dll => 0x93918882 => 168
	i32 2476233210, ; 379: ExoPlayer => 0x939851fa => 191
	i32 2480646305, ; 380: Microsoft.Maui.Controls => 0x93dba8a1 => 184
	i32 2483903535, ; 381: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 382: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 383: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 384: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 385: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 246
	i32 2515854816, ; 386: ExoPlayer.Common => 0x95f4e5e0 => 192
	i32 2520433370, ; 387: sk/Microsoft.Maui.Controls.resources => 0x963ac2da => 317
	i32 2522472828, ; 388: Xamarin.Android.Glide.dll => 0x9659e17c => 205
	i32 2538310050, ; 389: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2562349572, ; 390: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 391: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 392: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 247
	i32 2581819634, ; 393: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 270
	i32 2585220780, ; 394: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 395: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 396: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2605712449, ; 397: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 290
	i32 2615233544, ; 398: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 238
	i32 2616218305, ; 399: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 180
	i32 2617129537, ; 400: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 401: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 402: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 228
	i32 2624644809, ; 403: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 233
	i32 2626028643, ; 404: ExoPlayer.Rtsp.dll => 0x9c860463 => 201
	i32 2627185994, ; 405: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 406: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 407: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 242
	i32 2663391936, ; 408: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 207
	i32 2663698177, ; 409: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 410: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 411: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 412: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 413: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 414: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 415: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 268
	i32 2713040075, ; 416: ExoPlayer.Hls => 0xa1b5b4cb => 199
	i32 2715334215, ; 417: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 418: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 419: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 420: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 421: Xamarin.AndroidX.Activity => 0xa2e0939b => 209
	i32 2735172069, ; 422: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 423: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 215
	i32 2740948882, ; 424: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 425: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2758225723, ; 426: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 185
	i32 2764765095, ; 427: Microsoft.Maui.dll => 0xa4caf7a7 => 186
	i32 2765824710, ; 428: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 429: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 284
	i32 2778768386, ; 430: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 273
	i32 2779977773, ; 431: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 261
	i32 2788224221, ; 432: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 238
	i32 2796087574, ; 433: ExoPlayer.Extractor.dll => 0xa6a8e916 => 198
	i32 2801831435, ; 434: Microsoft.Maui.Graphics => 0xa7008e0b => 188
	i32 2802068195, ; 435: uk/Microsoft.Maui.Controls.resources => 0xa7042ae3 => 321
	i32 2803228030, ; 436: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 437: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 298
	i32 2810250172, ; 438: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 225
	i32 2819470561, ; 439: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 440: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 441: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 261
	i32 2824502124, ; 442: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 443: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 311
	i32 2838993487, ; 444: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 249
	i32 2849599387, ; 445: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 446: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 273
	i32 2855708567, ; 447: Xamarin.AndroidX.Transition => 0xaa36a797 => 269
	i32 2857259519, ; 448: el/Microsoft.Maui.Controls.resources => 0xaa4e51ff => 297
	i32 2861098320, ; 449: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 450: Microsoft.Maui.Essentials => 0xaa8a4878 => 187
	i32 2870099610, ; 451: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 210
	i32 2875164099, ; 452: Jsr305Binding.dll => 0xab5f85c3 => 278
	i32 2875220617, ; 453: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2883495834, ; 454: ru/Microsoft.Maui.Controls.resources => 0xabdea79a => 316
	i32 2884993177, ; 455: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 236
	i32 2887636118, ; 456: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 457: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 458: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 459: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 460: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 461: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 462: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 274
	i32 2919462931, ; 463: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 464: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 212
	i32 2936416060, ; 465: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 466: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 467: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 468: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2960379616, ; 469: Xamarin.Google.Guava => 0xb073cee0 => 281
	i32 2968338931, ; 470: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 471: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 472: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 232
	i32 2987532451, ; 473: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 264
	i32 2996846495, ; 474: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 245
	i32 3016983068, ; 475: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 266
	i32 3023353419, ; 476: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 477: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 240
	i32 3027462113, ; 478: ExoPlayer.Common.dll => 0xb47367e1 => 192
	i32 3038032645, ; 479: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 326
	i32 3056245963, ; 480: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 263
	i32 3057625584, ; 481: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 254
	i32 3059408633, ; 482: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 483: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 484: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 485: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 304
	i32 3090735792, ; 486: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 487: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 488: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 489: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 490: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 491: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 492: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3144327419, ; 493: ExoPlayer.Hls.dll => 0xbb6aa0fb => 199
	i32 3147165239, ; 494: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 495: GoogleGson.dll => 0xbba64c02 => 173
	i32 3159123045, ; 496: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 497: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 498: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 255
	i32 3190271366, ; 499: ExoPlayer.Decoder.dll => 0xbe27ad86 => 197
	i32 3192346100, ; 500: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 501: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 502: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 503: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 504: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 231
	i32 3220365878, ; 505: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 506: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 507: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 508: Xamarin.AndroidX.CardView => 0xc235e84d => 219
	i32 3265493905, ; 509: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 510: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 511: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 512: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 513: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 514: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 515: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 516: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3316684772, ; 517: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 518: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 229
	i32 3317144872, ; 519: System.Data => 0xc5b79d28 => 24
	i32 3329734229, ; 520: ExoPlayer.Database => 0xc677b655 => 195
	i32 3340431453, ; 521: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 217
	i32 3345895724, ; 522: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 259
	i32 3346324047, ; 523: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 256
	i32 3358260929, ; 524: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 525: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 210
	i32 3362522851, ; 526: Xamarin.AndroidX.Core => 0xc86c06e3 => 226
	i32 3366347497, ; 527: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 528: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 260
	i32 3395150330, ; 529: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3396979385, ; 530: ExoPlayer.Transformer.dll => 0xca79cab9 => 203
	i32 3403906625, ; 531: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 532: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 230
	i32 3428513518, ; 533: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 176
	i32 3429136800, ; 534: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 535: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 536: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 233
	i32 3445260447, ; 537: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 538: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 183
	i32 3463511458, ; 539: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 303
	i32 3471940407, ; 540: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 541: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 542: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 316
	i32 3485117614, ; 543: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 544: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 545: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 222
	i32 3509114376, ; 546: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 547: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 548: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 549: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3542658132, ; 550: vi/Microsoft.Maui.Controls.resources => 0xd328ac54 => 322
	i32 3560100363, ; 551: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 552: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3596930546, ; 553: de/Microsoft.Maui.Controls.resources => 0xd664cdf2 => 296
	i32 3597029428, ; 554: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 208
	i32 3598340787, ; 555: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 556: System.Linq.dll => 0xd715a361 => 61
	i32 3623444314, ; 557: da/Microsoft.Maui.Controls.resources => 0xd7f95f5a => 295
	i32 3624195450, ; 558: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 559: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 258
	i32 3633644679, ; 560: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 212
	i32 3638274909, ; 561: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 562: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 243
	i32 3643854240, ; 563: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 255
	i32 3645089577, ; 564: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3647796983, ; 565: pt-BR/Microsoft.Maui.Controls.resources => 0xd96cf6f7 => 313
	i32 3657292374, ; 566: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 175
	i32 3660523487, ; 567: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3662115805, ; 568: he/Microsoft.Maui.Controls.resources => 0xda4773dd => 301
	i32 3672681054, ; 569: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 570: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 218
	i32 3684561358, ; 571: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 222
	i32 3686075795, ; 572: ms/Microsoft.Maui.Controls.resources => 0xdbb50d93 => 309
	i32 3697841164, ; 573: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 325
	i32 3700866549, ; 574: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 575: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 227
	i32 3716563718, ; 576: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 577: Xamarin.AndroidX.Annotation => 0xdda814c6 => 211
	i32 3724971120, ; 578: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 254
	i32 3732100267, ; 579: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 580: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 581: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 582: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3778408118, ; 583: Sable.dll => 0xe135eeb6 => 0
	i32 3786282454, ; 584: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 220
	i32 3792276235, ; 585: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 586: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 183
	i32 3802395368, ; 587: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 588: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3822602673, ; 589: Xamarin.AndroidX.Media => 0xe3d849b1 => 253
	i32 3823082795, ; 590: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 591: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 592: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 177
	i32 3844307129, ; 593: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 594: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 595: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 596: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 597: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 598: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 599: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 269
	i32 3888767677, ; 600: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 259
	i32 3889960447, ; 601: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 324
	i32 3896106733, ; 602: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 603: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 226
	i32 3901907137, ; 604: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 605: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 606: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 272
	i32 3928044579, ; 607: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 608: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 609: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 257
	i32 3945713374, ; 610: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 611: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 612: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 214
	i32 3959773229, ; 613: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 245
	i32 3980434154, ; 614: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 319
	i32 3987592930, ; 615: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 301
	i32 4003436829, ; 616: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 617: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 213
	i32 4025784931, ; 618: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 619: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 185
	i32 4054681211, ; 620: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 621: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4070331268, ; 622: id/Microsoft.Maui.Controls.resources => 0xf29c5384 => 305
	i32 4073602200, ; 623: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 624: Microsoft.Maui.Essentials.dll => 0xf40add04 => 187
	i32 4099507663, ; 625: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 626: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 627: Xamarin.AndroidX.Emoji2 => 0xf479582c => 234
	i32 4102112229, ; 628: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 314
	i32 4119206479, ; 629: pl/Microsoft.Maui.Controls.resources => 0xf5861a4f => 312
	i32 4125707920, ; 630: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 309
	i32 4126470640, ; 631: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 176
	i32 4127667938, ; 632: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 633: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 634: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4151237749, ; 635: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 636: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 637: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 638: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4173364138, ; 639: ExoPlayer.SmoothStreaming.dll => 0xf8c07baa => 202
	i32 4181436372, ; 640: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 641: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 250
	i32 4185676441, ; 642: System.Security => 0xf97c5a99 => 130
	i32 4190597220, ; 643: ExoPlayer.Core.dll => 0xf9c77064 => 193
	i32 4196529839, ; 644: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 645: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4234116406, ; 646: pt/Microsoft.Maui.Controls.resources => 0xfc5f7d36 => 314
	i32 4256097574, ; 647: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 227
	i32 4258378803, ; 648: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 249
	i32 4260525087, ; 649: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 650: Microsoft.Maui.Controls.dll => 0xfea12dee => 184
	i32 4274976490, ; 651: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 652: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 250
	i32 4294763496 ; 653: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 236
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [654 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 246, ; 3
	i32 283, ; 4
	i32 48, ; 5
	i32 80, ; 6
	i32 145, ; 7
	i32 293, ; 8
	i32 30, ; 9
	i32 124, ; 10
	i32 188, ; 11
	i32 102, ; 12
	i32 265, ; 13
	i32 323, ; 14
	i32 107, ; 15
	i32 265, ; 16
	i32 139, ; 17
	i32 287, ; 18
	i32 77, ; 19
	i32 124, ; 20
	i32 13, ; 21
	i32 220, ; 22
	i32 132, ; 23
	i32 267, ; 24
	i32 151, ; 25
	i32 322, ; 26
	i32 323, ; 27
	i32 18, ; 28
	i32 218, ; 29
	i32 26, ; 30
	i32 240, ; 31
	i32 1, ; 32
	i32 59, ; 33
	i32 42, ; 34
	i32 91, ; 35
	i32 223, ; 36
	i32 282, ; 37
	i32 147, ; 38
	i32 242, ; 39
	i32 239, ; 40
	i32 294, ; 41
	i32 54, ; 42
	i32 194, ; 43
	i32 69, ; 44
	i32 209, ; 45
	i32 83, ; 46
	i32 307, ; 47
	i32 241, ; 48
	i32 306, ; 49
	i32 294, ; 50
	i32 131, ; 51
	i32 55, ; 52
	i32 149, ; 53
	i32 74, ; 54
	i32 145, ; 55
	i32 62, ; 56
	i32 146, ; 57
	i32 326, ; 58
	i32 165, ; 59
	i32 318, ; 60
	i32 224, ; 61
	i32 12, ; 62
	i32 237, ; 63
	i32 125, ; 64
	i32 195, ; 65
	i32 152, ; 66
	i32 113, ; 67
	i32 166, ; 68
	i32 164, ; 69
	i32 239, ; 70
	i32 252, ; 71
	i32 84, ; 72
	i32 305, ; 73
	i32 299, ; 74
	i32 182, ; 75
	i32 150, ; 76
	i32 302, ; 77
	i32 287, ; 78
	i32 60, ; 79
	i32 178, ; 80
	i32 51, ; 81
	i32 103, ; 82
	i32 114, ; 83
	i32 40, ; 84
	i32 278, ; 85
	i32 276, ; 86
	i32 120, ; 87
	i32 313, ; 88
	i32 52, ; 89
	i32 44, ; 90
	i32 119, ; 91
	i32 229, ; 92
	i32 235, ; 93
	i32 81, ; 94
	i32 136, ; 95
	i32 272, ; 96
	i32 216, ; 97
	i32 8, ; 98
	i32 73, ; 99
	i32 293, ; 100
	i32 155, ; 101
	i32 289, ; 102
	i32 154, ; 103
	i32 92, ; 104
	i32 284, ; 105
	i32 45, ; 106
	i32 308, ; 107
	i32 296, ; 108
	i32 288, ; 109
	i32 109, ; 110
	i32 0, ; 111
	i32 129, ; 112
	i32 25, ; 113
	i32 206, ; 114
	i32 189, ; 115
	i32 72, ; 116
	i32 55, ; 117
	i32 46, ; 118
	i32 181, ; 119
	i32 230, ; 120
	i32 22, ; 121
	i32 244, ; 122
	i32 194, ; 123
	i32 86, ; 124
	i32 43, ; 125
	i32 160, ; 126
	i32 71, ; 127
	i32 258, ; 128
	i32 292, ; 129
	i32 3, ; 130
	i32 42, ; 131
	i32 63, ; 132
	i32 16, ; 133
	i32 53, ; 134
	i32 200, ; 135
	i32 320, ; 136
	i32 283, ; 137
	i32 198, ; 138
	i32 105, ; 139
	i32 288, ; 140
	i32 279, ; 141
	i32 241, ; 142
	i32 34, ; 143
	i32 158, ; 144
	i32 85, ; 145
	i32 32, ; 146
	i32 12, ; 147
	i32 324, ; 148
	i32 51, ; 149
	i32 298, ; 150
	i32 56, ; 151
	i32 262, ; 152
	i32 36, ; 153
	i32 204, ; 154
	i32 177, ; 155
	i32 295, ; 156
	i32 280, ; 157
	i32 214, ; 158
	i32 35, ; 159
	i32 58, ; 160
	i32 248, ; 161
	i32 173, ; 162
	i32 17, ; 163
	i32 285, ; 164
	i32 164, ; 165
	i32 247, ; 166
	i32 180, ; 167
	i32 275, ; 168
	i32 201, ; 169
	i32 153, ; 170
	i32 271, ; 171
	i32 256, ; 172
	i32 299, ; 173
	i32 291, ; 174
	i32 190, ; 175
	i32 312, ; 176
	i32 216, ; 177
	i32 29, ; 178
	i32 52, ; 179
	i32 310, ; 180
	i32 276, ; 181
	i32 5, ; 182
	i32 281, ; 183
	i32 266, ; 184
	i32 270, ; 185
	i32 291, ; 186
	i32 221, ; 187
	i32 289, ; 188
	i32 213, ; 189
	i32 232, ; 190
	i32 85, ; 191
	i32 196, ; 192
	i32 275, ; 193
	i32 61, ; 194
	i32 112, ; 195
	i32 57, ; 196
	i32 262, ; 197
	i32 99, ; 198
	i32 253, ; 199
	i32 19, ; 200
	i32 225, ; 201
	i32 282, ; 202
	i32 111, ; 203
	i32 101, ; 204
	i32 102, ; 205
	i32 104, ; 206
	i32 279, ; 207
	i32 71, ; 208
	i32 38, ; 209
	i32 32, ; 210
	i32 103, ; 211
	i32 73, ; 212
	i32 9, ; 213
	i32 123, ; 214
	i32 46, ; 215
	i32 215, ; 216
	i32 182, ; 217
	i32 9, ; 218
	i32 196, ; 219
	i32 43, ; 220
	i32 4, ; 221
	i32 263, ; 222
	i32 302, ; 223
	i32 297, ; 224
	i32 31, ; 225
	i32 138, ; 226
	i32 92, ; 227
	i32 93, ; 228
	i32 317, ; 229
	i32 300, ; 230
	i32 49, ; 231
	i32 141, ; 232
	i32 112, ; 233
	i32 140, ; 234
	i32 318, ; 235
	i32 231, ; 236
	i32 325, ; 237
	i32 115, ; 238
	i32 280, ; 239
	i32 157, ; 240
	i32 76, ; 241
	i32 79, ; 242
	i32 251, ; 243
	i32 37, ; 244
	i32 274, ; 245
	i32 235, ; 246
	i32 228, ; 247
	i32 64, ; 248
	i32 138, ; 249
	i32 15, ; 250
	i32 116, ; 251
	i32 268, ; 252
	i32 277, ; 253
	i32 223, ; 254
	i32 48, ; 255
	i32 70, ; 256
	i32 80, ; 257
	i32 126, ; 258
	i32 94, ; 259
	i32 121, ; 260
	i32 286, ; 261
	i32 203, ; 262
	i32 26, ; 263
	i32 244, ; 264
	i32 97, ; 265
	i32 28, ; 266
	i32 219, ; 267
	i32 315, ; 268
	i32 149, ; 269
	i32 169, ; 270
	i32 4, ; 271
	i32 98, ; 272
	i32 33, ; 273
	i32 193, ; 274
	i32 93, ; 275
	i32 267, ; 276
	i32 178, ; 277
	i32 21, ; 278
	i32 41, ; 279
	i32 170, ; 280
	i32 237, ; 281
	i32 251, ; 282
	i32 310, ; 283
	i32 285, ; 284
	i32 277, ; 285
	i32 257, ; 286
	i32 2, ; 287
	i32 304, ; 288
	i32 134, ; 289
	i32 111, ; 290
	i32 179, ; 291
	i32 321, ; 292
	i32 206, ; 293
	i32 189, ; 294
	i32 58, ; 295
	i32 95, ; 296
	i32 39, ; 297
	i32 217, ; 298
	i32 25, ; 299
	i32 94, ; 300
	i32 89, ; 301
	i32 99, ; 302
	i32 10, ; 303
	i32 87, ; 304
	i32 100, ; 305
	i32 307, ; 306
	i32 264, ; 307
	i32 174, ; 308
	i32 286, ; 309
	i32 200, ; 310
	i32 208, ; 311
	i32 7, ; 312
	i32 303, ; 313
	i32 248, ; 314
	i32 292, ; 315
	i32 205, ; 316
	i32 306, ; 317
	i32 88, ; 318
	i32 243, ; 319
	i32 154, ; 320
	i32 33, ; 321
	i32 116, ; 322
	i32 82, ; 323
	i32 197, ; 324
	i32 204, ; 325
	i32 20, ; 326
	i32 11, ; 327
	i32 162, ; 328
	i32 3, ; 329
	i32 308, ; 330
	i32 186, ; 331
	i32 315, ; 332
	i32 181, ; 333
	i32 179, ; 334
	i32 84, ; 335
	i32 290, ; 336
	i32 64, ; 337
	i32 191, ; 338
	i32 271, ; 339
	i32 143, ; 340
	i32 202, ; 341
	i32 252, ; 342
	i32 157, ; 343
	i32 41, ; 344
	i32 117, ; 345
	i32 175, ; 346
	i32 207, ; 347
	i32 300, ; 348
	i32 260, ; 349
	i32 319, ; 350
	i32 131, ; 351
	i32 75, ; 352
	i32 190, ; 353
	i32 66, ; 354
	i32 172, ; 355
	i32 211, ; 356
	i32 143, ; 357
	i32 106, ; 358
	i32 151, ; 359
	i32 70, ; 360
	i32 156, ; 361
	i32 320, ; 362
	i32 174, ; 363
	i32 121, ; 364
	i32 127, ; 365
	i32 152, ; 366
	i32 234, ; 367
	i32 141, ; 368
	i32 311, ; 369
	i32 221, ; 370
	i32 20, ; 371
	i32 14, ; 372
	i32 135, ; 373
	i32 75, ; 374
	i32 59, ; 375
	i32 224, ; 376
	i32 167, ; 377
	i32 168, ; 378
	i32 191, ; 379
	i32 184, ; 380
	i32 15, ; 381
	i32 74, ; 382
	i32 6, ; 383
	i32 23, ; 384
	i32 246, ; 385
	i32 192, ; 386
	i32 317, ; 387
	i32 205, ; 388
	i32 91, ; 389
	i32 1, ; 390
	i32 136, ; 391
	i32 247, ; 392
	i32 270, ; 393
	i32 134, ; 394
	i32 69, ; 395
	i32 146, ; 396
	i32 290, ; 397
	i32 238, ; 398
	i32 180, ; 399
	i32 88, ; 400
	i32 96, ; 401
	i32 228, ; 402
	i32 233, ; 403
	i32 201, ; 404
	i32 31, ; 405
	i32 45, ; 406
	i32 242, ; 407
	i32 207, ; 408
	i32 109, ; 409
	i32 158, ; 410
	i32 35, ; 411
	i32 22, ; 412
	i32 114, ; 413
	i32 57, ; 414
	i32 268, ; 415
	i32 199, ; 416
	i32 144, ; 417
	i32 118, ; 418
	i32 120, ; 419
	i32 110, ; 420
	i32 209, ; 421
	i32 139, ; 422
	i32 215, ; 423
	i32 54, ; 424
	i32 105, ; 425
	i32 185, ; 426
	i32 186, ; 427
	i32 133, ; 428
	i32 284, ; 429
	i32 273, ; 430
	i32 261, ; 431
	i32 238, ; 432
	i32 198, ; 433
	i32 188, ; 434
	i32 321, ; 435
	i32 159, ; 436
	i32 298, ; 437
	i32 225, ; 438
	i32 163, ; 439
	i32 132, ; 440
	i32 261, ; 441
	i32 161, ; 442
	i32 311, ; 443
	i32 249, ; 444
	i32 140, ; 445
	i32 273, ; 446
	i32 269, ; 447
	i32 297, ; 448
	i32 169, ; 449
	i32 187, ; 450
	i32 210, ; 451
	i32 278, ; 452
	i32 40, ; 453
	i32 316, ; 454
	i32 236, ; 455
	i32 81, ; 456
	i32 56, ; 457
	i32 37, ; 458
	i32 97, ; 459
	i32 166, ; 460
	i32 172, ; 461
	i32 274, ; 462
	i32 82, ; 463
	i32 212, ; 464
	i32 98, ; 465
	i32 30, ; 466
	i32 159, ; 467
	i32 18, ; 468
	i32 281, ; 469
	i32 127, ; 470
	i32 119, ; 471
	i32 232, ; 472
	i32 264, ; 473
	i32 245, ; 474
	i32 266, ; 475
	i32 165, ; 476
	i32 240, ; 477
	i32 192, ; 478
	i32 326, ; 479
	i32 263, ; 480
	i32 254, ; 481
	i32 170, ; 482
	i32 16, ; 483
	i32 144, ; 484
	i32 304, ; 485
	i32 125, ; 486
	i32 118, ; 487
	i32 38, ; 488
	i32 115, ; 489
	i32 47, ; 490
	i32 142, ; 491
	i32 117, ; 492
	i32 199, ; 493
	i32 34, ; 494
	i32 173, ; 495
	i32 95, ; 496
	i32 53, ; 497
	i32 255, ; 498
	i32 197, ; 499
	i32 129, ; 500
	i32 153, ; 501
	i32 24, ; 502
	i32 161, ; 503
	i32 231, ; 504
	i32 148, ; 505
	i32 104, ; 506
	i32 89, ; 507
	i32 219, ; 508
	i32 60, ; 509
	i32 142, ; 510
	i32 100, ; 511
	i32 5, ; 512
	i32 13, ; 513
	i32 122, ; 514
	i32 135, ; 515
	i32 28, ; 516
	i32 72, ; 517
	i32 229, ; 518
	i32 24, ; 519
	i32 195, ; 520
	i32 217, ; 521
	i32 259, ; 522
	i32 256, ; 523
	i32 137, ; 524
	i32 210, ; 525
	i32 226, ; 526
	i32 168, ; 527
	i32 260, ; 528
	i32 101, ; 529
	i32 203, ; 530
	i32 123, ; 531
	i32 230, ; 532
	i32 176, ; 533
	i32 163, ; 534
	i32 167, ; 535
	i32 233, ; 536
	i32 39, ; 537
	i32 183, ; 538
	i32 303, ; 539
	i32 17, ; 540
	i32 171, ; 541
	i32 316, ; 542
	i32 137, ; 543
	i32 150, ; 544
	i32 222, ; 545
	i32 155, ; 546
	i32 130, ; 547
	i32 19, ; 548
	i32 65, ; 549
	i32 322, ; 550
	i32 147, ; 551
	i32 47, ; 552
	i32 296, ; 553
	i32 208, ; 554
	i32 79, ; 555
	i32 61, ; 556
	i32 295, ; 557
	i32 106, ; 558
	i32 258, ; 559
	i32 212, ; 560
	i32 49, ; 561
	i32 243, ; 562
	i32 255, ; 563
	i32 14, ; 564
	i32 313, ; 565
	i32 175, ; 566
	i32 68, ; 567
	i32 301, ; 568
	i32 171, ; 569
	i32 218, ; 570
	i32 222, ; 571
	i32 309, ; 572
	i32 325, ; 573
	i32 78, ; 574
	i32 227, ; 575
	i32 108, ; 576
	i32 211, ; 577
	i32 254, ; 578
	i32 67, ; 579
	i32 63, ; 580
	i32 27, ; 581
	i32 160, ; 582
	i32 0, ; 583
	i32 220, ; 584
	i32 10, ; 585
	i32 183, ; 586
	i32 11, ; 587
	i32 78, ; 588
	i32 253, ; 589
	i32 126, ; 590
	i32 83, ; 591
	i32 177, ; 592
	i32 66, ; 593
	i32 107, ; 594
	i32 65, ; 595
	i32 128, ; 596
	i32 122, ; 597
	i32 77, ; 598
	i32 269, ; 599
	i32 259, ; 600
	i32 324, ; 601
	i32 8, ; 602
	i32 226, ; 603
	i32 2, ; 604
	i32 44, ; 605
	i32 272, ; 606
	i32 156, ; 607
	i32 128, ; 608
	i32 257, ; 609
	i32 23, ; 610
	i32 133, ; 611
	i32 214, ; 612
	i32 245, ; 613
	i32 319, ; 614
	i32 301, ; 615
	i32 29, ; 616
	i32 213, ; 617
	i32 62, ; 618
	i32 185, ; 619
	i32 90, ; 620
	i32 87, ; 621
	i32 305, ; 622
	i32 148, ; 623
	i32 187, ; 624
	i32 36, ; 625
	i32 86, ; 626
	i32 234, ; 627
	i32 314, ; 628
	i32 312, ; 629
	i32 309, ; 630
	i32 176, ; 631
	i32 50, ; 632
	i32 6, ; 633
	i32 90, ; 634
	i32 21, ; 635
	i32 162, ; 636
	i32 96, ; 637
	i32 50, ; 638
	i32 202, ; 639
	i32 113, ; 640
	i32 250, ; 641
	i32 130, ; 642
	i32 193, ; 643
	i32 76, ; 644
	i32 27, ; 645
	i32 314, ; 646
	i32 227, ; 647
	i32 249, ; 648
	i32 7, ; 649
	i32 184, ; 650
	i32 110, ; 651
	i32 250, ; 652
	i32 236 ; 653
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 0d97e20b84d8e87c3502469ee395805907905fe3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
