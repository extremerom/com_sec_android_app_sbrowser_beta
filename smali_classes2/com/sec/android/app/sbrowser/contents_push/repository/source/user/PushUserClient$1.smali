.class Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$1;
.super Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient;->register(Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$Callback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$1;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$1;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$Callback;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener;-><init>(Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;)V

    return-void
.end method


# virtual methods
.method public onFailure(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string p1, "Failed to register: "

    const-string p2, "PushUserClient"

    invoke-static {p1, p3, p2}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$1;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$Callback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$Callback;->onFailure()V

    return-void
.end method

.method public onSuccess(Landroid/content/Context;Ljava/util/Map;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    const-string p1, "PushUserClient"

    if-nez p3, :cond_0

    const-string p2, "Response is null! Can\'t get ID!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$1;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$Callback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$Callback;->onFailure()V

    return-void

    :cond_0
    :try_start_0
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    const-class v0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushUser;

    invoke-virtual {p2, p3, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/contents_push/domain/PushUser;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p3, "Push device register success"

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$1;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$Callback;

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$Callback;->onSuccess(Lcom/sec/android/app/sbrowser/contents_push/domain/PushUser;)V

    return-void

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$1;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$Callback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$Callback;->onFailure()V

    return-void
.end method
