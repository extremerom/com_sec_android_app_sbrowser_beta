.class public Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;
.super Lcom/samsung/android/sdk/bixby2/action/ActionHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$InitializeCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby2/action/ActionHandler;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;->lambda$searchBookmarkItem$0(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V

    return-void
.end method

.method private deleteBrowsingData(Landroid/content/Context;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$5;-><init>(Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;->nativeInitialize(Landroid/content/Context;Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$InitializeCallback;)V

    return-void
.end method

.method private deleteHistory(Landroid/content/Context;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$2;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$2;-><init>(Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;->nativeInitialize(Landroid/content/Context;Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$InitializeCallback;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->getInstance()Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->deleteAllMediaHistoryData(Landroid/content/Context;)Z

    return-void
.end method

.method private getBookmarkKeyword(Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)Ljava/lang/String;
    .locals 5

    const-string p0, "params"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    const-string p1, "BixbyActionHandler"

    const-string v0, "failure"

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "keyword"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v0, p0, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkUtil;->sendJsonResult(Ljava/lang/String;Lorg/json/JSONArray;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V

    const-string p0, "mandatory param(s) missing."

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v1

    :cond_4
    :goto_1
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v0, p0, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkUtil;->sendJsonResult(Ljava/lang/String;Lorg/json/JSONArray;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V

    const-string p0, "params/type cannot be null or empty."

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private synthetic lambda$searchBookmarkItem$0(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    new-instance v1, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$1;-><init>(Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;)V

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;)V

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;->getBookmarkKeyword(Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0, p0, p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBixbySearchResults(Ljava/lang/String;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V

    :cond_0
    return-void
.end method

.method private nativeInitialize(Landroid/content/Context;Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$InitializeCallback;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$3;

    invoke-direct {v1, p0, p2}, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$3;-><init>(Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$InitializeCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$4;

    invoke-direct {v1, p0, p2}, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$4;-><init>(Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$InitializeCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/terrace/TerraceHelper;->initializeAsync(Landroid/content/Context;Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string p2, "NotEnoughStorage"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->showStorageFullDialog(Landroid/content/Context;)Lm/l;

    :cond_1
    :goto_1
    return-void
.end method

.method private searchBookmarkItem(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/capsule/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/capsule/a;-><init>(Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;->nativeInitialize(Landroid/content/Context;Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$InitializeCallback;)V

    return-void
.end method


# virtual methods
.method public executeAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V
    .locals 2
    .param p4    # Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Execute action : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BixbyActionHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "DeleteHistory"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "DeleteBrowsingData"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "SearchBookmarks"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, p1, p4}, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;->deleteHistory(Landroid/content/Context;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1, p4}, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;->deleteBrowsingData(Landroid/content/Context;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1, p3, p4}, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;->searchBookmarkItem(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3174aeeb -> :sswitch_2
        0x58725e7c -> :sswitch_1
        0x5aaa8049 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
