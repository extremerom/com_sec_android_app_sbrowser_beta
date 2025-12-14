.class public Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicManagerV1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private unsubscribe(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p0, "server_type"

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/google/firebase/messaging/i;

    const/4 p2, 0x1

    invoke-direct {p1, p3, p2}, Lcom/google/firebase/messaging/i;-><init>(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:LR5/p;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, LR5/j;->a:LH4/s;

    new-instance p3, LR5/p;

    invoke-direct {p3}, LR5/p;-><init>()V

    new-instance v0, LR5/l;

    invoke-direct {v0, p2, p1, p3}, LR5/l;-><init>(Ljava/util/concurrent/Executor;LR5/g;LR5/p;)V

    iget-object p1, p0, LR5/p;->b:Lcom/bumptech/glide/manager/o;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/manager/o;->h(LR5/m;)V

    invoke-virtual {p0}, LR5/p;->t()V

    return-void
.end method


# virtual methods
.method public unsubscribeV1TopicsIfNeeded()V
    .locals 11

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->isUnsubscribeV1TopicsDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "contents_push_preference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "current_topic"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "server_type"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "weight"

    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ab_test_group"

    invoke-interface {v0, v8, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "country_code"

    invoke-interface {v0, v10, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_1

    invoke-direct {p0, v0, v1, v3}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicManagerV1;->unsubscribe(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v5, :cond_2

    invoke-direct {p0, v0, v4, v5}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicManagerV1;->unsubscribe(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v7, :cond_3

    invoke-direct {p0, v0, v6, v7}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicManagerV1;->unsubscribe(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v9, :cond_4

    invoke-direct {p0, v0, v8, v9}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicManagerV1;->unsubscribe(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v2, :cond_5

    invoke-direct {p0, v0, v10, v2}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicManagerV1;->unsubscribe(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->setUnsubscribeV1Topics(Z)V

    return-void
.end method
