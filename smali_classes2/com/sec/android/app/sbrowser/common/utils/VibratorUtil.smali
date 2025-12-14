.class public Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHapticFeedbackEffect:Landroid/os/VibrationEffect;

.field private mScrollBarScrollerVibrationEffect:Landroid/os/VibrationEffect;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;-><init>()V

    return-object v0
.end method

.method private generateScrollbarScrollervibrateEffect()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->mScrollBarScrollerVibrationEffect:Landroid/os/VibrationEffect;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/MajoVibrator;->semGetNumberOfSupportedPatterns(Landroid/os/Vibrator;)I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->getVibrationEffectbyIndex(I)Landroid/os/VibrationEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->mScrollBarScrollerVibrationEffect:Landroid/os/VibrationEffect;
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "e : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VibratorUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private generateVibrateEffect(I)V
    .locals 1

    const v0, 0xf425c

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->mHapticFeedbackEffect:Landroid/os/VibrationEffect;

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->getVibrationEffectbyIndex(I)Landroid/os/VibrationEffect;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->mHapticFeedbackEffect:Landroid/os/VibrationEffect;
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "e : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VibratorUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/b;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/b;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;

    return-object v0
.end method

.method private getVibrationEffectbyIndex(I)Landroid/os/VibrationEffect;
    .locals 0

    invoke-static {p1}, Lcom/sec/sbrowser/spl/wrapper/MajoHapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    const-string p1, "TYPE_TOUCH"

    invoke-static {p0, p1}, Lcom/sec/sbrowser/spl/wrapper/MajoVibrationEffect;->semCreateWaveform(ILjava/lang/String;)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method private isDcHapticFeedBackSupported()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->mVibrator:Landroid/os/Vibrator;

    invoke-static {p0}, Lcom/sec/sbrowser/spl/wrapper/MajoVibrator;->semGetSupportedVibrationType(Landroid/os/Vibrator;)I

    move-result p0

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoVibrator;->SEM_SUPPORTED_VIBRATION_TYPE_A:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Haptic Feedback exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "VibratorUtil"

    invoke-static {p0, v1, v2}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method private isHapticEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "haptic_feedback_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public getScrollBarScrollerVibrationEffect()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->mScrollBarScrollerVibrationEffect:Landroid/os/VibrationEffect;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public performVibrationFeedbackForDragStart(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->isHapticEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 p0, 0x6c

    :try_start_0
    invoke-static {p0}, Lcom/sec/sbrowser/spl/wrapper/MajoHapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "VibratorUtil"

    const-string p1, "Drag Start Vibration Index was not Found."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public runHapticFeedbackEffect(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->isHapticEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->generateVibrateEffect(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->mHapticFeedbackEffect:Landroid/os/VibrationEffect;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    return-void
.end method

.method public runHapticFeedbackEffectForPullToRefresh(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->isHapticEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0xf425c

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->isDcHapticFeedBackSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    :cond_2
    const/16 p1, 0x6c

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->runHapticFeedbackEffect(I)V

    :goto_0
    return-void
.end method

.method public runScrollbarvibrate()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->isHapticEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->generateScrollbarScrollervibrateEffect()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->mScrollBarScrollerVibrationEffect:Landroid/os/VibrationEffect;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    return-void
.end method
