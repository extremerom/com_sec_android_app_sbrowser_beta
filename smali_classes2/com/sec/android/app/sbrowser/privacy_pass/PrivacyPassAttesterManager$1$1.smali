.class Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager$1;->tryRequest(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager$1;

.field final synthetic val$challengeList:Ljava/lang/String;

.field final synthetic val$originName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager$1$1;->this$0:Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager$1;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager$1$1;->val$originName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager$1$1;->val$challengeList:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "PrivacyPassAttesterManager"

    const-string v1, "tryRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;->getInstance()Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;->getService()LG8/c;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "PAT Service not yet binded"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    move-object v2, v1

    check-cast v2, LG8/a;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v5, "com.samsung.android.privateaccesstokens.IPATService"

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, v2, LG8/a;->a:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    move v6, v5

    :cond_1
    :try_start_2
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    if-nez v6, :cond_2

    move-object v2, v1

    check-cast v2, LG8/a;

    invoke-virtual {v2, v5}, LG8/a;->w0(Z)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager$1$1;->val$originName:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager$1$1;->val$challengeList:Ljava/lang/String;

    check-cast v1, LG8/a;

    invoke-virtual {v1, v2, p0}, LG8/a;->v0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager;->runSuccessCallback(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_4
    :goto_0
    const-string p0, "Error generating token!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager;->runFailCallback()V

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PATError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager;->runFailCallback()V

    :goto_2
    return-void
.end method
