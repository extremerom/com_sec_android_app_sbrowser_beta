.class public Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCookieAccess:Z

.field private mCount:I

.field private mIsExempted:Z

.field private mLevel:I

.field private mMainUrl:Ljava/lang/String;

.field private mTimestamp:J

.field private mTrackerUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIZZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->mMainUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->mTrackerUrl:Ljava/lang/String;

    const/4 p1, 0x0

    if-ltz p3, :cond_0

    const/4 p2, 0x2

    if-le p3, p2, :cond_1

    :cond_0
    move p3, p1

    :cond_1
    iput p3, p0, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->mLevel:I

    if-gez p4, :cond_2

    move p4, p1

    :cond_2
    iput p4, p0, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->mCount:I

    iput-boolean p5, p0, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->mIsExempted:Z

    iput-boolean p6, p0, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->mCookieAccess:Z

    const-wide/16 p1, 0x0

    cmp-long p3, p7, p1

    if-gez p3, :cond_3

    move-wide p7, p1

    :cond_3
    iput-wide p7, p0, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->mTimestamp:J

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->mCount:I

    return p0
.end method

.method public getLevel()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->mLevel:I

    return p0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->mTimestamp:J

    return-wide v0
.end method

.method public getTrackerUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;->mTrackerUrl:Ljava/lang/String;

    return-object p0
.end method
