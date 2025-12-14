.class Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->register(Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource$1;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource$1;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource$1;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;->onFailure()V

    return-void
.end method

.method public onSuccess(Lcom/sec/android/app/sbrowser/contents_push/domain/PushUser;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushUser;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "PushUserDataSource"

    const-string v0, "Push user id is empty!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource$1;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;->onFailure()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource$1;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->a(Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;)Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->setPushUserId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource$1;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->b(Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;Lcom/sec/android/app/sbrowser/contents_push/domain/PushUser;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource$1;->this$0:Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->a(Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;)Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->setServerSyncRegisterState(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource$1;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;->onSuccess()V

    return-void
.end method
