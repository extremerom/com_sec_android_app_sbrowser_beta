.class public Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelper$Natives;,
        Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelper$ContentBlockStatsCallback;
    }
.end annotation


# instance fields
.field private mNativeTinContentBlockStatsHelper:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelperJni;->get()Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelper$Natives;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelper$Natives;->init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelper;->mNativeTinContentBlockStatsHelper:J

    return-void
.end method

.method public static addContentBlockStatsInfoToList(Ljava/util/List;Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsInfo;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsInfo;",
            ">;",
            "Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsInfo;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static createContentBlockResultList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static createContentBlockStatsInfo(Ljava/lang/String;JZ)Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsInfo;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsInfo;-><init>(Ljava/lang/String;JZ)V

    return-object v0
.end method

.method private getContentBlockCountsInternal(JJZLcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelper$ContentBlockStatsCallback;)V
    .locals 11

    move-object v0, p0

    iget-wide v1, v0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelper;->mNativeTinContentBlockStatsHelper:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelperJni;->get()Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelper$Natives;

    move-result-object v2

    iget-wide v3, v0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelper;->mNativeTinContentBlockStatsHelper:J

    move-wide v5, p1

    move-wide v7, p3

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v2 .. v10}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelper$Natives;->getContentBlockCounts(JJJZLcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelper$ContentBlockStatsCallback;)V

    return-void
.end method


# virtual methods
.method public getContentBlockCounts(JJLcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelper$ContentBlockStatsCallback;)V
    .locals 7

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelper;->getContentBlockCountsInternal(JJZLcom/sec/terrace/browser/content_block/TerraceContentBlockStatsHelper$ContentBlockStatsCallback;)V

    return-void
.end method
