.class public Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingStatsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingStatsHelper$Natives;,
        Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingStatsHelper$SafeBrowsingStatsCallback;
    }
.end annotation


# instance fields
.field private mNativeTinSafeBrowsingStatsHelper:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingStatsHelperJni;->get()Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingStatsHelper$Natives;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingStatsHelper$Natives;->init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingStatsHelper;->mNativeTinSafeBrowsingStatsHelper:J

    return-void
.end method

.method public static addSafeBrowsingEntryToList(Ljava/util/List;Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingEntry;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingEntry;",
            ">;",
            "Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingEntry;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static createSafeBrowsingEntry(Ljava/lang/String;JZ)Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingEntry;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingEntry;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingEntry;-><init>(Ljava/lang/String;JZ)V

    return-object v0
.end method

.method private static createSafeBrowsingResultList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method


# virtual methods
.method public deleteSelected(Ljava/lang/String;J)V
    .locals 7

    iget-wide v0, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingStatsHelper;->mNativeTinSafeBrowsingStatsHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingStatsHelperJni;->get()Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingStatsHelper$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingStatsHelper;->mNativeTinSafeBrowsingStatsHelper:J

    move-object v4, p1

    move-wide v5, p2

    invoke-interface/range {v1 .. v6}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingStatsHelper$Natives;->deleteSelected(JLjava/lang/String;J)V

    return-void
.end method

.method public getSafeBrowsingStats(JJLcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingStatsHelper$SafeBrowsingStatsCallback;)V
    .locals 9

    iget-wide v0, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingStatsHelper;->mNativeTinSafeBrowsingStatsHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingStatsHelperJni;->get()Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingStatsHelper$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingStatsHelper;->mNativeTinSafeBrowsingStatsHelper:J

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-interface/range {v1 .. v8}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingStatsHelper$Natives;->getSafeBrowsingStats(JJJLcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingStatsHelper$SafeBrowsingStatsCallback;)V

    return-void
.end method
