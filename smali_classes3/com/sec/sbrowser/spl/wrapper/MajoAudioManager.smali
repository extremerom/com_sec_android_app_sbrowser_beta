.class public Lcom/sec/sbrowser/spl/wrapper/MajoAudioManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEVICE_OUT_BLUETOOTH_A2DP:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final DEVICE_OUT_WIRED_HEADPHONE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final DEVICE_OUT_WIRED_HEADSET:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final SEM_SOUND_DRAG_AND_DROP:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field private static sGetEarProtectLimitIndex:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

.field private static sSemGetEarProtectLimitIndex:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v1, "DEVICE_OUT_WIRED_HEADSET"

    const-class v2, Landroid/media/AudioManager;

    invoke-direct {v0, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoAudioManager;->DEVICE_OUT_WIRED_HEADSET:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v1, "DEVICE_OUT_WIRED_HEADPHONE"

    invoke-direct {v0, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoAudioManager;->DEVICE_OUT_WIRED_HEADPHONE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v1, "DEVICE_OUT_BLUETOOTH_A2DP"

    invoke-direct {v0, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoAudioManager;->DEVICE_OUT_BLUETOOTH_A2DP:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v1, "DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES"

    invoke-direct {v0, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoAudioManager;->DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v1, "SEM_SOUND_DRAG_AND_DROP"

    invoke-direct {v0, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoAudioManager;->SEM_SOUND_DRAG_AND_DROP:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/Class;

    const-string v4, "getEarProtectLimitIndex"

    invoke-direct {v0, v2, v4, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoAudioManager;->sGetEarProtectLimitIndex:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const-string v3, "semGetEarProtectLimit"

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoAudioManager;->sSemGetEarProtectLimitIndex:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    return-void
.end method

.method public static getEarProtectLimitIndex(Landroid/media/AudioManager;)I
    .locals 2

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoAudioManager;->sSemGetEarProtectLimitIndex:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoAudioManager;->sGetEarProtectLimitIndex:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "getEarProtectLimitIndex"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoAudioManager;->sGetEarProtectLimitIndex:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "semGetEarProtectLimit"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoAudioManager;->sSemGetEarProtectLimitIndex:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
