.class public Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog$LogItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog;
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

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog$LogItem;->mTime:J

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog$LogItem;->mLog:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLog()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog$LogItem;->mLog:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/media/common/MediaStaticLog$LogItem;->mTime:J

    return-wide v0
.end method
