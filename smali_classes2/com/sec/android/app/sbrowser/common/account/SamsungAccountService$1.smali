.class Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$1;->this$0:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const-string p1, "SamsungAccountService"

    const-string v0, "[AIDL] onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$1;->this$0:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;

    sget v1, Lb8/d;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "com.msc.sa.aidl.ISAService"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lb8/e;

    if-eqz v2, :cond_1

    move-object p2, v1

    check-cast p2, Lb8/e;

    goto :goto_0

    :cond_1
    new-instance v1, Lb8/c;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p2, v1, Lb8/c;->a:Landroid/os/IBinder;

    move-object p2, v1

    :goto_0
    invoke-static {v0, p2}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->d(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;Lb8/e;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$1;->this$0:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->b(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;)Lb8/e;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p2, "[AIDL] ISAService is null, Failed to register callback."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$1;->this$0:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->getSamsungAccountClientId()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->getSamsungAccountClientSecretKey()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$1;->this$0:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->b(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;)Lb8/e;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$1;->this$0:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$1;->this$0:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->a(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;)Lb8/b;

    move-result-object v4

    check-cast v2, Lb8/c;

    invoke-virtual {v2, p2, v0, v3, v4}, Lb8/c;->v0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lb8/b;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->e(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$1;->this$0:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->c(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "[AIDL] No registration. Failed to register callback."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$1;->this$0:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->g(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$1;->this$0:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;

    invoke-virtual {p2}, Landroid/app/Service;->stopSelf()V

    return-void

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_3
    const-string p2, "[AIDL] register callback"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->hasAccount()Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "expired_access_token"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "cc"

    const-string v1, "access_token"

    const-string v2, "api_server_url"

    const-string v3, "user_id"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "additional"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$1;->this$0:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->b(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;)Lb8/e;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$1;->this$0:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->c(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;)Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lb8/c;

    invoke-virtual {v0, p2, v1}, Lb8/c;->w0(Landroid/os/Bundle;Ljava/lang/String;)Z

    goto :goto_1

    :cond_5
    const-string p2, "[AIDL] Samsung Account not signed in"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$1;->this$0:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->g(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$1;->this$0:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;

    invoke-virtual {p2}, Landroid/app/Service;->stopSelf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[AIDL] Failed to register callback or service request : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$1;->this$0:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->g(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$1;->this$0:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$1;->this$0:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->d(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;Lb8/e;)V

    return-void
.end method
