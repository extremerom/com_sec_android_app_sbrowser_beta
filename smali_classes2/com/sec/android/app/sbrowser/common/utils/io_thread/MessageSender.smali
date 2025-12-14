.class public Lcom/sec/android/app/sbrowser/common/utils/io_thread/MessageSender;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static sendMessage(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;)V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPoolManager;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPoolManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;->getRunType()Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPoolManager;->getThreadPool(Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;)Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPool;->execute(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;)V

    return-void
.end method
