.class public Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask;
.super Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartTask(Landroid/content/Context;Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskParameters;Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;)Z
    .locals 5

    invoke-virtual {p2}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    const-string p2, "push_user_id"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringFromPersistableBundle(Landroid/os/PersistableBundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "from"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringFromPersistableBundle(Landroid/os/PersistableBundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "push_id"

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringFromPersistableBundle(Landroid/os/PersistableBundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "server_type"

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringFromPersistableBundle(Landroid/os/PersistableBundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "?fr="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "&hi="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiDeregister;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiDeregister;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask$2;

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask$2;-><init>(Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask;Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTask$TerraceTaskFinishedCallback;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask;->requestDeregister(Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiDeregister;Ljava/lang/String;Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask$Listener;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onStopTask(Landroid/content/Context;Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskParameters;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public requestDeregister(Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiDeregister;Ljava/lang/String;Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask$Listener;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    new-instance v0, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;

    new-instance v1, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask$1;

    invoke-direct {v1, p0, p3}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask$1;-><init>(Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask;Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask$Listener;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;-><init>(Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiType;Ljava/lang/String;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$MessageListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageSender;->sendMessage(Landroid/content/Context;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to deregister: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PushDeregisterTask"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushDeregisterTask$Listener;->onSuccess()V

    :goto_0
    return-void
.end method
