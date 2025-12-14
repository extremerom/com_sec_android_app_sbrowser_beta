.class public final Lorg/chromium/services/media_session/MediaPosition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mDuration:Ljava/lang/Long;

.field private mLastUpdatedTime:Ljava/lang/Long;

.field private mPlaybackRate:Ljava/lang/Float;

.field private mPosition:Ljava/lang/Long;


# direct methods
.method public constructor <init>(JJFJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/services/media_session/MediaPosition;->mDuration:Ljava/lang/Long;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/services/media_session/MediaPosition;->mPosition:Ljava/lang/Long;

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/services/media_session/MediaPosition;->mPlaybackRate:Ljava/lang/Float;

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/services/media_session/MediaPosition;->mLastUpdatedTime:Ljava/lang/Long;

    return-void
.end method

.method private static create(JJFJ)Lorg/chromium/services/media_session/MediaPosition;
    .locals 10
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sub-long v8, p5, v0

    new-instance v0, Lorg/chromium/services/media_session/MediaPosition;

    move-object v2, v0

    move-wide v3, p0

    move-wide v5, p2

    move v7, p4

    invoke-direct/range {v2 .. v9}, Lorg/chromium/services/media_session/MediaPosition;-><init>(JJFJ)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/chromium/services/media_session/MediaPosition;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/chromium/services/media_session/MediaPosition;

    iget-object v1, p0, Lorg/chromium/services/media_session/MediaPosition;->mDuration:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Lorg/chromium/services/media_session/MediaPosition;->getDuration()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/chromium/services/media_session/MediaPosition;->mPosition:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Lorg/chromium/services/media_session/MediaPosition;->getPosition()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/chromium/services/media_session/MediaPosition;->mPlaybackRate:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/services/media_session/MediaPosition;->getPlaybackRate()F

    move-result v3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    iget-object p0, p0, Lorg/chromium/services/media_session/MediaPosition;->mLastUpdatedTime:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Lorg/chromium/services/media_session/MediaPosition;->getLastUpdatedTime()J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getDuration()J
    .locals 2

    iget-object p0, p0, Lorg/chromium/services/media_session/MediaPosition;->mDuration:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastUpdatedTime()J
    .locals 2

    iget-object p0, p0, Lorg/chromium/services/media_session/MediaPosition;->mLastUpdatedTime:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlaybackRate()F
    .locals 0

    iget-object p0, p0, Lorg/chromium/services/media_session/MediaPosition;->mPlaybackRate:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getPosition()J
    .locals 2

    iget-object p0, p0, Lorg/chromium/services/media_session/MediaPosition;->mPosition:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/chromium/services/media_session/MediaPosition;->mDuration:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/chromium/services/media_session/MediaPosition;->mPosition:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lorg/chromium/services/media_session/MediaPosition;->mPlaybackRate:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lorg/chromium/services/media_session/MediaPosition;->mLastUpdatedTime:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "duration="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/services/media_session/MediaPosition;->mDuration:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/chromium/services/media_session/MediaPosition;->mPosition:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/chromium/services/media_session/MediaPosition;->mPlaybackRate:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/chromium/services/media_session/MediaPosition;->mLastUpdatedTime:Ljava/lang/Long;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
