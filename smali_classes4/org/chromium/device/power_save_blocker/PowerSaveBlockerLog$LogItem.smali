.class public Lorg/chromium/device/power_save_blocker/PowerSaveBlockerLog$LogItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/power_save_blocker/PowerSaveBlockerLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogItem"
.end annotation


# instance fields
.field mLog:Ljava/lang/String;

.field mTime:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/device/power_save_blocker/PowerSaveBlockerLog$LogItem;->mTime:J

    iput-object p3, p0, Lorg/chromium/device/power_save_blocker/PowerSaveBlockerLog$LogItem;->mLog:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLog()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/power_save_blocker/PowerSaveBlockerLog$LogItem;->mLog:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/device/power_save_blocker/PowerSaveBlockerLog$LogItem;->mTime:J

    return-wide v0
.end method
