.class public Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# static fields
.field private static sBaseClass:Ljava/lang/Class;

.field private static sGetFineMediaVolume:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

.field private static sSamsungAudioManager:Lcom/sec/sbrowser/spl/util/ReflectConstructor;

.field private static sSemDismissVolumePanel:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSemGetFineVolume:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

.field private static sSemSetFineVolume:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

.field private static sSetFineMediaVolume:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->sBaseClass:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-string v0, "android.media.SamsungAudioManager"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->sBaseClass:Ljava/lang/Class;

    :goto_0
    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->sBaseClass:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "semGetFineVolume"

    invoke-direct {v0, v1, v4, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->sSemGetFineVolume:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->sBaseClass:Ljava/lang/Class;

    const-string v3, "semSetFineVolume"

    filled-new-array {v2, v2, v2}, [Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->sSemSetFineVolume:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->sBaseClass:Ljava/lang/Class;

    const-string v3, "getFineMediaVolume"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-direct {v0, v1, v3, v5}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->sGetFineMediaVolume:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->sBaseClass:Ljava/lang/Class;

    const-string v3, "setFineMediaVolume"

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->sSetFineMediaVolume:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->sBaseClass:Ljava/lang/Class;

    const-string v2, "semDismissVolumePanel"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->sSemDismissVolumePanel:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectConstructor;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->sBaseClass:Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->sSamsungAudioManager:Lcom/sec/sbrowser/spl/util/ReflectConstructor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->sSamsungAudioManager:Lcom/sec/sbrowser/spl/util/ReflectConstructor;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/sbrowser/spl/util/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "SamsungAudioManager"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->sSamsungAudioManager:Lcom/sec/sbrowser/spl/util/ReflectConstructor;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectConstructor;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "semGetFineVolume"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->sSemGetFineVolume:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "semSetFineVolume"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->sSemSetFineVolume:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "getFineMediaVolume"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->sGetFineMediaVolume:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_3
    const-string v0, "setFineMediaVolume"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->sSetFineMediaVolume:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_4
    const-string v0, "semDismissVolumePanel"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->sSemDismissVolumePanel:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public dismissVolumePanel()V
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->sSemDismissVolumePanel:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Void;

    return-void
.end method

.method public getFineMediaVolume()I
    .locals 2

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->sSemGetFineVolume:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->sGetFineMediaVolume:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public setFineMediaVolume(I)V
    .locals 3

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->sSemSetFineVolume:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->sSetFineMediaVolume:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Integer;

    :goto_0
    return-void
.end method
