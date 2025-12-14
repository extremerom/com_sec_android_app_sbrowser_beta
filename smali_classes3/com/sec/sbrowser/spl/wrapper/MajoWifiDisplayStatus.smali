.class public Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# static fields
.field public static final DISPLAY_STATE_CONNECTED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final DISPLAY_STATE_CONNECTING:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final DISPLAY_STATE_NOT_CONNECTED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field static final SCREEN_SHARING_STATE_PAUSED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field static final SCREEN_SHARING_STATE_RESUMED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field private static sGetActiveDisplay:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sGetActiveDisplayState:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

.field private static sGetDisplays:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

.field private static sWifiDisplayStatus:Lcom/sec/sbrowser/spl/util/ReflectConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.hardware.display.SemWifiDisplayStatus"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectConstructor;

    const-class v2, Landroid/os/Parcelable;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;->sWifiDisplayStatus:Lcom/sec/sbrowser/spl/util/ReflectConstructor;

    goto :goto_0

    :cond_0
    const-string v0, "android.hardware.display.WifiDisplayStatus"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const-string v2, "getActiveDisplayState"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-direct {v1, v0, v2, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;->sGetActiveDisplayState:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-string v2, "getActiveDisplay"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-direct {v1, v0, v2, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;->sGetActiveDisplay:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-string v2, "getDisplays"

    new-array v3, v3, [Ljava/lang/Class;

    invoke-direct {v1, v0, v2, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;->sGetDisplays:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "DISPLAY_STATE_CONNECTED"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;->DISPLAY_STATE_CONNECTED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "DISPLAY_STATE_CONNECTING"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;->DISPLAY_STATE_CONNECTING:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "DISPLAY_STATE_NOT_CONNECTED"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;->DISPLAY_STATE_NOT_CONNECTED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "SCREEN_SHARING_STATE_RESUMED"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;->SCREEN_SHARING_STATE_RESUMED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "SCREEN_SHARING_STATE_PAUSED"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;->SCREEN_SHARING_STATE_PAUSED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static create(Landroid/content/Intent;)Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;
    .locals 3

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;->sWifiDisplayStatus:Lcom/sec/sbrowser/spl/util/ReflectConstructor;

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->EXTRA_WIFI_DISPLAY_STATUS:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sec/sbrowser/spl/util/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->EXTRA_WIFI_DISPLAY_STATUS:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "getActiveDisplayState"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;->sGetActiveDisplayState:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "getActiveDisplay"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;->sGetActiveDisplay:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "getDisplays"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;->sGetDisplays:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getActiveDisplay()Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplay;
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;->sGetActiveDisplay:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplay;

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplay;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getActiveDisplayState()I
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;->sGetActiveDisplayState:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getDisplays()[Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplay;
    .locals 4

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplayStatus;->sGetDisplays:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplay;

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    new-instance v2, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplay;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplay;-><init>(Ljava/lang/Object;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getScanState()I
    .locals 2
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    :try_start_0
    const-string v0, "android.hardware.display.WifiDisplayStatus"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getScanState"

    invoke-static {p0, v0, v1}, Lcom/sec/sbrowser/spl/util/ReflectField;->getPrivateValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public setActiveDisplay(Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplay;)V
    .locals 2
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    :try_start_0
    const-string v0, "android.hardware.display.WifiDisplayStatus"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mActiveDisplay"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object p0, p0, Lcom/sec/sbrowser/spl/util/ReflectBase;->mInstance:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplay;->getBaseInstance()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public varargs setDisplays([Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplay;)V
    .locals 5
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    :try_start_0
    const-string v0, "android.hardware.display.WifiDisplayStatus"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mDisplays"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/sec/sbrowser/spl/wrapper/MajoWifiDisplay;->getBaseInstance()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "[Landroid.hardware.display.WifiDisplay;"

    invoke-static {p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object p0, p0, Lcom/sec/sbrowser/spl/util/ReflectBase;->mInstance:Ljava/lang/Object;

    invoke-static {v2, v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method
