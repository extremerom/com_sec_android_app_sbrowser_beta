.class Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$1;
.super Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient;->fetchPushTopics(Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SyncPushTopicsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SyncPushTopicsCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SyncPushTopicsCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$1;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$1;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SyncPushTopicsCallback;

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

    const-string p1, "Sync push topics failed: "

    const-string p2, "PushTopicClient"

    invoke-static {p1, p3, p2}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$1;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SyncPushTopicsCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SyncPushTopicsCallback;->onFailure()V

    :cond_0
    return-void
.end method

.method public onSuccess(Landroid/content/Context;Ljava/util/Map;Lorg/json/JSONObject;)V
    .locals 8
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

    const-string p1, "PushTopicClient"

    if-nez p3, :cond_1

    const-string p2, "Response is null! Can\'t get topics!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$1;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SyncPushTopicsCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SyncPushTopicsCallback;->onFailure()V

    :cond_0
    return-void

    :cond_1
    :try_start_0
    const-string p2, "topics"

    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_5

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    :try_start_1
    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "nm"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "rc"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_4

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    new-instance v6, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, v4, v2, v5, v3}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-virtual {p3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move v2, v7

    goto :goto_1

    :catch_0
    const-string v3, "Failed to get file of PushTopic."

    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$1;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SyncPushTopicsCallback;

    if-eqz p0, :cond_6

    invoke-interface {p0, p3}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SyncPushTopicsCallback;->onSuccess(Ljava/util/Set;)V

    :cond_6
    return-void

    :catch_1
    const-string p2, "Can\'t get topics in response json"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$1;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SyncPushTopicsCallback;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SyncPushTopicsCallback;->onFailure()V

    :cond_7
    return-void
.end method
