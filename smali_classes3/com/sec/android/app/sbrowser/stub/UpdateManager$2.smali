.class Lcom/sec/android/app/sbrowser/stub/UpdateManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/stub/UpdateManager;->checkUpdateByCase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/stub/UpdateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$2;->this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessTokenAcquired(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "[AIDL] onAccessTokenAcquired : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "UpdateManager"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setCountryCode(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$2;->this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->b(Lcom/sec/android/app/sbrowser/stub/UpdateManager;)V

    return-void
.end method

.method public onAuthTokenExpiredError()V
    .locals 1

    const-string v0, "FAIL"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setCountryCode(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$2;->this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->b(Lcom/sec/android/app/sbrowser/stub/UpdateManager;)V

    return-void
.end method

.method public onConsentListReceived(ZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p0, "UpdateManager"

    const-string p1, "[AIDL] onConsentListReceived"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    const-string p0, "[AIDL] onError : "

    const-string v0, "UpdateManager"

    invoke-static {p0, p1, v0}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNoAccountError()V
    .locals 1

    const-string v0, "NONE"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setCountryCode(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$2;->this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->b(Lcom/sec/android/app/sbrowser/stub/UpdateManager;)V

    return-void
.end method
