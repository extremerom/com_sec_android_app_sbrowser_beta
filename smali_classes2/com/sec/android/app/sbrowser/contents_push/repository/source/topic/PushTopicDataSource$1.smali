.class Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SyncPushTopicsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->syncPushTopics(Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource$1;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource$1;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource$1;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;->onFailure()V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource$1;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->d(Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource$1;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->getPushTopics()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->removeUnusedPushTopic(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource$1;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->f(Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;Ljava/util/Set;)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->setLastSyncTopicsTimeHours(J)V

    const-string p1, "PushTopicRepository"

    const-string v0, "Sync push topics success"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource$1;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->c(Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource$1;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->e(Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource$1;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->updateSubsTopicState()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource$1;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;->onSuccess()V

    :cond_3
    return-void
.end method
