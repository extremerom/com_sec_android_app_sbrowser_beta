.class public Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final PRIME_NUMBER_FOR_HASHCODE:I = 0x1f
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mMediaPosition:Lorg/chromium/services/media_session/MediaPosition;


# direct methods
.method public constructor <init>(Lorg/chromium/services/media_session/MediaPosition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;->mMediaPosition:Lorg/chromium/services/media_session/MediaPosition;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;->getDuration()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;->getDuration()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;->getPosition()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;->getPosition()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;->getPlaybackRate()F

    move-result v1

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;->getPlaybackRate()F

    move-result v3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;->getLastUpdatedTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;->getLastUpdatedTime()J

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

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;->mMediaPosition:Lorg/chromium/services/media_session/MediaPosition;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/services/media_session/MediaPosition;->getDuration()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getLastUpdatedTime()J
    .locals 2

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;->mMediaPosition:Lorg/chromium/services/media_session/MediaPosition;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/services/media_session/MediaPosition;->getLastUpdatedTime()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getPlaybackRate()F
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;->mMediaPosition:Lorg/chromium/services/media_session/MediaPosition;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/services/media_session/MediaPosition;->getPlaybackRate()F

    move-result p0

    :goto_0
    return p0
.end method

.method public getPosition()J
    .locals 2

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;->mMediaPosition:Lorg/chromium/services/media_session/MediaPosition;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/services/media_session/MediaPosition;->getPosition()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;->getPosition()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;->getPlaybackRate()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;->getLastUpdatedTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "duration="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;->getPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;->getPlaybackRate()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;->getLastUpdatedTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
