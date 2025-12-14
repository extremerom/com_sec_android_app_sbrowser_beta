.class Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;
.super Lb8/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field mAccessToken:Ljava/lang/String;

.field mApiServerUrl:Ljava/lang/String;

.field mCountryCode:Ljava/lang/String;

.field mErrorCode:Ljava/lang/String;

.field mErrorMessage:Ljava/lang/String;

.field mUserId:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;->this$0:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string p1, "com.msc.sa.aidl.ISACallback"

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceiveAccessToken(IZLandroid/os/Bundle;)V
    .locals 2

    const/16 v0, 0x7b

    const-string v1, "SamsungAccountService"

    if-eq p1, v0, :cond_0

    const-string p0, "[AIDL] onReceiveAccessToken: Invalid request id"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_2

    const-string p1, "[AIDL] onReceiveAccessToken : success"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "cc"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;->mCountryCode:Ljava/lang/String;

    const-string p1, "access_token"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;->mAccessToken:Ljava/lang/String;

    const-string p1, "api_server_url"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;->mApiServerUrl:Ljava/lang/String;

    const-string p1, "user_id"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;->mUserId:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;->this$0:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;->mAccessToken:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->requestRequiredConsent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;->this$0:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;->mCountryCode:Ljava/lang/String;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;->mAccessToken:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;->mApiServerUrl:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;->mUserId:Ljava/lang/String;

    invoke-static {p1, p2, p3, v0, p0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->f(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "error_code"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;->mErrorCode:Ljava/lang/String;

    const-string p1, "error_message"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;->mErrorMessage:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[AIDL] onReceiveAccessToken : mErrorCode : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;->mErrorCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", mErrorMessage : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "SAC_0402"

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;->mErrorCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;->this$0:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->h(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;)V

    goto :goto_0

    :cond_3
    const-string p1, "FAIL"

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;->mCountryCode:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;->mAccessToken:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;->mApiServerUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;->mUserId:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;->this$0:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;

    invoke-static {p0, p1, p1, p1, p1}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->f(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onReceiveAuthCode(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReceiveChecklistValidation(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReceiveClearConsentData(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReceiveDisclaimerAgreement(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReceivePasswordConfirmation(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReceiveRLControlFMM(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReceiveRequiredConsent(IZLandroid/os/Bundle;)V
    .locals 1

    const-string p1, "SamsungAccountService"

    const-string v0, "[AIDL] onReceiveRequiredConsent"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;->this$0:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;->mAccessToken:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$2;->mCountryCode:Ljava/lang/String;

    invoke-static {p1, p2, p3, v0, p0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->i(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;ZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveRubinRequest(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReceiveSCloudAccessToken(IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
