.class public Lorg/chromium/device/power_save_blocker/PowerSaveBlockerLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/power_save_blocker/PowerSaveBlockerLog$LogItem;
    }
.end annotation


# static fields
.field private static sLogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/device/power_save_blocker/PowerSaveBlockerLog$LogItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static appendLog(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lorg/chromium/device/power_save_blocker/PowerSaveBlockerLog;->sLogList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lorg/chromium/device/power_save_blocker/PowerSaveBlockerLog;->sLogList:Ljava/util/List;

    :cond_0
    sget-object v0, Lorg/chromium/device/power_save_blocker/PowerSaveBlockerLog;->sLogList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/chromium/device/power_save_blocker/PowerSaveBlockerLog;->sLogList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lorg/chromium/device/power_save_blocker/PowerSaveBlockerLog;->sLogList:Ljava/util/List;

    new-instance v1, Lorg/chromium/device/power_save_blocker/PowerSaveBlockerLog$LogItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p0}, Lorg/chromium/device/power_save_blocker/PowerSaveBlockerLog$LogItem;-><init>(JLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getLogList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/chromium/device/power_save_blocker/PowerSaveBlockerLog$LogItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/chromium/device/power_save_blocker/PowerSaveBlockerLog;->sLogList:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method
