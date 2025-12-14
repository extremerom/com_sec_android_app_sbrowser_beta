.class Lcom/osp/app/signin/sasdk/core/LinkingAPITask;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PARAM_AND:Ljava/lang/String; = "&"

.field private static final PARAM_EQUAL:Ljava/lang/String; = "="

.field private static final PARAM_QUESTION:Ljava/lang/String; = "?"

.field private static final REQUEST_NETFLIX_LINKING_RESULT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "LinkingAPITask"


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "LinkingAPITask class can not be instantiated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic access$000(Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;)V
    .locals 0

    invoke-static {p0}, Lcom/osp/app/signin/sasdk/core/LinkingAPITask;->handleResponseFailCase(Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;)V

    return-void
.end method

.method public static checkLinkingStatus(ILcom/osp/app/signin/sasdk/response/ISaAPIResponse;Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getInstance()Lcom/osp/app/signin/sasdk/common/MetaManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/osp/app/signin/sasdk/common/MetaManager;->setActualRequest(I)V

    new-instance p0, Lcom/osp/app/signin/sasdk/core/LinkingAPITask$1;

    invoke-direct {p0, p1}, Lcom/osp/app/signin/sasdk/core/LinkingAPITask$1;-><init>(Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;)V

    invoke-static {}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient;->getInstance()Lcom/osp/app/signin/sasdk/http/HttpRequestClient;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient;->checkAccountLinkingStatus(Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckLinkingResponseListener;Landroid/os/Bundle;)V

    return-void
.end method

.method private static handleResponseFailCase(Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "result"

    const-string v2, "failed"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "code"

    const/16 v2, 0x3f3

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p0, v0}, Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;->handleResponse(Landroid/os/Bundle;)V

    return-void
.end method

.method public static requestAccountAppLinking(Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;Landroid/content/Context;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 11

    const-string v0, "LinkingAPITask"

    const-string v1, "id_token"

    const-string v2, "partner_client_id"

    const-string v3, " deepLinkUrl : "

    const-string v4, "&id_token="

    const-string v5, "&redirect_uri="

    const-string v6, "?state="

    const-string v7, "partner_name"

    const-string v8, ""

    invoke-virtual {p3, v7, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/osp/app/signin/sasdk/common/Util;->getPartnerDeepLinkUrlFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :try_start_0
    const-string v10, "netflix"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/osp/app/signin/sasdk/disclaimer/ThirdPartyDisclaimerActivity;

    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p3, v2, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "uri"

    invoke-virtual {v1, p1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x3e8

    invoke-virtual {p2, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "state"

    invoke-virtual {p3, v2, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "redirect_uri"

    invoke-virtual {p3, v2, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/osp/app/signin/sasdk/common/SDKLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p3, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ActivityNotFoundException occurred during requestAccountAppLinking"

    invoke-static {v0, p1}, Lcom/osp/app/signin/sasdk/common/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/osp/app/signin/sasdk/core/LinkingAPITask;->handleResponseFailCase(Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;)V

    :goto_0
    return-void
.end method

.method public static requestAccountWebLinking(Landroid/content/Context;Landroid/app/Activity;ILandroid/os/Bundle;)V
    .locals 9

    invoke-static {}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getInstance()Lcom/osp/app/signin/sasdk/common/MetaManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/osp/app/signin/sasdk/common/MetaManager;->setActualRequest(I)V

    invoke-static {p0, p1}, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->createBrowser(Landroid/content/Context;Landroid/app/Activity;)Lcom/osp/app/signin/sasdk/browser/BaseBrowser;

    move-result-object p1

    const-string p2, "partner_client_id"

    const-string v0, ""

    invoke-virtual {p3, p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p2, "client_id"

    invoke-virtual {p3, p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p2, "disclaimer_flag"

    invoke-virtual {p3, p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p2, "state"

    invoke-virtual {p3, p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p2, "return_type"

    invoke-virtual {p3, p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getInstance()Lcom/osp/app/signin/sasdk/common/MetaManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getDomainResponseData()Lcom/osp/app/signin/sasdk/response/DomainResponseData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/osp/app/signin/sasdk/response/BaseDomainResponseData;->getAuthServerUrl()Ljava/lang/String;

    move-result-object v6

    const-string p2, "auth_code"

    invoke-virtual {p3, p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0}, Lcom/osp/app/signin/sasdk/common/Util;->getUiModeForWebView(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20$ChromeUrl;->getUrlForRequestWebLinking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/osp/app/signin/sasdk/browser/BaseBrowser;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/osp/app/signin/sasdk/browser/BaseBrowser;->start()V

    return-void
.end method
