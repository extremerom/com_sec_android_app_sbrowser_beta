.class Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->performSync(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/SyncResult;)Landroid/content/SyncResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;

.field final synthetic val$queue:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter$1;->val$queue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessTokenAcquired(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->a(Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "FAIL"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter$1;->val$queue:Ljava/util/concurrent/BlockingQueue;

    new-instance p1, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p4

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onAccessTokenAcquired but accessToken is empty or fail"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onAuthTokenExpiredError()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onAuthTokenExpiredError"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConsentListReceived(ZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onConsentListReceived"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onError"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNoAccountError()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/AbstractSyncAdapter;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onNoAccountError"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
