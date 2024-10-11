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

@assembly_image_cache = dso_local local_unnamed_addr global [148 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [296 x i32] [
	i32 38948123, ; 0: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 0
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 58
	i32 42244203, ; 2: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 9
	i32 42639949, ; 3: System.Threading.Thread => 0x28aa24d => 137
	i32 67008169, ; 4: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 5: Microsoft.Maui.Graphics.dll => 0x44bb714 => 57
	i32 83839681, ; 6: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 17
	i32 117431740, ; 7: System.Runtime.InteropServices => 0x6ffddbc => 126
	i32 136584136, ; 8: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 32
	i32 140062828, ; 9: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 25
	i32 165246403, ; 10: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 70
	i32 182336117, ; 11: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 88
	i32 205061960, ; 12: System.ComponentModel => 0xc38ff48 => 101
	i32 220171995, ; 13: System.Diagnostics.Debug => 0xd1f8edb => 103
	i32 230752869, ; 14: Microsoft.CSharp.dll => 0xdc10265 => 95
	i32 231814094, ; 15: System.Globalization => 0xdd133ce => 106
	i32 254259026, ; 16: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 35
	i32 317674968, ; 17: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 18: Xamarin.AndroidX.Activity.dll => 0x13031348 => 66
	i32 321963286, ; 19: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 8
	i32 342366114, ; 20: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 77
	i32 379916513, ; 21: System.Threading.Thread.dll => 0x16a510e1 => 137
	i32 385762202, ; 22: System.Memory.dll => 0x16fe439a => 113
	i32 395744057, ; 23: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 409257351, ; 24: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 28
	i32 442565967, ; 25: System.Collections => 0x1a61054f => 98
	i32 450948140, ; 26: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 76
	i32 459347974, ; 27: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 128
	i32 465846621, ; 28: mscorlib => 0x1bc4415d => 143
	i32 469710990, ; 29: System.dll => 0x1bff388e => 142
	i32 489220957, ; 30: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 6
	i32 498788369, ; 31: System.ObjectModel => 0x1dbae811 => 118
	i32 513247710, ; 32: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 51
	i32 538707440, ; 33: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 27
	i32 539058512, ; 34: Microsoft.Extensions.Logging => 0x20216150 => 48
	i32 545304856, ; 35: System.Runtime.Extensions => 0x2080b118 => 125
	i32 571435654, ; 36: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 45
	i32 627609679, ; 37: Xamarin.AndroidX.CustomView => 0x2568904f => 74
	i32 627931235, ; 38: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 662205335, ; 39: System.Text.Encodings.Web.dll => 0x27787397 => 133
	i32 672442732, ; 40: System.Collections.Concurrent => 0x2814a96c => 96
	i32 690569205, ; 41: System.Xml.Linq.dll => 0x29293ff5 => 139
	i32 713568204, ; 42: MauiApp1.dll => 0x2a882fcc => 94
	i32 722857257, ; 43: System.Runtime.Loader.dll => 0x2b15ed29 => 127
	i32 748832960, ; 44: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 62
	i32 759454413, ; 45: System.Net.Requests => 0x2d445acd => 116
	i32 775507847, ; 46: System.IO.Compression => 0x2e394f87 => 108
	i32 777317022, ; 47: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 48: Microsoft.Extensions.Options => 0x2f0980eb => 50
	i32 804008546, ; 49: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 38
	i32 823281589, ; 50: System.Private.Uri.dll => 0x311247b5 => 119
	i32 830298997, ; 51: System.IO.Compression.Brotli => 0x317d5b75 => 107
	i32 869139383, ; 52: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 10
	i32 877678880, ; 53: System.Globalization.dll => 0x34505120 => 106
	i32 880668424, ; 54: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 24
	i32 904024072, ; 55: System.ComponentModel.Primitives.dll => 0x35e25008 => 99
	i32 918734561, ; 56: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 21
	i32 955402788, ; 57: Newtonsoft.Json => 0x38f24a24 => 58
	i32 961460050, ; 58: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 14
	i32 967690846, ; 59: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 77
	i32 975874589, ; 60: System.Xml.XDocument => 0x3a2aaa1d => 141
	i32 990727110, ; 61: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 23
	i32 992768348, ; 62: System.Collections.dll => 0x3b2c715c => 98
	i32 999186168, ; 63: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 47
	i32 1012816738, ; 64: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 87
	i32 1028951442, ; 65: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 42
	i32 1035644815, ; 66: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 67
	i32 1043950537, ; 67: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 4
	i32 1044663988, ; 68: System.Linq.Expressions.dll => 0x3e444eb4 => 111
	i32 1052210849, ; 69: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 79
	i32 1082857460, ; 70: System.ComponentModel.TypeConverter => 0x408b17f4 => 100
	i32 1084122840, ; 71: Xamarin.Kotlin.StdLib => 0x409e66d8 => 92
	i32 1098259244, ; 72: System => 0x41761b2c => 142
	i32 1108272742, ; 73: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 26
	i32 1117529484, ; 74: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 20
	i32 1118262833, ; 75: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 76: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1173126369, ; 77: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 43
	i32 1178241025, ; 78: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 84
	i32 1260983243, ; 79: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1292207520, ; 80: SQLitePCLRaw.core.dll => 0x4d0585a0 => 63
	i32 1293217323, ; 81: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 75
	i32 1308624726, ; 82: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 11
	i32 1324164729, ; 83: System.Linq => 0x4eed2679 => 112
	i32 1336711579, ; 84: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 31
	i32 1364015309, ; 85: System.IO => 0x514d38cd => 110
	i32 1373134921, ; 86: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 87: Xamarin.AndroidX.SavedState => 0x52114ed3 => 87
	i32 1379779777, ; 88: System.Resources.ResourceManager => 0x523dc4c1 => 124
	i32 1406073936, ; 89: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 71
	i32 1430672901, ; 90: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1454105418, ; 91: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 44
	i32 1454233054, ; 92: SQLitePCLRaw.lib.e_sqlite3.dll => 0x56add5de => 64
	i32 1457743152, ; 93: System.Runtime.Extensions.dll => 0x56e36530 => 125
	i32 1461004990, ; 94: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1462112819, ; 95: System.IO.Compression.dll => 0x57261233 => 108
	i32 1469204771, ; 96: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 68
	i32 1470490898, ; 97: Microsoft.Extensions.Primitives => 0x57a5e912 => 51
	i32 1480492111, ; 98: System.IO.Compression.Brotli.dll => 0x583e844f => 107
	i32 1521091094, ; 99: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 47
	i32 1526286932, ; 100: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 30
	i32 1543031311, ; 101: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 135
	i32 1546581739, ; 102: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 38
	i32 1550322496, ; 103: System.Reflection.Extensions.dll => 0x5c680b40 => 122
	i32 1604451928, ; 104: SQLiteNetExtensions => 0x5fa1fe58 => 60
	i32 1622152042, ; 105: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 81
	i32 1622358360, ; 106: System.Dynamic.Runtime => 0x60b33958 => 105
	i32 1624863272, ; 107: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 90
	i32 1636350590, ; 108: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 73
	i32 1639515021, ; 109: System.Net.Http.dll => 0x61b9038d => 114
	i32 1639986890, ; 110: System.Text.RegularExpressions => 0x61c036ca => 135
	i32 1654881142, ; 111: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 37
	i32 1657153582, ; 112: System.Runtime => 0x62c6282e => 129
	i32 1658251792, ; 113: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 91
	i32 1666713512, ; 114: SQLiteNetExtensions.dll => 0x635807a8 => 60
	i32 1677501392, ; 115: System.Net.Primitives.dll => 0x63fca3d0 => 115
	i32 1679769178, ; 116: System.Security.Cryptography => 0x641f3e5a => 130
	i32 1701541528, ; 117: System.Diagnostics.Debug.dll => 0x656b7698 => 103
	i32 1726116996, ; 118: System.Reflection.dll => 0x66e27484 => 123
	i32 1729485958, ; 119: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 69
	i32 1743415430, ; 120: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1760259689, ; 121: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 36
	i32 1765942094, ; 122: System.Reflection.Extensions => 0x6942234e => 122
	i32 1766324549, ; 123: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 88
	i32 1770582343, ; 124: Microsoft.Extensions.Logging.dll => 0x6988f147 => 48
	i32 1780572499, ; 125: Mono.Android.Runtime.dll => 0x6a216153 => 146
	i32 1782862114, ; 126: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 127: Xamarin.AndroidX.Fragment => 0x6a96652d => 76
	i32 1793755602, ; 128: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 129: Xamarin.AndroidX.Loader => 0x6bcd3296 => 81
	i32 1813058853, ; 130: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 92
	i32 1813201214, ; 131: Xamarin.Google.Android.Material => 0x6c13413e => 91
	i32 1818569960, ; 132: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 85
	i32 1824175904, ; 133: System.Text.Encoding.Extensions => 0x6cbab720 => 131
	i32 1828688058, ; 134: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 49
	i32 1853025655, ; 135: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 136: System.Linq.Expressions => 0x6ec71a65 => 111
	i32 1875935024, ; 137: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1893218855, ; 138: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 2
	i32 1900610850, ; 139: System.Resources.ResourceManager.dll => 0x71490522 => 124
	i32 1910275211, ; 140: System.Collections.NonGeneric.dll => 0x71dc7c8b => 97
	i32 1939592360, ; 141: System.Private.Xml.Linq => 0x739bd4a8 => 120
	i32 1953182387, ; 142: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 13
	i32 1968388702, ; 143: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 39
	i32 2003115576, ; 144: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 145: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 79
	i32 2019533804, ; 146: SQLitePCLRaw.lib.e_sqlite3 => 0x785fa3ec => 64
	i32 2045470958, ; 147: System.Private.Xml => 0x79eb68ee => 121
	i32 2055257422, ; 148: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 78
	i32 2066184531, ; 149: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2072397586, ; 150: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 46
	i32 2079903147, ; 151: System.Runtime.dll => 0x7bf8cdab => 129
	i32 2090596640, ; 152: System.Numerics.Vectors => 0x7c9bf920 => 117
	i32 2103459038, ; 153: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 65
	i32 2127167465, ; 154: System.Console => 0x7ec9ffe9 => 102
	i32 2159891885, ; 155: Microsoft.Maui => 0x80bd55ad => 55
	i32 2169148018, ; 156: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 157: Microsoft.Extensions.Options.dll => 0x820d22b3 => 50
	i32 2192057212, ; 158: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 49
	i32 2193016926, ; 159: System.ObjectModel.dll => 0x82b6c85e => 118
	i32 2201107256, ; 160: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 93
	i32 2201231467, ; 161: System.Net.Http => 0x8334206b => 114
	i32 2207618523, ; 162: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 163: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 40
	i32 2279755925, ; 164: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 86
	i32 2303942373, ; 165: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 166: System.Private.CoreLib.dll => 0x896b7878 => 144
	i32 2353062107, ; 167: System.Net.Primitives => 0x8c40e0db => 115
	i32 2366048013, ; 168: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 12
	i32 2368005991, ; 169: System.Xml.ReaderWriter.dll => 0x8d24e767 => 140
	i32 2371007202, ; 170: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 39
	i32 2395872292, ; 171: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2411328690, ; 172: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 35
	i32 2427813419, ; 173: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 174: System.Console.dll => 0x912896e5 => 102
	i32 2442556106, ; 175: Microsoft.JSInterop.dll => 0x919672ca => 52
	i32 2454642406, ; 176: System.Text.Encoding.dll => 0x924edee6 => 132
	i32 2465273461, ; 177: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 62
	i32 2475788418, ; 178: Java.Interop.dll => 0x93918882 => 145
	i32 2480646305, ; 179: Microsoft.Maui.Controls => 0x93dba8a1 => 53
	i32 2503351294, ; 180: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 16
	i32 2550873716, ; 181: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2562349572, ; 182: Microsoft.CSharp => 0x98ba5a04 => 95
	i32 2570120770, ; 183: System.Text.Encodings.Web => 0x9930ee42 => 133
	i32 2576534780, ; 184: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 15
	i32 2585220780, ; 185: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 131
	i32 2592341985, ; 186: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 43
	i32 2593496499, ; 187: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 188: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 93
	i32 2617129537, ; 189: System.Private.Xml.dll => 0x9bfe3a41 => 121
	i32 2620871830, ; 190: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 73
	i32 2626831493, ; 191: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 192: System.Runtime.Loader => 0x9ec4cf01 => 127
	i32 2664396074, ; 193: System.Xml.XDocument.dll => 0x9ecf752a => 141
	i32 2692077919, ; 194: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 37
	i32 2693849962, ; 195: System.IO.dll => 0xa090e36a => 110
	i32 2715334215, ; 196: System.Threading.Tasks.dll => 0xa1d8b647 => 136
	i32 2732626843, ; 197: Xamarin.AndroidX.Activity => 0xa2e0939b => 66
	i32 2737747696, ; 198: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 68
	i32 2740698338, ; 199: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 1
	i32 2752995522, ; 200: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 201: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 54
	i32 2764765095, ; 202: Microsoft.Maui.dll => 0xa4caf7a7 => 55
	i32 2778768386, ; 203: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 89
	i32 2785988530, ; 204: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 205: Microsoft.Maui.Graphics => 0xa7008e0b => 57
	i32 2810250172, ; 206: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 71
	i32 2853208004, ; 207: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 89
	i32 2861189240, ; 208: Microsoft.Maui.Essentials => 0xaa8a4878 => 56
	i32 2892341533, ; 209: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 36
	i32 2900621748, ; 210: System.Dynamic.Runtime.dll => 0xace3f9b4 => 105
	i32 2901442782, ; 211: System.Reflection => 0xacf080de => 123
	i32 2905242038, ; 212: mscorlib.dll => 0xad2a79b6 => 143
	i32 2909740682, ; 213: System.Private.CoreLib => 0xad6f1e8a => 144
	i32 2911054922, ; 214: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 46
	i32 2916838712, ; 215: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 90
	i32 2919462931, ; 216: System.Numerics.Vectors.dll => 0xae037813 => 117
	i32 2959614098, ; 217: System.ComponentModel.dll => 0xb0682092 => 101
	i32 2978675010, ; 218: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 75
	i32 3017953105, ; 219: MauiApp1 => 0xb3e24f51 => 94
	i32 3038032645, ; 220: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3053864966, ; 221: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 7
	i32 3057625584, ; 222: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 82
	i32 3059408633, ; 223: Mono.Android.Runtime => 0xb65adef9 => 146
	i32 3059793426, ; 224: System.ComponentModel.Primitives => 0xb660be12 => 99
	i32 3075834255, ; 225: System.Threading.Tasks => 0xb755818f => 136
	i32 3178803400, ; 226: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 83
	i32 3220365878, ; 227: System.Threading => 0xbff2e236 => 138
	i32 3258312781, ; 228: Xamarin.AndroidX.CardView => 0xc235e84d => 69
	i32 3286872994, ; 229: SQLite-net.dll => 0xc3e9b3a2 => 59
	i32 3299363146, ; 230: System.Text.Encoding => 0xc4a8494a => 132
	i32 3305363605, ; 231: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 232: System.Net.Requests.dll => 0xc5b097e4 => 116
	i32 3317135071, ; 233: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 74
	i32 3346324047, ; 234: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 84
	i32 3357674450, ; 235: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 236: System.Text.Json => 0xc82afec1 => 134
	i32 3360279109, ; 237: SQLitePCLRaw.core => 0xc849ca45 => 63
	i32 3362522851, ; 238: Xamarin.AndroidX.Core => 0xc86c06e3 => 72
	i32 3366347497, ; 239: Java.Interop => 0xc8a662e9 => 145
	i32 3374999561, ; 240: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 86
	i32 3381016424, ; 241: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3406629867, ; 242: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 44
	i32 3428513518, ; 243: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 41
	i32 3458724246, ; 244: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 22
	i32 3471940407, ; 245: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 100
	i32 3476120550, ; 246: Mono.Android => 0xcf3163e6 => 147
	i32 3484440000, ; 247: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 248: System.Text.Json.dll => 0xcfbaacae => 134
	i32 3500000672, ; 249: Microsoft.JSInterop => 0xd09dc5a0 => 52
	i32 3509114376, ; 250: System.Xml.Linq => 0xd128d608 => 139
	i32 3543730307, ; 251: SQLitePCLRaw.batteries_green.dll => 0xd3390883 => 61
	i32 3580758918, ; 252: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3592228221, ; 253: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 33
	i32 3608519521, ; 254: System.Linq.dll => 0xd715a361 => 112
	i32 3641597786, ; 255: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 78
	i32 3641967938, ; 256: SQLitePCLRaw.batteries_green => 0xd9140542 => 61
	i32 3643446276, ; 257: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 258: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 83
	i32 3657292374, ; 259: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 40
	i32 3672681054, ; 260: Mono.Android.dll => 0xdae8aa5e => 147
	i32 3724971120, ; 261: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 82
	i32 3748608112, ; 262: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 104
	i32 3751619990, ; 263: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 3
	i32 3754567612, ; 264: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 65
	i32 3786282454, ; 265: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 70
	i32 3792276235, ; 266: System.Collections.NonGeneric => 0xe2098b0b => 97
	i32 3823082795, ; 267: System.Security.Cryptography.dll => 0xe3df9d2b => 130
	i32 3841636137, ; 268: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 42
	i32 3849253459, ; 269: System.Runtime.InteropServices.dll => 0xe56ef253 => 126
	i32 3876362041, ; 270: SQLite-net => 0xe70c9739 => 59
	i32 3896106733, ; 271: System.Collections.Concurrent.dll => 0xe839deed => 96
	i32 3896760992, ; 272: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 72
	i32 3920221145, ; 273: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 19
	i32 3928044579, ; 274: System.Xml.ReaderWriter => 0xea213423 => 140
	i32 3931092270, ; 275: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 85
	i32 3955647286, ; 276: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 67
	i32 4025784931, ; 277: System.Memory => 0xeff49a63 => 113
	i32 4046471985, ; 278: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 54
	i32 4068434129, ; 279: System.Private.Xml.Linq.dll => 0xf27f60d1 => 120
	i32 4073602200, ; 280: System.Threading.dll => 0xf2ce3c98 => 138
	i32 4091086043, ; 281: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 5
	i32 4094352644, ; 282: Microsoft.Maui.Essentials.dll => 0xf40add04 => 56
	i32 4100113165, ; 283: System.Private.Uri => 0xf462c30d => 119
	i32 4103439459, ; 284: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 29
	i32 4126470640, ; 285: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 41
	i32 4127667938, ; 286: System.IO.FileSystem.Watcher => 0xf60736e2 => 109
	i32 4150914736, ; 287: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4164802419, ; 288: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 109
	i32 4181436372, ; 289: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 128
	i32 4182413190, ; 290: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 80
	i32 4213026141, ; 291: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 104
	i32 4249188766, ; 292: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 18
	i32 4271975918, ; 293: Microsoft.Maui.Controls.dll => 0xfea12dee => 53
	i32 4292120959, ; 294: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 80
	i32 4294648842 ; 295: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 45
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [296 x i32] [
	i32 0, ; 0
	i32 58, ; 1
	i32 9, ; 2
	i32 137, ; 3
	i32 33, ; 4
	i32 57, ; 5
	i32 17, ; 6
	i32 126, ; 7
	i32 32, ; 8
	i32 25, ; 9
	i32 70, ; 10
	i32 88, ; 11
	i32 101, ; 12
	i32 103, ; 13
	i32 95, ; 14
	i32 106, ; 15
	i32 35, ; 16
	i32 30, ; 17
	i32 66, ; 18
	i32 8, ; 19
	i32 77, ; 20
	i32 137, ; 21
	i32 113, ; 22
	i32 34, ; 23
	i32 28, ; 24
	i32 98, ; 25
	i32 76, ; 26
	i32 128, ; 27
	i32 143, ; 28
	i32 142, ; 29
	i32 6, ; 30
	i32 118, ; 31
	i32 51, ; 32
	i32 27, ; 33
	i32 48, ; 34
	i32 125, ; 35
	i32 45, ; 36
	i32 74, ; 37
	i32 19, ; 38
	i32 133, ; 39
	i32 96, ; 40
	i32 139, ; 41
	i32 94, ; 42
	i32 127, ; 43
	i32 62, ; 44
	i32 116, ; 45
	i32 108, ; 46
	i32 25, ; 47
	i32 50, ; 48
	i32 38, ; 49
	i32 119, ; 50
	i32 107, ; 51
	i32 10, ; 52
	i32 106, ; 53
	i32 24, ; 54
	i32 99, ; 55
	i32 21, ; 56
	i32 58, ; 57
	i32 14, ; 58
	i32 77, ; 59
	i32 141, ; 60
	i32 23, ; 61
	i32 98, ; 62
	i32 47, ; 63
	i32 87, ; 64
	i32 42, ; 65
	i32 67, ; 66
	i32 4, ; 67
	i32 111, ; 68
	i32 79, ; 69
	i32 100, ; 70
	i32 92, ; 71
	i32 142, ; 72
	i32 26, ; 73
	i32 20, ; 74
	i32 16, ; 75
	i32 22, ; 76
	i32 43, ; 77
	i32 84, ; 78
	i32 2, ; 79
	i32 63, ; 80
	i32 75, ; 81
	i32 11, ; 82
	i32 112, ; 83
	i32 31, ; 84
	i32 110, ; 85
	i32 32, ; 86
	i32 87, ; 87
	i32 124, ; 88
	i32 71, ; 89
	i32 0, ; 90
	i32 44, ; 91
	i32 64, ; 92
	i32 125, ; 93
	i32 6, ; 94
	i32 108, ; 95
	i32 68, ; 96
	i32 51, ; 97
	i32 107, ; 98
	i32 47, ; 99
	i32 30, ; 100
	i32 135, ; 101
	i32 38, ; 102
	i32 122, ; 103
	i32 60, ; 104
	i32 81, ; 105
	i32 105, ; 106
	i32 90, ; 107
	i32 73, ; 108
	i32 114, ; 109
	i32 135, ; 110
	i32 37, ; 111
	i32 129, ; 112
	i32 91, ; 113
	i32 60, ; 114
	i32 115, ; 115
	i32 130, ; 116
	i32 103, ; 117
	i32 123, ; 118
	i32 69, ; 119
	i32 1, ; 120
	i32 36, ; 121
	i32 122, ; 122
	i32 88, ; 123
	i32 48, ; 124
	i32 146, ; 125
	i32 17, ; 126
	i32 76, ; 127
	i32 9, ; 128
	i32 81, ; 129
	i32 92, ; 130
	i32 91, ; 131
	i32 85, ; 132
	i32 131, ; 133
	i32 49, ; 134
	i32 26, ; 135
	i32 111, ; 136
	i32 8, ; 137
	i32 2, ; 138
	i32 124, ; 139
	i32 97, ; 140
	i32 120, ; 141
	i32 13, ; 142
	i32 39, ; 143
	i32 5, ; 144
	i32 79, ; 145
	i32 64, ; 146
	i32 121, ; 147
	i32 78, ; 148
	i32 4, ; 149
	i32 46, ; 150
	i32 129, ; 151
	i32 117, ; 152
	i32 65, ; 153
	i32 102, ; 154
	i32 55, ; 155
	i32 12, ; 156
	i32 50, ; 157
	i32 49, ; 158
	i32 118, ; 159
	i32 93, ; 160
	i32 114, ; 161
	i32 14, ; 162
	i32 40, ; 163
	i32 86, ; 164
	i32 18, ; 165
	i32 144, ; 166
	i32 115, ; 167
	i32 12, ; 168
	i32 140, ; 169
	i32 39, ; 170
	i32 13, ; 171
	i32 35, ; 172
	i32 10, ; 173
	i32 102, ; 174
	i32 52, ; 175
	i32 132, ; 176
	i32 62, ; 177
	i32 145, ; 178
	i32 53, ; 179
	i32 16, ; 180
	i32 11, ; 181
	i32 95, ; 182
	i32 133, ; 183
	i32 15, ; 184
	i32 131, ; 185
	i32 43, ; 186
	i32 20, ; 187
	i32 93, ; 188
	i32 121, ; 189
	i32 73, ; 190
	i32 15, ; 191
	i32 127, ; 192
	i32 141, ; 193
	i32 37, ; 194
	i32 110, ; 195
	i32 136, ; 196
	i32 66, ; 197
	i32 68, ; 198
	i32 1, ; 199
	i32 21, ; 200
	i32 54, ; 201
	i32 55, ; 202
	i32 89, ; 203
	i32 27, ; 204
	i32 57, ; 205
	i32 71, ; 206
	i32 89, ; 207
	i32 56, ; 208
	i32 36, ; 209
	i32 105, ; 210
	i32 123, ; 211
	i32 143, ; 212
	i32 144, ; 213
	i32 46, ; 214
	i32 90, ; 215
	i32 117, ; 216
	i32 101, ; 217
	i32 75, ; 218
	i32 94, ; 219
	i32 34, ; 220
	i32 7, ; 221
	i32 82, ; 222
	i32 146, ; 223
	i32 99, ; 224
	i32 136, ; 225
	i32 83, ; 226
	i32 138, ; 227
	i32 69, ; 228
	i32 59, ; 229
	i32 132, ; 230
	i32 7, ; 231
	i32 116, ; 232
	i32 74, ; 233
	i32 84, ; 234
	i32 24, ; 235
	i32 134, ; 236
	i32 63, ; 237
	i32 72, ; 238
	i32 145, ; 239
	i32 86, ; 240
	i32 3, ; 241
	i32 44, ; 242
	i32 41, ; 243
	i32 22, ; 244
	i32 100, ; 245
	i32 147, ; 246
	i32 23, ; 247
	i32 134, ; 248
	i32 52, ; 249
	i32 139, ; 250
	i32 61, ; 251
	i32 31, ; 252
	i32 33, ; 253
	i32 112, ; 254
	i32 78, ; 255
	i32 61, ; 256
	i32 28, ; 257
	i32 83, ; 258
	i32 40, ; 259
	i32 147, ; 260
	i32 82, ; 261
	i32 104, ; 262
	i32 3, ; 263
	i32 65, ; 264
	i32 70, ; 265
	i32 97, ; 266
	i32 130, ; 267
	i32 42, ; 268
	i32 126, ; 269
	i32 59, ; 270
	i32 96, ; 271
	i32 72, ; 272
	i32 19, ; 273
	i32 140, ; 274
	i32 85, ; 275
	i32 67, ; 276
	i32 113, ; 277
	i32 54, ; 278
	i32 120, ; 279
	i32 138, ; 280
	i32 5, ; 281
	i32 56, ; 282
	i32 119, ; 283
	i32 29, ; 284
	i32 41, ; 285
	i32 109, ; 286
	i32 29, ; 287
	i32 109, ; 288
	i32 128, ; 289
	i32 80, ; 290
	i32 104, ; 291
	i32 18, ; 292
	i32 53, ; 293
	i32 80, ; 294
	i32 45 ; 295
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

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
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

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
