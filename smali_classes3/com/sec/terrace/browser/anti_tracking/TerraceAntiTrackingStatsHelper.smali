.class public Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper$Natives;,
        Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper$AntiTrackingStatsCallback;
    }
.end annotation


# instance fields
.field private mNativeTinAntiTrackingStatsHelper:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelperJni;->get()Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper$Natives;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper$Natives;->init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper;->mNativeTinAntiTrackingStatsHelper:J

    return-void
.end method

.method public static addAntiTrackingStatsInfoToList(Ljava/util/List;Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;",
            ">;",
            "Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static createAntiTrackingResultList(I)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static createAntiTrackingStatsInfo(Ljava/lang/String;Ljava/lang/String;IIZZJ)Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v9, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IIZZJ)V

    return-object v9
.end method


# virtual methods
.method public getAntiTrackingStats(JJLcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper$AntiTrackingStatsCallback;)V
    .locals 8

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    const/4 v4, 0x0

    if-ltz v3, :cond_2

    cmp-long v3, p3, v1

    if-ltz v3, :cond_2

    cmp-long v3, p1, p3

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v5, p0, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper;->mNativeTinAntiTrackingStatsHelper:J

    cmp-long v1, v5, v1

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    :cond_1
    invoke-static {v4}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelperJni;->get()Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper;->mNativeTinAntiTrackingStatsHelper:J

    move-object v0, v1

    move-wide v1, v2

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper$Natives;->getAntiTrackingStats(JJJLcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper$AntiTrackingStatsCallback;)V

    return-void

    :cond_2
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p5, v0, v4}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper$AntiTrackingStatsCallback;->onStatsAvailable(Ljava/util/List;Z)V

    return-void
.end method
