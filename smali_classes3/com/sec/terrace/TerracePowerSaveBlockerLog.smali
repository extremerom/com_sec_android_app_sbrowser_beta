.class public Lcom/sec/terrace/TerracePowerSaveBlockerLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/TerracePowerSaveBlockerLog$LogItem;
    }
.end annotation


# direct methods
.method public static getLogList()Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/TerracePowerSaveBlockerLog$LogItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/device/power_save_blocker/PowerSaveBlockerLog;->getLogList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/device/power_save_blocker/PowerSaveBlockerLog$LogItem;

    new-instance v3, Lcom/sec/terrace/TerracePowerSaveBlockerLog$LogItem;

    invoke-virtual {v2}, Lorg/chromium/device/power_save_blocker/PowerSaveBlockerLog$LogItem;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Lorg/chromium/device/power_save_blocker/PowerSaveBlockerLog$LogItem;->getLog()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, Lcom/sec/terrace/TerracePowerSaveBlockerLog$LogItem;-><init>(JLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
