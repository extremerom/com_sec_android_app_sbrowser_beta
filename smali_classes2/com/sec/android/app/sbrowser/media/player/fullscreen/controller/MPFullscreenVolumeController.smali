.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "[MM]MPFullscreenVolumeController"

.field private static sAudioManager:Landroid/media/AudioManager;

.field private static sSamsungAudioManager:Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->initAudioManager(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->initSamsungAudioManager(Landroid/content/Context;)V

    return-void
.end method

.method private static initAudioManager(Landroid/content/Context;)V
    .locals 1

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    sput-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->sAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private static initSamsungAudioManager(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->sSamsungAudioManager:Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MPFullscreenVolumeController. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static isSemAudioManagerSupported()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->sSamsungAudioManager:Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldShowAudioShockWarning()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->isAudioPathEarjack()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->isAudioPathBTHeadset()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public decreaseVolume(Z)V
    .locals 2

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->sAudioManager:Landroid/media/AudioManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return-void
.end method

.method public getCurrentVolume()I
    .locals 4

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->sAudioManager:Landroid/media/AudioManager;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->isSemAudioManagerSupported()Z

    move-result p0

    const/4 v0, 0x3

    if-eqz p0, :cond_2

    const p0, 0xf424e

    :try_start_0
    invoke-static {p0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->sSamsungAudioManager:Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->getFineMediaVolume()I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    sget-object v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->sSamsungAudioManager:Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->getFineMediaVolume()I

    move-result v0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/lit8 p0, p0, 0xa

    add-int/2addr p0, v0

    return p0

    :goto_0
    sget-object v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCurrentVolume. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v1}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    return p0
.end method

.method public getMaxVolume()I
    .locals 1

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->sAudioManager:Landroid/media/AudioManager;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->isSemAudioManagerSupported()Z

    move-result p0

    const/4 v0, 0x3

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0xa

    return p0

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method public getOverlapPointForAudioShockWarning(I)I
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->sAudioManager:Landroid/media/AudioManager;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->shouldShowAudioShockWarning()Z

    move-result p0

    if-eqz p0, :cond_1

    :try_start_0
    div-int/lit8 p1, p1, 0xf

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->sAudioManager:Landroid/media/AudioManager;

    invoke-static {p0}, Lcom/sec/sbrowser/spl/wrapper/MajoAudioManager;->getEarProtectLimitIndex(Landroid/media/AudioManager;)I

    move-result p0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p0, p0, -0x1

    mul-int v1, p0, p1

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getOverlapPointForAudioShockWarning. "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v1
.end method

.method public hideSystemVolumeUI()V
    .locals 3

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->sSamsungAudioManager:Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->dismissVolumePanel()V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hideSystemVolumeUI. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public increaseVolume(Z)V
    .locals 2

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->sAudioManager:Landroid/media/AudioManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return-void
.end method

.method public isAudioPathBTHeadset()Z
    .locals 5

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->sAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->isSemAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result p0

    return p0

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->sAudioManager:Landroid/media/AudioManager;

    const-string v1, "audioParam;outDevice"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/MajoAudioManager;->DEVICE_OUT_BLUETOOTH_A2DP:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/sec/sbrowser/spl/wrapper/MajoAudioManager;->DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v3}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr p0, v2

    and-int/2addr p0, v1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->TAG:Ljava/lang/String;

    const-string v3, "isAudioPathBTHeadset. path : "

    const-string v4, ", "

    invoke-static {v3, p0, v4}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    return v0
.end method

.method public isAudioPathEarjack()Z
    .locals 5

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->sAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->isSemAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result p0

    return p0

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->sAudioManager:Landroid/media/AudioManager;

    const-string v1, "audioParam;outDevice"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/MajoAudioManager;->DEVICE_OUT_WIRED_HEADPHONE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/sec/sbrowser/spl/wrapper/MajoAudioManager;->DEVICE_OUT_WIRED_HEADSET:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v3}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr p0, v2

    and-int/2addr p0, v1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->TAG:Ljava/lang/String;

    const-string v3, "isAudioPathEarjack. path : "

    const-string v4, ", "

    invoke-static {v3, p0, v4}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    return v0
.end method

.method public setVolume(I)V
    .locals 4

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->sAudioManager:Landroid/media/AudioManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->TAG:Ljava/lang/String;

    const-string v0, "level = "

    invoke-static {p1, v0, p0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->isSemAudioManagerSupported()Z

    move-result p0

    const-string v0, "setVolume : "

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eqz p0, :cond_2

    const p0, 0xf424e

    :try_start_0
    invoke-static {p0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->sSamsungAudioManager:Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;

    invoke-virtual {p0, p1}, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->setFineMediaVolume(I)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    div-int/lit8 p0, p1, 0xa

    rem-int/lit8 p1, p1, 0xa

    sget-object v3, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2, p0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->sSamsungAudioManager:Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;

    invoke-virtual {p0, p1}, Lcom/sec/sbrowser/spl/wrapper/SamsungAudioManager;->setFineMediaVolume(I)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p1}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_1
    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v2, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenVolumeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
