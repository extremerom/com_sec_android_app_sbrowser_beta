.class Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->restore(Landroid/content/Context;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$message:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource$2;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource$2;->val$message:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 1

    const-string p0, "PushUserDataSource"

    const-string v0, "Push device restore failed."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Push device restore success. Try failed request again: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource$2;->val$message:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;->getApiType()Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiType;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushUserDataSource"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource$2;->val$message:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;->getApiType()Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiType;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource$2;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->a(Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;)Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getPushUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiType;->setPushUserId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource$2;->val$context:Landroid/content/Context;

    new-instance v2, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource$2;->val$message:Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;-><init>(Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;)V

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageSender;->sendMessage(Landroid/content/Context;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to retry : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
