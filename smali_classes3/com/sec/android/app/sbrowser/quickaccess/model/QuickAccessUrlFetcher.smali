.class public Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$ResultListener;
    }
.end annotation


# instance fields
.field private mServerInfo:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher;->mServerInfo:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;

    return-void
.end method


# virtual methods
.method public fetch(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$ResultListener;)V
    .locals 7
    .param p3    # Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$ResultListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    new-instance v6, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$1;

    const-string v2, "GET"

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher;->mServerInfo:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->getEndpointForGetItem(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$ResultListener;)V

    const-string v0, "ETag"

    invoke-virtual {v6, v0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;->addResponseHeaderName(Ljava/lang/String;)V

    const-string v0, "X-Api-Key"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher;->mServerInfo:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->getApiKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getUrlMigrationEtag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "If-None-Match"

    invoke-virtual {v6, v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->QUICK_ACCESS:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    invoke-static {p1, v6, p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/MessageSender;->sendMessage(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string p1, "QuickAccessUrlFetcher"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$ResultListener;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method
