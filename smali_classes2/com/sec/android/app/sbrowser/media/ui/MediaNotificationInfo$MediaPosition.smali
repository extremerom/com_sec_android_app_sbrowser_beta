.class public final Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaPosition"
.end annotation


# instance fields
.field private mDuration:Ljava/lang/Long;

.field private mLastUpdatedTime:Ljava/lang/Long;

.field private mPlaybackRate:Ljava/lang/Float;

.field private mPosition:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;->mDuration:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;->getPosition()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;->mPosition:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;->getPlaybackRate()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;->mPlaybackRate:Ljava/lang/Float;

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPosition;->getLastUpdatedTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;->mLastUpdatedTime:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;->mDuration:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastUpdatedTime()J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;->mLastUpdatedTime:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlaybackRate()F
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;->mPlaybackRate:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getPosition()J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;->mPosition:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public setLastUpdatedTime(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;->mLastUpdatedTime:Ljava/lang/Long;

    return-void
.end method

.method public setPlaybackRate(F)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;->mPlaybackRate:Ljava/lang/Float;

    return-void
.end method

.method public setPosition(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;->mPosition:Ljava/lang/Long;

    return-void
.end method
