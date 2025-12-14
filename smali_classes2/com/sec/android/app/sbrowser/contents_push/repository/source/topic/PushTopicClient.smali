.class public Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SyncPushTopicsCallback;,
        Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SubsFinishCallback;
    }
.end annotation


# instance fields
.field private mRestoreFallback:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetchPushTopics(Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SyncPushTopicsCallback;)V
    .locals 4
    .param p1    # Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SyncPushTopicsCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    new-instance v0, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;

    new-instance v1, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiGetTopics;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getPushUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->createParams()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiGetTopics;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$1;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient;->mRestoreFallback:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;

    invoke-direct {v2, p0, v3, p1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$1;-><init>(Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SyncPushTopicsCallback;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;-><init>(Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiType;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$MessageListener;)V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageSender;->sendMessage(Landroid/content/Context;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to create sync push topics message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PushTopicClient"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SyncPushTopicsCallback;->onFailure()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setRestoreFallback(Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient;->mRestoreFallback:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;

    return-void
.end method

.method public updateSubsTopicState(Ljava/util/Map;Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SubsFinishCallback;)V
    .locals 3
    .param p2    # Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SubsFinishCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SubsFinishCallback;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;

    new-instance v1, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiUpdateSubsTopic;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getPushUserId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiUpdateSubsTopic;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$2;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient;->mRestoreFallback:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;

    invoke-direct {p1, p0, v2, p2}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$2;-><init>(Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SubsFinishCallback;)V

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;-><init>(Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiType;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$MessageListener;)V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageSender;->sendMessage(Landroid/content/Context;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to create update topic state message: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PushTopicClient"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
