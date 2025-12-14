.class public final Lcom/sec/terrace/browser/history/TerraceHistoryModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/history/TerraceHistoryModel$Natives;,
        Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;
    }
.end annotation


# instance fields
.field mEndTimeForTest:D
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mListener:Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;

.field private mNativeTinHistoryModel:J
    .annotation build Lorg/jni_zero/AccessedByNative;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mNativeTinHistoryModel:J

    invoke-static {}, Lcom/sec/terrace/browser/history/TerraceHistoryModelJni;->get()Lcom/sec/terrace/browser/history/TerraceHistoryModel$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/history/TerraceHistoryModel$Natives;->init(Lcom/sec/terrace/browser/history/TerraceHistoryModel;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mNativeTinHistoryModel:J

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->init(Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;J)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mNativeTinHistoryModel:J

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->init(Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/history/TerraceHistoryModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->clearHistoryURLsDone()V

    return-void
.end method

.method private static addHistoryItemToList(Ljava/util/List;Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
            ">;",
            "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static buildHistoryItem(Ljava/lang/String;Ljava/lang/String;JI)Lcom/sec/terrace/browser/history/TerraceHistoryItem;
    .locals 7
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v6, Lcom/sec/terrace/browser/history/TerraceHistoryItem;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    return-object v6
.end method

.method private clearHistoryURLsDone()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mListener:Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;

    invoke-interface {p0}, Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;->clearHistoryURLsDone()V

    return-void
.end method

.method private static createHistoryItemList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method private init(Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mNativeTinHistoryModel:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mListener:Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;

    return-void
.end method

.method private onHistoryCountReceived(I)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "History count received "

    const-string v1, "TerraceHistoryModel"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mListener:Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;->onHistoryCountReceived(I)V

    return-void
.end method


# virtual methods
.method public addHistoryItem(Ljava/lang/String;J)V
    .locals 8

    iget-wide v0, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mNativeTinHistoryModel:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/browser/history/TerraceHistoryModelJni;->get()Lcom/sec/terrace/browser/history/TerraceHistoryModel$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mNativeTinHistoryModel:J

    move-object v4, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-interface/range {v1 .. v7}, Lcom/sec/terrace/browser/history/TerraceHistoryModel$Natives;->addHistoryItem(JLcom/sec/terrace/browser/history/TerraceHistoryModel;Ljava/lang/String;J)V

    return-void
.end method

.method public clearAllHistory()V
    .locals 9

    new-instance v0, Lcom/sec/terrace/browser/history/TerraceHistoryModel$1;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/history/TerraceHistoryModel$1;-><init>(Lcom/sec/terrace/browser/history/TerraceHistoryModel;)V

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->clearBrowsingData(Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;ZZZZZZZI)Z

    return-void
.end method

.method public deleteHistory(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mNativeTinHistoryModel:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, [Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array v8, p1, [J

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v8, v1

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/history/TerraceHistoryModelJni;->get()Lcom/sec/terrace/browser/history/TerraceHistoryModel$Natives;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mNativeTinHistoryModel:J

    move-object v6, p0

    invoke-interface/range {v3 .. v8}, Lcom/sec/terrace/browser/history/TerraceHistoryModel$Natives;->removeVisits(JLcom/sec/terrace/browser/history/TerraceHistoryModel;[Ljava/lang/String;[J)V

    return-void
.end method

.method public destroy()V
    .locals 6

    iget-wide v0, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mNativeTinHistoryModel:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/browser/history/TinHistoryListenerHelper;->getInstance()Lcom/sec/terrace/browser/history/TinHistoryListenerHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mListener:Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/history/TinHistoryListenerHelper;->removeListener(Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;)V

    invoke-static {}, Lcom/sec/terrace/browser/history/TerraceHistoryModelJni;->get()Lcom/sec/terrace/browser/history/TerraceHistoryModel$Natives;

    move-result-object v0

    iget-wide v4, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mNativeTinHistoryModel:J

    invoke-interface {v0, v4, v5, p0}, Lcom/sec/terrace/browser/history/TerraceHistoryModel$Natives;->destroy(JLcom/sec/terrace/browser/history/TerraceHistoryModel;)V

    iput-wide v2, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mNativeTinHistoryModel:J

    return-void
.end method

.method public getAllHistoryByDuration(DDI)V
    .locals 11

    move-object v3, p0

    iget-wide v0, v3, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mNativeTinHistoryModel:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/browser/history/TerraceHistoryModelJni;->get()Lcom/sec/terrace/browser/history/TerraceHistoryModel$Natives;

    move-result-object v0

    iget-wide v1, v3, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mNativeTinHistoryModel:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    move-wide v6, p1

    move-wide v8, p3

    move/from16 v10, p5

    invoke-interface/range {v0 .. v10}, Lcom/sec/terrace/browser/history/TerraceHistoryModel$Natives;->getAllHistory(JLcom/sec/terrace/browser/history/TerraceHistoryModel;IIDDI)V

    return-void
.end method

.method public getHistoryCount()V
    .locals 10

    iget-wide v0, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mNativeTinHistoryModel:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    const-string v0, "TerraceHistoryModel"

    const-string v1, "Get history count"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/history/TerraceHistoryModelJni;->get()Lcom/sec/terrace/browser/history/TerraceHistoryModel$Natives;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mNativeTinHistoryModel:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v8, v0

    const-wide/16 v6, 0x0

    move-object v5, p0

    invoke-interface/range {v2 .. v9}, Lcom/sec/terrace/browser/history/TerraceHistoryModel$Natives;->getHistoryCount(JLcom/sec/terrace/browser/history/TerraceHistoryModel;DD)V

    return-void
.end method

.method public getHistoryCountByDuration(JJ)V
    .locals 10

    iget-wide v0, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mNativeTinHistoryModel:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    const-string v0, "TerraceHistoryModel"

    const-string v1, "Get history count"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/history/TerraceHistoryModelJni;->get()Lcom/sec/terrace/browser/history/TerraceHistoryModel$Natives;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mNativeTinHistoryModel:J

    long-to-double v6, p1

    long-to-double v8, p3

    move-object v5, p0

    invoke-interface/range {v2 .. v9}, Lcom/sec/terrace/browser/history/TerraceHistoryModel$Natives;->getHistoryCount(JLcom/sec/terrace/browser/history/TerraceHistoryModel;DD)V

    return-void
.end method

.method public getNativeTinHistoryModel()J
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mNativeTinHistoryModel:J

    return-wide v0
.end method

.method public getRecentHistoryByCount(I)V
    .locals 12

    iget-wide v0, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mNativeTinHistoryModel:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/browser/history/TerraceHistoryModelJni;->get()Lcom/sec/terrace/browser/history/TerraceHistoryModel$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mNativeTinHistoryModel:J

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    move v11, p1

    invoke-interface/range {v1 .. v11}, Lcom/sec/terrace/browser/history/TerraceHistoryModel$Natives;->getAllHistory(JLcom/sec/terrace/browser/history/TerraceHistoryModel;IIDDI)V

    return-void
.end method

.method public getRecentHistoryByDuration(I)V
    .locals 13

    iget-wide v0, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mNativeTinHistoryModel:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    long-to-double v10, v0

    iput-wide v10, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mEndTimeForTest:D

    mul-int/lit16 p1, p1, 0x3e8

    int-to-double v0, p1

    sub-double v8, v10, v0

    invoke-static {}, Lcom/sec/terrace/browser/history/TerraceHistoryModelJni;->get()Lcom/sec/terrace/browser/history/TerraceHistoryModel$Natives;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mNativeTinHistoryModel:J

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    move-object v5, p0

    invoke-interface/range {v2 .. v12}, Lcom/sec/terrace/browser/history/TerraceHistoryModel$Natives;->getAllHistory(JLcom/sec/terrace/browser/history/TerraceHistoryModel;IIDDI)V

    return-void
.end method

.method public initListenerHelper()V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/history/TinHistoryListenerHelper;->getInstance()Lcom/sec/terrace/browser/history/TinHistoryListenerHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mListener:Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/history/TinHistoryListenerHelper;->addListener(Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;)V

    return-void
.end method

.method public onHistoryDataReceived(Ljava/util/List;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/history/TerraceHistoryItem;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "History data received "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TerraceHistoryModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/terrace/browser/history/TerraceHistoryModel;->mListener:Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/history/TerraceHistoryModel$TerraceHistoryManagerlListner;->onHistoryDataReceived(Ljava/util/List;)V

    return-void
.end method
