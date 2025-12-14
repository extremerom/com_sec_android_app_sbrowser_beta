.class public Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DESKTOP_MODE_ENABLED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final DEX_MODE_NEXT_GEN:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final DEX_MODE_STANDALONE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final MOBILEKEYBOARD_COVERED_YES:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final SEM_DISPLAY_DEVICE_TYPE_MAIN:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final SEM_DISPLAY_DEVICE_TYPE_SUB:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field private static final sDesktopModeEnabled:Lcom/sec/sbrowser/spl/util/ReflectField$I;

.field private static final sDexMode:Lcom/sec/sbrowser/spl/util/ReflectField$I;

.field private static final sDisplayDeviceType:Lcom/sec/sbrowser/spl/util/ReflectField$I;

.field private static final sMobileKeyboardCovered:Lcom/sec/sbrowser/spl/util/ReflectField$I;

.field private static sSemIsPopOver:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const-class v1, Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "SEM_MOBILE_KEYBOARD_COVERED_YES"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->MOBILEKEYBOARD_COVERED_YES:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I;

    const-string v2, "semMobileKeyboardCovered"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->sMobileKeyboardCovered:Lcom/sec/sbrowser/spl/util/ReflectField$I;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "SEM_DESKTOP_MODE_ENABLED"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->DESKTOP_MODE_ENABLED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I;

    const-string v2, "semDesktopModeEnabled"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->sDesktopModeEnabled:Lcom/sec/sbrowser/spl/util/ReflectField$I;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "MOBILEKEYBOARD_COVERED_YES"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->MOBILEKEYBOARD_COVERED_YES:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I;

    const-string v2, "mobileKeyboardCovered"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->sMobileKeyboardCovered:Lcom/sec/sbrowser/spl/util/ReflectField$I;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "DESKTOP_MODE_ENABLED"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->DESKTOP_MODE_ENABLED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I;

    const-string v2, "desktopModeEnabled"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->sDesktopModeEnabled:Lcom/sec/sbrowser/spl/util/ReflectField$I;

    :goto_0
    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "DEX_MODE_STANDALONE"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->DEX_MODE_STANDALONE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "DEX_MODE_NEXT_GEN"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->DEX_MODE_NEXT_GEN:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I;

    const-string v2, "dexMode"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->sDexMode:Lcom/sec/sbrowser/spl/util/ReflectField$I;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "SEM_DISPLAY_DEVICE_TYPE_MAIN"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->SEM_DISPLAY_DEVICE_TYPE_MAIN:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "SEM_DISPLAY_DEVICE_TYPE_SUB"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->SEM_DISPLAY_DEVICE_TYPE_SUB:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I;

    const-string v2, "semDisplayDeviceType"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->sDisplayDeviceType:Lcom/sec/sbrowser/spl/util/ReflectField$I;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const-string v3, "semIsPopOver"

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->sSemIsPopOver:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    return-void
.end method

.method public static getDesktopModeEnabled(Landroid/content/res/Configuration;)I
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->sDesktopModeEnabled:Lcom/sec/sbrowser/spl/util/ReflectField$I;

    invoke-virtual {v0, p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I;->getWithBaseInstance(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getDexMode(Landroid/content/res/Configuration;)I
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->sDexMode:Lcom/sec/sbrowser/spl/util/ReflectField$I;

    invoke-virtual {v0, p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I;->getWithBaseInstance(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getDisplayDeviceType(Landroid/content/res/Configuration;)I
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->sDisplayDeviceType:Lcom/sec/sbrowser/spl/util/ReflectField$I;

    invoke-virtual {v0, p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I;->getWithBaseInstance(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getMobileKeyboardCovered(Landroid/content/res/Configuration;)I
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->sMobileKeyboardCovered:Lcom/sec/sbrowser/spl/util/ReflectField$I;

    invoke-virtual {v0, p0}, Lcom/sec/sbrowser/spl/util/ReflectField$I;->getWithBaseInstance(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "semIsPopOver"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->sSemIsPopOver:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static semIsPopOver(Landroid/content/res/Configuration;)Z
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->sSemIsPopOver:Lcom/sec/sbrowser/spl/util/ReflectMethod$B;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$B;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
