.class Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$1;
.super Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher;->fetch(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher;

.field final synthetic val$itemId:Ljava/lang/String;

.field final synthetic val$resultListener:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$ResultListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$ResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$1;->val$itemId:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$1;->val$resultListener:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$ResultListener;

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onJsonObjectHttpError(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$1;->val$resultListener:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$ResultListener;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;->responseCode:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$1;->val$itemId:Ljava/lang/String;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;->errorMessage:Ljava/lang/String;

    invoke-interface {p1, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$ResultListener;->onNeedRetry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$1;->val$itemId:Ljava/lang/String;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;->errorMessage:Ljava/lang/String;

    invoke-interface {p1, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$ResultListener;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$1;->val$itemId:Ljava/lang/String;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse$Error;->errorMessage:Ljava/lang/String;

    invoke-interface {p1, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$ResultListener;->onNeedRetry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onJsonObjectInvalidResponseError(Landroid/content/Context;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$1;->val$resultListener:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$ResultListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$1;->val$itemId:Ljava/lang/String;

    const-string v0, "Response type is not json"

    invoke-interface {p1, p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$ResultListener;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onJsonObjectJsonParsingError(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$1;->val$resultListener:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$ResultListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$1;->val$itemId:Ljava/lang/String;

    const-string p2, "Failed to parse json"

    invoke-interface {p1, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$ResultListener;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onJsonObjectResponse(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "ETag"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :goto_0
    const-string p3, ""

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_2

    :cond_2
    :goto_1
    move-object p1, p3

    :goto_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$1;->val$itemId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->setUrlMigrationEtag(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-class v1, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/URLInfo;

    invoke-virtual {p1, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/URLInfo;

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/URLInfo;->mSiteUrl:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    move-object p2, p3

    goto :goto_3

    :cond_3
    iget-object p2, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/URLInfo;->mSiteUrl:Ljava/lang/String;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessQueryParameterUtils;->injectIUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_3
    iget-object p1, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/URLInfo;->mTouchIcons:Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/TouchIcon;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/TouchIcon;->mIconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/TouchIcon;

    iget-object p3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/pojo/TouchIcon;->mIconPath:Ljava/lang/String;

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$1;->val$resultListener:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$ResultListener;

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$1;->val$itemId:Ljava/lang/String;

    invoke-interface {p1, p0, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$ResultListener;->onFetched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method
