.class public Lcom/sec/android/app/sbrowser/BixbyDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static initSbixby(Landroid/app/Application;)V
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby2/Sbixby;->getInstance()Lcom/samsung/android/sdk/bixby2/Sbixby;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;-><init>()V

    const-string v1, "DeleteHistory"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby2/Sbixby;->getInstance()Lcom/samsung/android/sdk/bixby2/Sbixby;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;-><init>()V

    const-string v1, "DeleteBrowsingData"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby2/Sbixby;->getInstance()Lcom/samsung/android/sdk/bixby2/Sbixby;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;-><init>()V

    const-string v1, "SearchBookmarks"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;)V

    return-void
.end method
