.class public Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private mConsecutiveVSync:Z

.field private mGoodStartingPointNano:J

.field private mHaveRequestInFlight:Z

.field private mInsideVSync:Z

.field private final mNativeExternalBeginFrameSourceAndroid:J

.field private mRefreshPeriodNano:J

.field private mUseEstimatedRefreshRate:Z

.field private mVSyncNotificationsEnabled:Z


# direct methods
.method private constructor <init>(JF)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p3}, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->updateRefreshRate(F)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p3

    iput-object p3, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->mChoreographer:Landroid/view/Choreographer;

    invoke-direct {p0}, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->getCurrentNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->mGoodStartingPointNano:J

    iput-wide p1, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->mNativeExternalBeginFrameSourceAndroid:J

    return-void
.end method

.method private getCurrentNanoTime()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private postCallback()V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->mHaveRequestInFlight:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->mHaveRequestInFlight:Z

    iget-boolean v0, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->mInsideVSync:Z

    iput-boolean v0, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->mConsecutiveVSync:Z

    iget-object v0, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method private setEnabled(Z)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->mVSyncNotificationsEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->mVSyncNotificationsEnabled:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->postCallback()V

    :cond_1
    return-void
.end method

.method private updateRefreshRate(F)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/high16 v0, 0x41f00000    # 30.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->mUseEstimatedRefreshRate:Z

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    const/high16 p1, 0x42700000    # 60.0f

    :cond_1
    const v0, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->mRefreshPeriodNano:J

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 11

    const-string v0, "VSync"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->mUseEstimatedRefreshRate:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->mConsecutiveVSync:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->mGoodStartingPointNano:J

    sub-long v2, p1, v2

    iget-wide v4, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->mRefreshPeriodNano:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->mRefreshPeriodNano:J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide p1, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->mGoodStartingPointNano:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->mInsideVSync:Z

    iput-boolean v1, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->mHaveRequestInFlight:Z

    iget-boolean v2, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->mVSyncNotificationsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    iput-boolean v1, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->mInsideVSync:Z

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroidJni;->get()Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid$Natives;

    move-result-object v3

    iget-wide v4, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->mNativeExternalBeginFrameSourceAndroid:J

    const-wide/16 v6, 0x3e8

    div-long/2addr p1, v6

    iget-wide v8, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->mRefreshPeriodNano:J

    div-long v9, v8, v6

    move-object v6, p0

    move-wide v7, p1

    invoke-interface/range {v3 .. v10}, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid$Natives;->onVSync(JLorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;JJ)V

    invoke-direct {p0}, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->postCallback()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v1, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->mInsideVSync:Z

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return-void

    :goto_1
    iput-boolean v1, p0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;->mInsideVSync:Z

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw p1
.end method
