.class public Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log$Debug;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Debug"
.end annotation


# direct methods
.method private static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static http(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SI.IOThread.Http"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Log$Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
