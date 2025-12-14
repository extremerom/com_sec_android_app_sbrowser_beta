.class public Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog$LogItem;
    }
.end annotation


# static fields
.field static sLogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog$LogItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog$LogItem;Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog$LogItem;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog;->lambda$getLogList$0(Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog$LogItem;Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog$LogItem;)I

    move-result p0

    return p0
.end method

.method public static appendLog(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog;->sLogList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog;->sLogList:Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog;->sLogList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog;->sLogList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog;->sLogList:Ljava/util/List;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog$LogItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p0}, Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog$LogItem;-><init>(JLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getLogList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog$LogItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog;->sLogList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog;->sLogList:Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog;->sLogList:Ljava/util/List;

    invoke-static {}, Lcom/sec/terrace/TerracePowerSaveBlockerLog;->getLogList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/TerracePowerSaveBlockerLog$LogItem;

    new-instance v3, Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog$LogItem;

    invoke-virtual {v2}, Lcom/sec/terrace/TerracePowerSaveBlockerLog$LogItem;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/sec/terrace/TerracePowerSaveBlockerLog$LogItem;->getLog()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog$LogItem;-><init>(JLjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, LB0/r;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, LB0/r;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static synthetic lambda$getLogList$0(Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog$LogItem;Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog$LogItem;)I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog$LogItem;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog$LogItem;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0
.end method
