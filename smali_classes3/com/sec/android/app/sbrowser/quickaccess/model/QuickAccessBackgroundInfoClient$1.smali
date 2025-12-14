.class Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;->fetchBackgroundInfo(Lcom/sec/android/app/sbrowser/common/model/global_config/FetchBuilder;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient$RequestBackgroundInfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient$RequestBackgroundInfoCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient$RequestBackgroundInfoCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient$1;->val$callback:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient$RequestBackgroundInfoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/content/Context;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient$1;->val$callback:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient$RequestBackgroundInfoCallback;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient$RequestBackgroundInfoCallback;->onFailed(Landroid/content/Context;I)V

    return-void
.end method

.method public onFetched(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;->body:Ljava/io/ByteArrayOutputStream;

    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;->parseQuickAccessBackgroundInfo(Lorg/json/JSONObject;)Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient$1;->val$callback:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient$RequestBackgroundInfoCallback;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient$RequestBackgroundInfoCallback;->onSuccess(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QuickAccess background response parsing error\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "QuickAccessBackgroundInfoClient"

    invoke-static {p2, v0, v1}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient$1;->val$callback:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient$RequestBackgroundInfoCallback;

    const/4 p2, -0x1

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient$RequestBackgroundInfoCallback;->onFailed(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
