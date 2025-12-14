.class public Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultIconUpdater:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;

.field private mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mServerItem:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->mServerItem:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->mDefaultIconUpdater:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->mServerItem:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->mDefaultIconUpdater:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->lambda$requestItems$0(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater$FetchListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->lambda$retryToUpdateIconsIfNeeded$2(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater$FetchListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater$Listener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->lambda$fetchIcon$3(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater$Listener;)V

    return-void
.end method

.method private createRequestUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->mServerItem:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->getEndpointForGetCPItems(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->lambda$retryToRequestItems$1(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;)V

    return-void
.end method

.method public static getQueryParametersForLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "&iuid=.+"

    const-string v1, "&iuid= "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$fetchIcon$3(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater$Listener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->mDefaultIconUpdater:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;->fetchIcon(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater$Listener;)Landroid/graphics/Bitmap;

    return-void
.end method

.method private synthetic lambda$requestItems$0(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->requestToServer(ZLcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;)V

    return-void
.end method

.method private synthetic lambda$retryToRequestItems$1(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->requestToServer(ZLcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;)V

    return-void
.end method

.method private synthetic lambda$retryToUpdateIconsIfNeeded$2(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater$FetchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->mDefaultIconUpdater:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;->retryToUpdateIconsIfNeeded(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater$FetchListener;)V

    return-void
.end method

.method private requestToServer(ZLcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;)V
    .locals 9
    .param p2    # Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "unhandled response: "

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->createRequestUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestToServer - query string: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->getQueryParametersForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QuickAccessClient"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->setLastRequestedTimestamp(J)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->getOpenHttpsURLConnection(Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v5, "X-Api-Key"

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->mServerItem:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->getApiKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_1

    const/16 v6, 0x130

    const-string v7, "ResponseCode : "

    if-eq v5, v6, :cond_0

    const/16 v6, 0x19c

    if-eq v5, v6, :cond_0

    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "(unhandled response)"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v0, p1, v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->updateQuickAccessUpdateHistory(Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->retryToRequestItems(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;)V

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    move-object v2, v4

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v4}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v0, p1, v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->updateQuickAccessUpdateHistory(Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->mServerItem:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->resetRetryCount()V

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;->onFailure()V

    goto/16 :goto_1

    :cond_1
    const-string v0, "HTTP_OK"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->readConnectionAsJson(Ljavax/net/ssl/HttpsURLConnection;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/QuickAccessListItem;->fromJson(Lorg/json/JSONObject;)Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/QuickAccessListItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/QuickAccessListItem;->toQuickAccessIconItemList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj5/b;->c(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v0, "Unexpected format of JSON data"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    const-string v5, "ResponseCode : 200 (OK), but unexpected format of json"

    invoke-virtual {p0, v1, v0, p1, v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->updateQuickAccessUpdateHistory(Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;->onFailure()V

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->DEFAULT_SERVER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    if-eq v7, v8, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessQueryParameterUtils;->getRefererUrlWithOnlyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "url is empty: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getItemId()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    const-string v6, "ResponseCode : 200 (OK)"

    invoke-virtual {p0, v1, v5, p1, v6}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->updateQuickAccessUpdateHistory(Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->mServerItem:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->resetRetryCount()V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->mDefaultIconUpdater:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;

    invoke-interface {p2, v5, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;->onSuccess(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater;Ljava/util/List;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v4, v2

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->updateQuickAccessUpdateHistory(Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->retryToRequestItems(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_7

    goto :goto_1

    :cond_7
    :goto_4
    return-void

    :goto_5
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw p0
.end method

.method private retryToRequestItems(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->mServerItem:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->isMaxRetryCountReached()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;->onFailure()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->mServerItem:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->increaseRetryCount()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/g;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/g;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;I)V

    const-wide/32 p0, 0x493e0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p0, p1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public fetchIcon(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater$Listener;)V
    .locals 3
    .param p2    # Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater$Listener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getOpenHttpsURLConnection(Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    return-object p0
.end method

.method public readConnectionAsJson(Ljavax/net/ssl/HttpsURLConnection;)Lorg/json/JSONObject;
    .locals 2

    new-instance p0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    :try_start_0
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "QAItems"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V

    return-object v0

    :catchall_1
    move-exception p1

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
.end method

.method public requestItems(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/g;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient$ResultListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public retryToUpdateIconsIfNeeded(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater$FetchListener;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater$FetchListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/h;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateQuickAccessUpdateHistory(Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V
    .locals 7
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getCurrentServerProfile()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->mServerItem:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->getCurrentRetryCount()I

    move-result v5

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessUpdateHistoryPreferenceFragment;->updateQuickAccessUpdateHistory(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZILjava/lang/String;)V

    return-void
.end method
