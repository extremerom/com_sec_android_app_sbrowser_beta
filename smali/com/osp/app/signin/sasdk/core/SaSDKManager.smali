.class public Lcom/osp/app/signin/sasdk/core/SaSDKManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/osp/app/signin/sasdk/core/SaSDKManager$InstanceHolder;
    }
.end annotation


# static fields
.field private static final CONNECTED_SERVICES_EXTRA_VALUE:Ljava/lang/String; = "connected_service"

.field private static final EXCEPTION_CASE_ERROR_MSG:Ljava/lang/String; = "Finish requested api because of the exception case."

.field private static final KEY_ACTIVITY_BUNDLE_EXTRA:Ljava/lang/String; = "key_activity_bundle_extra"

.field private static final KEY_ACTIVITY_PACKAGE_NAME_EXTRA:Ljava/lang/String; = "package_name"

.field private static final REQUEST_CODE_FOR_STANDALONE_SA:I = 0x64

.field private static final STG_API_SERVER:Ljava/lang/String; = "https://apigateway-sas-eucentral1.samsungospdev.com"

.field private static final STG_AUTH_SERVER:Ljava/lang/String; = "https://apigateway-sas-eucentral1.samsungospdev.com"

.field private static final STG_IDM_SERVER:Ljava/lang/String; = "https://stg-account.samsung.com"

.field private static final TAG:Ljava/lang/String; = "SaSDKManager"


