.class public Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;,
        Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$SemDisplayStatusListener;
    }
.end annotation


# static fields
.field public static final ACTION_WIFI_DISPLAY_STATUS_CHANGED:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field public static final CONN_STATE_NORMAL:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final EXTRA_WIFI_DISPLAY_STATUS:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

.field private static sCheckExceptionalCase:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

.field private static sCheckScreenSharingSupported:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

.field private static sConnectWifiDisplayWithMode:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sEnumClass:Ljava/lang/Class;

.field private static sGetScreenSharingStatus:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

.field private static sGetWifiDisplayStatus:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sScanWifiDisplays:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSemCheckExceptionalCase:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

.field private static sSemCheckScreenSharingSupported:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

.field private static sSemConnectWifiDisplay:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSemDisplayStatusListenerClass:Ljava/lang/Class;

.field private static sSemGetScreenSharingStatus:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

.field private static sSemGetWifiDisplayStatus:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sSemRegisterDisplayStatusListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSemSetActivityState:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSemStartScanWifiDisplays:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSemStopScanWifiDisplays:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSemUnregisterDisplayStatusListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSetActivityState:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sStopScanWifiDisplays:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const-class v1, Landroid/os/Handler;

    const-class v2, Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    const-string v0, "android.hardware.display.DisplayManager$SemWifiDisplayAppState"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sEnumClass:Ljava/lang/Class;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v3, "SEM_ACTION_WIFI_DISPLAY_STATUS_CHANGED"

    invoke-direct {v0, v2, v3}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->ACTION_WIFI_DISPLAY_STATUS_CHANGED:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v3, "SEM_EXTRA_WIFI_DISPLAY_STATUS"

    invoke-direct {v0, v2, v3}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->EXTRA_WIFI_DISPLAY_STATUS:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v3, "SEM_CONNECT_STATE_NORMAL"

    invoke-direct {v0, v2, v3}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->CONN_STATE_NORMAL:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v0, "android.hardware.display.SemDeviceStatusListener"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemDisplayStatusListenerClass:Ljava/lang/Class;

    new-instance v3, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const-string v4, "semRegisterDeviceStatusListener"

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v3, v2, v4, v0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v3, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemRegisterDisplayStatusListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemDisplayStatusListenerClass:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v3, "semUnregisterDeviceStatusListener"

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemUnregisterDisplayStatusListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    goto :goto_0

    :cond_0
    const-string v0, "android.hardware.display.DisplayManager$WfdAppState"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sEnumClass:Ljava/lang/Class;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v3, "ACTION_WIFI_DISPLAY_STATUS_CHANGED"

    invoke-direct {v0, v2, v3}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->ACTION_WIFI_DISPLAY_STATUS_CHANGED:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    const-string v3, "EXTRA_WIFI_DISPLAY_STATUS"

    invoke-direct {v0, v2, v3}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->EXTRA_WIFI_DISPLAY_STATUS:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v3, "CONN_STATE_NORMAL"

    invoke-direct {v0, v2, v3}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->CONN_STATE_NORMAL:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v0, "android.hardware.display.SemDisplayStatusListener"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemDisplayStatusListenerClass:Ljava/lang/Class;

    new-instance v3, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const-string v4, "semRegisterDisplayStatusListener"

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v3, v2, v4, v0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v3, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemRegisterDisplayStatusListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemDisplayStatusListenerClass:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v3, "semUnregisterDisplayStatusListener"

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemUnregisterDisplayStatusListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    :goto_0
    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const-string v1, "scanWifiDisplays"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-direct {v0, v2, v1, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sScanWifiDisplays:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const-string v1, "semStartScanWifiDisplays"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-direct {v0, v2, v1, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemStartScanWifiDisplays:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const-string v1, "stopScanWifiDisplays"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-direct {v0, v2, v1, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sStopScanWifiDisplays:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const-string v1, "semStopScanWifiDisplays"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-direct {v0, v2, v1, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemStopScanWifiDisplays:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    filled-new-array {v1, v4}, [Ljava/lang/Class;

    move-result-object v5

    const-string v6, "connectWifiDisplayWithMode"

    invoke-direct {v0, v2, v6, v5}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sConnectWifiDisplayWithMode:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const-string v5, "semConnectWifiDisplay"

    filled-new-array {v1, v4}, [Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v2, v5, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemConnectWifiDisplay:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-string v1, "getWifiDisplayStatus"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-direct {v0, v2, v1, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sGetWifiDisplayStatus:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-string v1, "semGetWifiDisplayStatus"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-direct {v0, v2, v1, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemGetWifiDisplayStatus:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const-string v1, "checkScreenSharingSupported"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-direct {v0, v2, v1, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sCheckScreenSharingSupported:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const-string v1, "semCheckScreenSharingSupported"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-direct {v0, v2, v1, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemCheckScreenSharingSupported:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const-string v1, "getScreenSharingStatus"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-direct {v0, v2, v1, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sGetScreenSharingStatus:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const-string v1, "semGetScreenSharingStatus"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-direct {v0, v2, v1, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemGetScreenSharingStatus:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sEnumClass:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v4, "setActivityState"

    invoke-direct {v0, v2, v4, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSetActivityState:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sEnumClass:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v4, "semSetActivityState"

    invoke-direct {v0, v2, v4, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemSetActivityState:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const-string v1, "checkExceptionalCase"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-direct {v0, v2, v1, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sCheckExceptionalCase:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const-string v1, "semCheckExceptionalCase"

    new-array v3, v3, [Ljava/lang/Class;

    invoke-direct {v0, v2, v1, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemCheckExceptionalCase:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    return-void
.end method

.method private constructor <init>(Landroid/hardware/display/DisplayManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sEnumClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static bridge synthetic b()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemDisplayStatusListenerClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getSystemService(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;
    .locals 2

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;

    const-string v1, "display"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;-><init>(Landroid/hardware/display/DisplayManager;)V

    return-object v0
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "scanWifiDisplays"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sScanWifiDisplays:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "semStartScanWifiDisplays"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemStartScanWifiDisplays:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "stopScanWifiDisplays"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sStopScanWifiDisplays:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "semStopScanWifiDisplays"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemStopScanWifiDisplays:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_3
    const-string v0, "connectWifiDisplayWithMode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sConnectWifiDisplayWithMode:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_4
    const-string v0, "semConnectWifiDisplay"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemConnectWifiDisplay:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_5
    const-string v0, "setActivityState"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSetActivityState:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_6
    const-string v0, "semSetActivityState"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemSetActivityState:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_7
    const-string v0, "getWifiDisplayStatus"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sGetWifiDisplayStatus:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_8
    const-string v0, "semGetWifiDisplayStatus"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemGetWifiDisplayStatus:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_9
    const-string v0, "checkScreenSharingSupported"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sCheckScreenSharingSupported:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_a
    const-string v0, "semCheckScreenSharingSupported"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemCheckScreenSharingSupported:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_b
    const-string v0, "getScreenSharingStatus"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sGetScreenSharingStatus:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_c
    const-string v0, "semGetScreenSharingStatus"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemGetScreenSharingStatus:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_d
    const-string v0, "semRegisterDisplayStatusListener"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemRegisterDisplayStatusListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_e
    const-string v0, "semUnregisterDisplayStatusListener"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemUnregisterDisplayStatusListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_f
    const-string v0, "checkExceptionalCase"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sCheckExceptionalCase:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_10
    const-string v0, "semCheckExceptionalCase"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemCheckExceptionalCase:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public checkExceptionCase()I
    .locals 2

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemCheckExceptionalCase:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sCheckExceptionalCase:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public checkScreenSharingSupported()I
    .locals 2

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemCheckScreenSharingSupported:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sCheckScreenSharingSupported:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public connectWifiDisplayWithMode(ILjava/lang/String;)V
    .locals 1

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemConnectWifiDisplay:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sConnectWifiDisplayWithMode:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    :goto_0
    return-void
.end method

.method public getBaseInstance()Landroid/hardware/display/DisplayManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/sbrowser/spl/util/ReflectBase;->mInstance:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method public getScreenSharingStatus()I
    .locals 2

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemGetScreenSharingStatus:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sGetScreenSharingStatus:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getWifiDisplayStatus()Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;
    .locals 3

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemGetWifiDisplayStatus:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sGetWifiDisplayStatus:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public scanWifiDisplays()V
    .locals 2

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemStartScanWifiDisplays:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sScanWifiDisplays:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    :goto_0
    return-void
.end method

.method public semRegisterDisplayStatusListener(Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$SemDisplayStatusListener;Landroid/os/Handler;)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemRegisterDisplayStatusListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    iget-object p1, p1, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$SemDisplayStatusListener;->mProxyInstance:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method

.method public semUnregisterDisplayStatusListener(Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$SemDisplayStatusListener;)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemUnregisterDisplayStatusListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    iget-object p1, p1, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$SemDisplayStatusListener;->mProxyInstance:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method

.method public setActivityState(Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;)V
    .locals 1

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemSetActivityState:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p1}, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;->getWfdAppState()Ljava/lang/Object;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSetActivityState:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p1}, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;->getWfdAppState()Ljava/lang/Object;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    :goto_0
    return-void
.end method

.method public stopScanWifiDisplays()V
    .locals 2

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sSemStopScanWifiDisplays:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->sStopScanWifiDisplays:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    :goto_0
    return-void
.end method
