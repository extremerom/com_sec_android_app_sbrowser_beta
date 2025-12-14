.class public Lorg/chromium/media/MediaServerCrashListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/MediaServerCrashListener$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mLastReportedWatchdogCreationFailure:J

.field private mNativeMediaServerCrashListener:J

.field private mPlayer:Landroid/media/MediaPlayer;


# direct methods
.method private constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/chromium/media/MediaServerCrashListener;->mLastReportedWatchdogCreationFailure:J

    iput-wide p1, p0, Lorg/chromium/media/MediaServerCrashListener;->mNativeMediaServerCrashListener:J

    return-void
.end method

.method private static create(J)Lorg/chromium/media/MediaServerCrashListener;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/media/MediaServerCrashListener;

    invoke-direct {v0, p0, p1}, Lorg/chromium/media/MediaServerCrashListener;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const/16 p1, 0x64

    const/4 p3, 0x1

    if-ne p2, p1, :cond_0

    invoke-static {}, Lorg/chromium/media/MediaServerCrashListenerJni;->get()Lorg/chromium/media/MediaServerCrashListener$Natives;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/media/MediaServerCrashListener;->mNativeMediaServerCrashListener:J

    invoke-interface {p1, v0, v1, p0, p3}, Lorg/chromium/media/MediaServerCrashListener$Natives;->onMediaServerCrashDetected(JLorg/chromium/media/MediaServerCrashListener;Z)V

    invoke-virtual {p0}, Lorg/chromium/media/MediaServerCrashListener;->releaseWatchdog()V

    :cond_0
    return p3
.end method

.method public releaseWatchdog()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/media/MediaServerCrashListener;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/MediaServerCrashListener;->mPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method public startListening()Z
    .locals 9
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "Exception while creating the watchdog player."

    const-string v1, "crMediaCrashListener"

    iget-object v2, p0, Lorg/chromium/media/MediaServerCrashListener;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lorg/chromium/media/R$raw;->empty:I

    invoke-static {v2, v4}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/media/MediaServerCrashListener;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :goto_0
    invoke-static {v1, v0, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    invoke-static {v1, v0, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iget-object v0, p0, Lorg/chromium/media/MediaServerCrashListener;->mPlayer:Landroid/media/MediaPlayer;

    const-wide/16 v4, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iput-wide v4, p0, Lorg/chromium/media/MediaServerCrashListener;->mLastReportedWatchdogCreationFailure:J

    return v3

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, p0, Lorg/chromium/media/MediaServerCrashListener;->mLastReportedWatchdogCreationFailure:J

    cmp-long v0, v6, v4

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    sub-long v5, v2, v6

    const-wide/16 v7, 0x1388

    cmp-long v0, v5, v7

    if-lez v0, :cond_3

    :cond_2
    const-string v0, "Unable to create watchdog player, treating it as server crash."

    invoke-static {v1, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/media/MediaServerCrashListenerJni;->get()Lorg/chromium/media/MediaServerCrashListener$Natives;

    move-result-object v0

    iget-wide v5, p0, Lorg/chromium/media/MediaServerCrashListener;->mNativeMediaServerCrashListener:J

    invoke-interface {v0, v5, v6, p0, v4}, Lorg/chromium/media/MediaServerCrashListener$Natives;->onMediaServerCrashDetected(JLorg/chromium/media/MediaServerCrashListener;Z)V

    iput-wide v2, p0, Lorg/chromium/media/MediaServerCrashListener;->mLastReportedWatchdogCreationFailure:J

    :cond_3
    return v4
.end method