# instance fields
.field private mCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkApiCallValidity(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "SaSDKManager"

    if-nez p1, :cond_0

    const-string p1, "checkApiCallValidity : context is null !!!"

    invoke-static {v1, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3eb

    iput p1, p0, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->mCode:I

    return v0

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "checkApiCallValidity : activity is null !!!"

    invoke-static {v1, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3ec

    iput p1, p0, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->mCode:I

    return v0

    :cond_1
    if-nez p3, :cond_2

    const-string p1, "checkApiCallValidity : bundle is null !!!"

    invoke-static {v1, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3ee

    iput p1, p0, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->mCode:I

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private checkBrowserStatus()Z
    .locals 2

    invoke-static {}, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->hasNoUsableBrowser()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SaSDKManager"

    const-string v1, "checkUsableBrowserStatus : No Browsers are available"

    invoke-static {v0, v1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->mCode:I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private checkCommonApiCallValidity(ILandroid/os/Bundle;)Z
    .locals 5

    const-string v0, "client_id"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "redirect_uri"

    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    const-string v4, "SaSDKManager"

    if-eqz v0, :cond_0

    const-string p1, "checkCommonApiCallValidity : client_id is null or empty !!!"

    invoke-static {v4, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3ef

    iput p1, p0, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->mCode:I

    return v3

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "checkCommonApiCallValidity : part_uri is null or empty !!!"

    invoke-static {v4, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3f0

    iput p1, p0, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->mCode:I

    return v3

    :cond_1
    const/16 v0, 0x69

    const/16 v2, 0x68

    if-eq p1, v0, :cond_2

    const/16 v0, 0x67

    if-eq p1, v0, :cond_2

    if-ne p1, v2, :cond_3

    :cond_2
    const-string v0, "code_verifier"

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "checkCommonApiCallValidity : code_verifier is null or empty !!!"

    invoke-static {v4, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3f4

    iput p1, p0, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->mCode:I

    return v3

    :cond_3
    if-ne p1, v2, :cond_4

    const-string p1, "ipt_login_id"

    invoke-virtual {p2, p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "checkCommonApiCallValidity : iptLoginId is null or empty !!!"

    invoke-static {v4, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3f1

    iput p1, p0, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->mCode:I

    return v3

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private checkExceptionCases(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Bundle;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;)Z
    .locals 2

    const-string v0, "SaSDKManager"

    const/4 v1, 0x1

    if-nez p4, :cond_0

    const-string p1, "checkExceptionCases : sdkResponseCallback is null !!!"

    invoke-static {v0, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3ed

    iput p1, p0, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->mCode:I

    return v1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->checkApiCallValidity(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result p2

    if-nez p2, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Lcom/osp/app/signin/sasdk/common/Util;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "checkExceptionCases : Network not available !!!"

    invoke-static {v0, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3f2

    iput p1, p0, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->mCode:I

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private checkLinkingApiCallValidity(Landroid/content/Context;ILandroid/os/Bundle;)Z
    .locals 4

    const-string v0, "partner_client_id"

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "SaSDKManager"

    if-eqz v0, :cond_0

    const-string p1, "checkLinkingApiCallValidity : partnerClientId is null or empty!!!"

    invoke-static {v3, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3f7

    iput p1, p0, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->mCode:I

    return v2

    :cond_0
    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-static {p1}, Lcom/osp/app/signin/sasdk/common/Util;->isStandAloneSaAppInstalled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "checkLinkingApiCallValidity : Stand alone SA app is not installed"

    invoke-static {v3, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3f9

    iput p1, p0, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->mCode:I

    return v2

    :cond_1
    const-string p1, "partner_name"

    invoke-virtual {p3, p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "checkLinkingApiCallValidity : partnerName is null or empty!!!"

    invoke-static {v3, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3f8

    iput p1, p0, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->mCode:I

    return v2

    :cond_2
    return v0

    :pswitch_1
    const-string p1, "auth_code"

    invoke-virtual {p3, p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "checkLinkingApiCallValidity : authCode is null or empty!!!"

    invoke-static {v3, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3f6

    iput p1, p0, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->mCode:I

    return v2

    :cond_3
    return v0

    :pswitch_2
    const-string p1, "client_id"

    invoke-virtual {p3, p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "access_token"

    invoke-virtual {p3, p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p1, "checkLinkingApiCallValidity : accessToken is null or empty!!!"

    invoke-static {v3, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3f5

    iput p1, p0, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->mCode:I

    return v2

    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "checkLinkingApiCallValidity : client_id is null or empty!!!"

    invoke-static {v3, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3ef

    iput p1, p0, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->mCode:I

    return v2

    :cond_5
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x6d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkSaClientAndBrowserStatus(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p1}, Lcom/osp/app/signin/sasdk/common/Util;->canUseIotSaApp(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SaSDKManager"

    if-eqz v0, :cond_0

    const-string p1, "checkSaClientAndBrowserStatus : IOT SA app is installed"

    invoke-static {v2, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3ea

    iput p1, p0, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->mCode:I

    return v1

    :cond_0
    invoke-static {p1}, Lcom/osp/app/signin/sasdk/common/Util;->isStandAloneSaAppInstalled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->hasNoUsableBrowser()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "checkSaClientAndBrowserStatus : No Client and No Browsers are available"

    invoke-static {v2, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3e9

    iput p1, p0, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->mCode:I

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private checkServicesListApiCallValidity(Landroid/os/Bundle;)Z
    .locals 3

    const-string v0, "client_id"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "access_token"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    const-string v2, "SaSDKManager"

    if-eqz p1, :cond_0

    const-string p1, "checkServicesListApiCallValidity : accessToken is null or empty!!!"

    invoke-static {v2, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3f5

    iput p1, p0, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->mCode:I

    return v1

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "checkServicesListApiCallValidity : client_id is null or empty!!!"

    invoke-static {v2, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3ef

    iput p1, p0, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->mCode:I

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private executeAPI(ILandroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p2, p3, p5, p4}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->checkExceptionCases(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Bundle;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "SaSDKManager"

    const-string p2, "Finish requested api because of the exception case."

    invoke-static {p1, p2}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->sendSdkErrorResponse(Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;)V

    return-void

    :cond_0
    invoke-static {p2}, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->initUsableBrowsers(Landroid/content/Context;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct/range {p0 .. p5}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->executeConnectedServicesListAPI(ILandroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    invoke-direct/range {p0 .. p5}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->executeLinkingAPI(ILandroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    invoke-direct/range {p0 .. p5}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->executeCommonApi(ILandroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private executeCommonApi(ILandroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V
    .locals 7

    invoke-direct {p0, p2}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->checkSaClientAndBrowserStatus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p5}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->checkCommonApiCallValidity(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/osp/app/signin/sasdk/common/Util;->isStandAloneSaAppInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3, p1, p5}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->startStandAloneSaApp(Landroid/app/Activity;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/osp/app/signin/sasdk/core/CommonAPIThread;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p1

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/osp/app/signin/sasdk/core/CommonAPIThread;-><init>(Landroid/content/Context;Landroid/app/Activity;ILandroid/os/Bundle;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p4}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->sendSdkErrorResponse(Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;)V

    :goto_0
    return-void
.end method

.method private executeConnectedServicesListAPI(ILandroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V
    .locals 7

    invoke-direct {p0, p5}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->checkServicesListApiCallValidity(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p5}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->makeConnectedServicesIntent(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Lcom/osp/app/signin/sasdk/core/CommonAPIThread;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p1

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/osp/app/signin/sasdk/core/CommonAPIThread;-><init>(Landroid/content/Context;Landroid/app/Activity;ILandroid/os/Bundle;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p4}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->sendSdkErrorResponse(Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;)V

    :goto_0
    return-void
.end method

.method private executeLinkingAPI(ILandroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V
    .locals 7

    invoke-direct {p0}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->checkBrowserStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p1, p5}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->checkLinkingApiCallValidity(Landroid/content/Context;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/osp/app/signin/sasdk/core/LinkingAPIThread;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p1

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/osp/app/signin/sasdk/core/LinkingAPIThread;-><init>(Landroid/content/Context;Landroid/app/Activity;ILandroid/os/Bundle;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p4}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->sendSdkErrorResponse(Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;)V

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/osp/app/signin/sasdk/core/SaSDKManager;
    .locals 1

    invoke-static {}, Lcom/osp/app/signin/sasdk/core/SaSDKManager$InstanceHolder;->access$000()Lcom/osp/app/signin/sasdk/core/SaSDKManager;

    move-result-object v0

    return-object v0
.end method

.method private makeConnectedServicesIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 4

    const-string p0, "client_id"

    const-string v0, ""

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "access_token"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const/16 v3, 0x70

    invoke-static {v3}, Lcom/osp/app/signin/sasdk/common/Util;->getStandAloneAction(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.osp.app.signin"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "uri"

    const-string p1, "connected_service"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private sendSdkErrorResponse(Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "result"

    const-string v1, "false"

    invoke-static {v0, v1}, Lt/b;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "code"

    iget p0, p0, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->mCode:I

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;->onResponseReceived(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string p0, "SaSDKManager"

    const-string p1, "sdkResponseCallback is null !!!"

    invoke-static {p0, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private startStandAloneSaApp(Landroid/app/Activity;ILandroid/os/Bundle;)V
    .locals 2

    invoke-static {p2}, Lcom/osp/app/signin/sasdk/common/Util;->getStandAloneAction(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "SaSDKManager"

    if-eqz p2, :cond_0

    const-string p0, "No actions for serviceType"

    invoke-static {v0, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.osp.app.signin"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "key_activity_bundle_extra"

    invoke-virtual {p2, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p0, ""

    const-string v1, "client_id"

    invoke-virtual {p3, v1, p0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p3, "package_name"

    invoke-virtual {p2, p3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p0, 0x64

    :try_start_0
    invoke-virtual {p1, p2, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ActivityNotFoundException occurred"

    invoke-static {v0, p0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public changePassword(Landroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V
    .locals 6

    const/16 v1, 0x6c

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->executeAPI(ILandroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method public checkAccountLinkingStatus(Landroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V
    .locals 6

    const/16 v1, 0x6d

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->executeAPI(ILandroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method public confirmPassword(Landroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V
    .locals 6

    const/16 v1, 0x6a

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->executeAPI(ILandroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method public decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lcom/osp/app/signin/sasdk/common/Util;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isSAInstalled(Landroid/content/Context;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/osp/app/signin/sasdk/common/Util;->isIotSaAppInstalled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isSamsungAccountSignedIn(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/osp/app/signin/sasdk/common/Util;->isSamsungAccountSignedIn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public requestAccountAppLinking(Landroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V
    .locals 6

    const/16 v1, 0x6f

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->executeAPI(ILandroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method public requestAccountWebLinking(Landroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V
    .locals 6

    const/16 v1, 0x6e

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->executeAPI(ILandroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method public setStagingServerEnabled(Landroid/content/Context;Z)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "test_idm_server"

    const-string v1, "test_auth_server"

    const-string v2, "test_api_server"

    if-eqz p2, :cond_0

    const-string v3, "https://apigateway-sas-eucentral1.samsungospdev.com"

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "https://stg-account.samsung.com"

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getInstance()Lcom/osp/app/signin/sasdk/common/MetaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/osp/app/signin/sasdk/common/MetaManager;->clear()V

    invoke-static {p0}, Lcom/osp/app/signin/sasdk/test/TestProperty;->setTestProperty(Landroid/os/Bundle;)V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    const-string p0, "enabled"

    goto :goto_1

    :cond_1
    const-string p0, "disabled"

    :goto_1
    const-string p2, "STG server is "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method public signIn(Landroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V
    .locals 6

    const/16 v1, 0x69

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->executeAPI(ILandroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method public signOut(Landroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V
    .locals 6

    const/16 v1, 0x6b

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->executeAPI(ILandroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method public signUp(Landroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V
    .locals 6

    const/16 v1, 0x67

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->executeAPI(ILandroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method public signUpWithPartnerAcount(Landroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V
    .locals 6

    const/16 v1, 0x68

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->executeAPI(ILandroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method public startConnectedServicesList(Landroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V
    .locals 6

    const/16 v1, 0x70

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/osp/app/signin/sasdk/core/SaSDKManager;->executeAPI(ILandroid/content/Context;Landroid/app/Activity;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method public unBindCustomTabs()V
    .locals 0

    invoke-static {}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getInstance()Lcom/osp/app/signin/sasdk/common/MetaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getCustomTabBrowser()Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/osp/app/signin/sasdk/browser/CustomTabBrowser;->unbindCustomTabsService()V

    :cond_0
    return-void
.end method
