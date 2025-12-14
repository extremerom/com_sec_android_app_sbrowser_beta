.class public Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountSDKActivity;
.super Lm/n;
.source "SourceFile"

# interfaces
.implements Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;


# instance fields
.field private final mCallback:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lm/n;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountSDKActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountSDKActivity$1;-><init>(Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountSDKActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountSDKActivity;->mCallback:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Landroidx/fragment/app/J;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "onCreate"

    const-string v0, "SamsungAccountSDKActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountUtils;->setRequest(Landroid/content/Context;Z)V

    const-string v2, "com.sec.android.app.sbrowser.beta.SIGN_IN_SAMSUNG_ACCOUNT_SDK"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "sasdk://account.samsunginternet/signin"

    const-string v4, "redirect_uri"

    const-string v5, "4oe3617251"

    const-string v6, "client_id"

    const/16 v7, 0x14

    const-string v8, "state"

    if-eqz v2, :cond_0

    const-string p1, "sign in"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/scloud/utils/RandomUtil;->generateRandomToken(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x32

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/scloud/utils/RandomUtil;->generateRandomToken(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountUtils;->setState(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountUtils;->setCodeVerifier(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v6, v5, v4, v3}, LB/e;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v8, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "scope"

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "code_verifier"

    invoke-virtual {v1, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "is_samsung_internet"

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->getInstance()Lcom/osp/app/signin/sasdk/core/SaSDKManager;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p0, p0, v1}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->signIn(Landroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_0
    const-string v2, "com.sec.android.app.sbrowser.beta.CONFIRM_PASSWORD"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "sasdk://account.samsunginternet/confirmpassword"

    if-eqz p1, :cond_1

    const-string p1, "confirm password"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/scloud/utils/RandomUtil;->generateRandomToken(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountUtils;->setState(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v6, v5, v4, v2}, LB/e;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v8, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->getInstance()Lcom/osp/app/signin/sasdk/core/SaSDKManager;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, p0, p0, v0}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->confirmPassword(Landroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_1
    const-string p1, "Invalid state"

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "sign in response"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->getInstance()Lcom/osp/app/signin/sasdk/core/SaSDKManager;

    move-result-object v2

    invoke-virtual {v1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountUtils;->getState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sign in response state : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v2}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountUtils;->isValidState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->getInstance()Lcom/osp/app/signin/sasdk/core/SaSDKManager;

    move-result-object p1

    const-string v3, "code"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "code_expires_in"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountUtils;->getCodeVerifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "authCode : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", codeExpiresIn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->getInstance()Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountSDKActivity;->mCallback:Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;

    invoke-virtual {v0, p0, p1, v2}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountServerAPI;->getTokenAsync(Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountAPICallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "confirm password response"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->getInstance()Lcom/osp/app/signin/sasdk/core/SaSDKManager;

    move-result-object v2

    invoke-virtual {v1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountUtils;->getState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountUtils;->isValidState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p1, "result"

    invoke-virtual {v1, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "result : "

    invoke-static {v1, p1, v0}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onResponseReceived(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResponseReceived "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SamsungAccountSDKActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/J;->onResume()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResume "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountUtils;->getRequest(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungAccountSDKActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountUtils;->getRequest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountUtils;->setRequest(Landroid/content/Context;Z)V

    return-void
.end method
