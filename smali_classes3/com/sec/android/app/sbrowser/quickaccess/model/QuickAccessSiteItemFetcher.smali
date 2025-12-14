.class public Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher$ResultListener;
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

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;->mServerInfo:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;

    return-void
.end method

.method private getTopDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    :try_start_0
    new-instance p0, Lcom/google/common/net/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/google/common/net/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/common/net/b;->b()Lcom/google/common/net/b;

    move-result-object p0

    iget-object p0, p0, Lcom/google/common/net/b;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "invalid host "

    const-string v1, " "

    invoke-static {v0, p1, v1}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "QuickAccessSiteItemFetcher"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method private getUrlWithoutQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "invalid "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickAccessSiteItemFetcher"

    invoke-static {p1, p0}, Lcom/sec/sbrowser/spl/wrapper/MajoLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public fetch(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher$ResultListener;)V
    .locals 9

    :try_start_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;->getUrlWithoutQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    const-string p0, "input url is invalid"

    invoke-interface {p3, p2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher$ResultListener;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;->getTopDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUpdaterGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUpdaterGlobalConfigUtils$Companion;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUpdaterGlobalConfigUtils$Companion;->getRequestDomain(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    :cond_2
    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher$1;

    const-string v5, "GET"

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;->mServerInfo:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;

    invoke-virtual {v3, p1, v2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->getEndpointForSiteItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v1

    move-object v4, p0

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher$ResultListener;)V

    const-string v0, "X-Api-Key"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher;->mServerInfo:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessServerItem;->getApiKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;->QUICK_ACCESS:Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;

    invoke-static {p1, v1, p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/MessageSender;->sendMessage(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadInfo;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string p1, "QuickAccessSiteItemFetcher"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSiteItemFetcher$ResultListener;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method
