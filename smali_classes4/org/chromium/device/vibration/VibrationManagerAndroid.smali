.class public Lorg/chromium/device/vibration/VibrationManagerAndroid;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mHasVibratePermission:Z

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lorg/chromium/device/vibration/VibrationManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lorg/chromium/device/vibration/VibrationManagerAndroid;->mVibrator:Landroid/os/Vibrator;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/device/vibration/VibrationManagerAndroid;->mHasVibratePermission:Z

    if-nez v0, :cond_1

    const-string p0, "VibrationManager"

    const-string v0, "Failed to use vibrate API, requires VIBRATE permission."

    invoke-static {p0, v0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static getInstance()Lorg/chromium/device/vibration/VibrationManagerAndroid;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/device/vibration/VibrationManagerAndroid;

    invoke-direct {v0}, Lorg/chromium/device/vibration/VibrationManagerAndroid;-><init>()V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/device/vibration/VibrationManagerAndroid;->mHasVibratePermission:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/device/vibration/VibrationManagerAndroid;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p0}, Landroid/os/Vibrator;->cancel()V

    :cond_0
    return-void
.end method

.method public vibrate(J)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x2710

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-object v0, p0, Lorg/chromium/device/vibration/VibrationManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/device/vibration/VibrationManagerAndroid;->mHasVibratePermission:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/device/vibration/VibrationManagerAndroid;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method
