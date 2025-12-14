.class public Lcom/osp/app/signin/sasdk/disclaimer/ThirdPartyDisclaimerActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final ACTION_REQUEST_AUTH_CODE:Ljava/lang/String; = "com.samsung.android.samsungaccount.action.REQUEST_AUTHCODE"

.field private static final DISCLAIMER_RESULT:I = 0x7d0

.field private static final EXTRA_KEY_SCOPE:Ljava/lang/String; = "scope"

.field private static final ID_TOKEN_RESULT:I = 0xbb8

.field private static final PARAM_KEY_ID_TOKEN:Ljava/lang/String; = "id_token"

.field private static final REQUEST_NETFLIX_LINKING_RESULT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "ThirdPartyDisclaimerActivity"


# instance fields
.field private mIdToken:Ljava/lang/String;

.field private mPartnerClientId:Ljava/lang/String;

.field private mPartnerUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setActivityResultFailed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private startAuthCodeActivityForIdToken()V
    .locals 3

    const-string v0, "ThirdPartyDisclaimerActivity"

    const-string v1, "startAuthCodeActivityForIdToken"

    invoke-static {v0, v1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.samsungaccount.action.REQUEST_AUTHCODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "client_id"

    iget-object v2, p0, Lcom/osp/app/signin/sasdk/disclaimer/ThirdPartyDisclaimerActivity;->mPartnerClientId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "scope"

    const-string v2, "openid"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startNetflixClient()V
    .locals 4

    const-string v0, "startNetflixClient"

    const-string v1, "ThirdPartyDisclaimerActivity"

    invoke-static {v1, v0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/osp/app/signin/sasdk/disclaimer/ThirdPartyDisclaimerActivity;->mPartnerUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x2000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "com.netflix.mediaclient"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "id_token"

    iget-object v3, p0, Lcom/osp/app/signin/sasdk/disclaimer/ThirdPartyDisclaimerActivity;->mIdToken:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ActivityNotFoundException occurred during startThirdPartyFromDeepLink"

    invoke-static {v1, v2, v0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/osp/app/signin/sasdk/disclaimer/ThirdPartyDisclaimerActivity;->setActivityResultFailed()V

    :goto_0
    return-void
.end method

.method private startThirdPartyDisclaimerActivity()V
    .locals 3

    const-string v0, "ThirdPartyDisclaimerActivity"

    const-string v1, "startThirdPartyDisclaimerActivity"

    invoke-static {v0, v1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.osp.app.signin"

    const-string v2, "com.osp.app.signin.AccountView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "client_id"

    iget-object v2, p0, Lcom/osp/app/signin/sasdk/disclaimer/ThirdPartyDisclaimerActivity;->mPartnerClientId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "account_mode"

    const-string v2, "AGREE_TO_DISCLAIMER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "OSP_VER"

    const-string v2, "OSP_02"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    const-string v1, "ThirdPartyDisclaimerActivity"

    if-ne p2, v0, :cond_6

    const/16 p2, 0x3e8

    const/4 v0, 0x0

    if-eq p1, p2, :cond_4

    const/16 p2, 0x7d0

    if-eq p1, p2, :cond_2

    const/16 p2, 0xbb8

    if-eq p1, p2, :cond_0

    invoke-direct {p0}, Lcom/osp/app/signin/sasdk/disclaimer/ThirdPartyDisclaimerActivity;->setActivityResultFailed()V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string p1, "id_token"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/disclaimer/ThirdPartyDisclaimerActivity;->mIdToken:Ljava/lang/String;

    invoke-direct {p0}, Lcom/osp/app/signin/sasdk/disclaimer/ThirdPartyDisclaimerActivity;->startNetflixClient()V

    goto :goto_0

    :cond_1
    const-string p1, "Auth code or ID token result was failed"

    invoke-static {v1, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/osp/app/signin/sasdk/disclaimer/ThirdPartyDisclaimerActivity;->setActivityResultFailed()V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    const-string p1, "is_agree_to_disclaimer"

    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Third party disclaimer was agreed"

    invoke-static {v1, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/osp/app/signin/sasdk/disclaimer/ThirdPartyDisclaimerActivity;->startAuthCodeActivityForIdToken()V

    goto :goto_0

    :cond_3
    const-string p1, "DisclaimerActivity result was failed or canceled"

    invoke-static {v1, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/osp/app/signin/sasdk/disclaimer/ThirdPartyDisclaimerActivity;->setActivityResultFailed()V

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Netflix linking result : "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "result"

    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_5
    const-string p1, "Netflix linking result data is null"

    invoke-static {v1, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/osp/app/signin/sasdk/disclaimer/ThirdPartyDisclaimerActivity;->setActivityResultFailed()V

    goto :goto_0

    :cond_6
    const-string p1, "Result Failed or Canceled"

    invoke-static {v1, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/osp/app/signin/sasdk/disclaimer/ThirdPartyDisclaimerActivity;->setActivityResultFailed()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "partner_client_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/osp/app/signin/sasdk/disclaimer/ThirdPartyDisclaimerActivity;->mPartnerClientId:Ljava/lang/String;

    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/disclaimer/ThirdPartyDisclaimerActivity;->mPartnerUri:Ljava/lang/String;

    iget-object p1, p0, Lcom/osp/app/signin/sasdk/disclaimer/ThirdPartyDisclaimerActivity;->mPartnerClientId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "ThirdPartyDisclaimerActivity"

    if-eqz p1, :cond_0

    const-string p1, "client_id is null or empty. request failed"

    invoke-static {v0, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/osp/app/signin/sasdk/disclaimer/ThirdPartyDisclaimerActivity;->mPartnerUri:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "uri is null or empty. request failed"

    invoke-static {v0, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/osp/app/signin/sasdk/disclaimer/ThirdPartyDisclaimerActivity;->startThirdPartyDisclaimerActivity()V

    return-void
.end method
