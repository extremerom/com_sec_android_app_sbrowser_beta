.class public Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$Callback;
    }
.end annotation


# instance fields
.field private final mRestoreFallback:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient;->mRestoreFallback:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;

    return-void
.end method


# virtual methods
.method public register(Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$Callback;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "?fr="

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x18705

    invoke-static {v1, v2}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTaskScheduler;->cancel(Landroid/content/Context;I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;->getFrom()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p1, ""

    :goto_0
    new-instance v0, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;

    new-instance v1, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiRegister;

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->createJsonBytes()[B

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiRegister;-><init>(Ljava/lang/String;[B)V

    new-instance p1, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$1;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient;->mRestoreFallback:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;

    invoke-direct {p1, p0, v2, p2}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$1;-><init>(Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$Callback;)V

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;-><init>(Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiType;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage$MessageListener;)V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageSender;->sendMessage(Landroid/content/Context;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to register: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PushUserClient"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$Callback;->onFailure()V

    :goto_2
    return-void
.end method

.method public updateDeviceInfo(Ljava/lang/String;Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$Callback;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;

    new-instance v1, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiUpdateDevice;

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->createJsonBytes()[B

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiUpdateDevice;-><init>(Ljava/lang/String;[B)V

    new-instance p1, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$2;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient;->mRestoreFallback:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;

    invoke-direct {p1, p0, v2, p2}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$2;-><init>(Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$Callback;)V

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

    const-string p2, "Failed to sync device information: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PushUserClient"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
