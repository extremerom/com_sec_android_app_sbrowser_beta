.class public Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper$Natives;,
        Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper$PopupBlockerStatsCallback;
    }
.end annotation


# instance fields
.field private mNativeTinPopupBlockerStatsHelper:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelperJni;->get()Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper$Natives;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper$Natives;->init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper;->mNativeTinPopupBlockerStatsHelper:J

    return-void
.end method

.method public static addPopupEntryToList(Ljava/util/List;Lcom/sec/terrace/browser/popup_blocker/TerracePopupEntry;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/popup_blocker/TerracePopupEntry;",
            ">;",
            "Lcom/sec/terrace/browser/popup_blocker/TerracePopupEntry;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static createPopupEntry(Ljava/lang/String;JZ)Lcom/sec/terrace/browser/popup_blocker/TerracePopupEntry;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/popup_blocker/TerracePopupEntry;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/terrace/browser/popup_blocker/TerracePopupEntry;-><init>(Ljava/lang/String;JZ)V

    return-object v0
.end method

.method public static createPopupResultList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/popup_blocker/TerracePopupEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private getPopupBlockerCountsInternal(JJZLcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper$PopupBlockerStatsCallback;)V
    .locals 11

    move-object v0, p0

    iget-wide v1, v0, Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper;->mNativeTinPopupBlockerStatsHelper:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelperJni;->get()Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper$Natives;

    move-result-object v2

    iget-wide v3, v0, Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper;->mNativeTinPopupBlockerStatsHelper:J

    move-wide v5, p1

    move-wide v7, p3

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v2 .. v10}, Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper$Natives;->getPopupBlockerCounts(JJJZLcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper$PopupBlockerStatsCallback;)V

    return-void
.end method


# virtual methods
.method public getPopupBlockerCounts(JJLcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper$PopupBlockerStatsCallback;)V
    .locals 8

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->isAllowPopupsEnabled()Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper;->getPopupBlockerCountsInternal(JJZLcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper$PopupBlockerStatsCallback;)V

    return-void
.end method

.method public getPopupBlockerStats(JJLcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper$PopupBlockerStatsCallback;)V
    .locals 9

    iget-wide v0, p0, Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper;->mNativeTinPopupBlockerStatsHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelperJni;->get()Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper;->mNativeTinPopupBlockerStatsHelper:J

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-interface/range {v1 .. v8}, Lcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper$Natives;->getPopupBlockerStats(JJJLcom/sec/terrace/browser/popup_blocker/TerracePopupBlockerStatsHelper$PopupBlockerStatsCallback;)V

    return-void
.end method
