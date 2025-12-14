.class public Lorg/chromium/content/browser/AudioFocusDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/AudioFocusDelegate$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mFocusRequest:Landroid/media/AudioFocusRequest;

.field private mFocusType:I

.field private final mHandler:Landroid/os/Handler;

.field protected mIsDucking:Z

.field private mNativeAudioFocusDelegateAndroid:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/content/browser/AudioFocusDelegate;->mNativeAudioFocusDelegateAndroid:J

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->getUiThreadLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/chromium/content/browser/AudioFocusDelegate;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private abandonAudioFocus()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lorg/chromium/content/browser/AudioFocusDelegate;->mFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/AudioFocusDelegate;->mFocusRequest:Landroid/media/AudioFocusRequest;

    :cond_0
    return-void
.end method

.method private static create(J)Lorg/chromium/content/browser/AudioFocusDelegate;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/content/browser/AudioFocusDelegate;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/AudioFocusDelegate;-><init>(J)V

    return-object v0
.end method

.method private isFocusTransient()Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/content/browser/AudioFocusDelegate;->mFocusType:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private requestAudioFocus(Z)Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lorg/chromium/content/browser/AudioFocusDelegate;->mFocusType:I

    invoke-direct {p0}, Lorg/chromium/content/browser/AudioFocusDelegate;->requestAudioFocusInternal()Z

    move-result p0

    return p0
.end method

.method private requestAudioFocusInternal()Z
    .locals 6

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    new-instance v4, Landroid/media/AudioFocusRequest$Builder;

    iget v5, p0, Lorg/chromium/content/browser/AudioFocusDelegate;->mFocusType:I

    invoke-direct {v4, v5}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    invoke-virtual {v4, v1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    iget-object v4, p0, Lorg/chromium/content/browser/AudioFocusDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v4}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/content/browser/AudioFocusDelegate;->mFocusRequest:Landroid/media/AudioFocusRequest;

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq p0, v2, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception p0

    const-string v0, "MediaSession"

    const-string v1, "audio focus coordination is broken"

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/AudioFocusDelegate;->mNativeAudioFocusDelegateAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, -0x2

    if-eq p1, v0, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    if-eq p1, v1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "MediaSession"

    const-string v0, "onAudioFocusChange called with unexpected value %d"

    invoke-static {p1, v0, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lorg/chromium/content/browser/AudioFocusDelegate;->mIsDucking:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lorg/chromium/content/browser/AudioFocusDelegateJni;->get()Lorg/chromium/content/browser/AudioFocusDelegate$Natives;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/content/browser/AudioFocusDelegate;->mNativeAudioFocusDelegateAndroid:J

    invoke-interface {p1, v0, v1, p0}, Lorg/chromium/content/browser/AudioFocusDelegate$Natives;->onStopDucking(JLorg/chromium/content/browser/AudioFocusDelegate;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/content/browser/AudioFocusDelegate;->mIsDucking:Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/chromium/content/browser/AudioFocusDelegateJni;->get()Lorg/chromium/content/browser/AudioFocusDelegate$Natives;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/content/browser/AudioFocusDelegate;->mNativeAudioFocusDelegateAndroid:J

    invoke-interface {p1, v0, v1, p0}, Lorg/chromium/content/browser/AudioFocusDelegate$Natives;->onResume(JLorg/chromium/content/browser/AudioFocusDelegate;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/chromium/content/browser/AudioFocusDelegate;->abandonAudioFocus()V

    invoke-static {}, Lorg/chromium/content/browser/AudioFocusDelegateJni;->get()Lorg/chromium/content/browser/AudioFocusDelegate$Natives;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/content/browser/AudioFocusDelegate;->mNativeAudioFocusDelegateAndroid:J

    invoke-interface {p1, v0, v1, p0}, Lorg/chromium/content/browser/AudioFocusDelegate$Natives;->onSuspend(JLorg/chromium/content/browser/AudioFocusDelegate;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lorg/chromium/content/browser/AudioFocusDelegateJni;->get()Lorg/chromium/content/browser/AudioFocusDelegate$Natives;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/content/browser/AudioFocusDelegate;->mNativeAudioFocusDelegateAndroid:J

    invoke-interface {p1, v0, v1, p0}, Lorg/chromium/content/browser/AudioFocusDelegate$Natives;->onSuspend(JLorg/chromium/content/browser/AudioFocusDelegate;)V

    goto :goto_0

    :cond_5
    iput-boolean v1, p0, Lorg/chromium/content/browser/AudioFocusDelegate;->mIsDucking:Z

    invoke-static {}, Lorg/chromium/content/browser/AudioFocusDelegateJni;->get()Lorg/chromium/content/browser/AudioFocusDelegate$Natives;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/content/browser/AudioFocusDelegate;->mNativeAudioFocusDelegateAndroid:J

    invoke-interface {p1, v0, v1, p0}, Lorg/chromium/content/browser/AudioFocusDelegate$Natives;->onStartDucking(JLorg/chromium/content/browser/AudioFocusDelegate;)V

    :goto_0
    return-void
.end method

.method public tearDown()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/AudioFocusDelegate;->abandonAudioFocus()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/AudioFocusDelegate;->mNativeAudioFocusDelegateAndroid:J

    return-void
.end method
