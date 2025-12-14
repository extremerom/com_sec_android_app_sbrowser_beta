.class Lcom/osp/app/signin/sasdk/core/CommonAPITask;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "CommonAPITask class can not be instantiated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkDomain(Landroid/content/Context;ILcom/osp/app/signin/sasdk/response/ISaAPIResponse;)V
    .locals 1

    invoke-static {}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getInstance()Lcom/osp/app/signin/sasdk/common/MetaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/osp/app/signin/sasdk/common/MetaManager;->setActualRequest(I)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lcom/osp/app/signin/sasdk/core/CommonAPITask$1;

    invoke-direct {v0, p1, p2}, Lcom/osp/app/signin/sasdk/core/CommonAPITask$1;-><init>(Landroid/os/Bundle;Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;)V

    invoke-static {}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient;->getInstance()Lcom/osp/app/signin/sasdk/http/HttpRequestClient;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient;->checkDomain(Landroid/content/Context;Lcom/osp/app/signin/sasdk/http/HttpRequestClient$CheckDomainResponseListener;)V

    return-void
.end method

.method public static getEntryPointOfIdm(Landroid/content/Context;ILcom/osp/app/signin/sasdk/response/ISaAPIResponse;)V
    .locals 1

    invoke-static {}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getInstance()Lcom/osp/app/signin/sasdk/common/MetaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/osp/app/signin/sasdk/common/MetaManager;->setActualRequest(I)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lcom/osp/app/signin/sasdk/core/CommonAPITask$2;

    invoke-direct {v0, p1, p2}, Lcom/osp/app/signin/sasdk/core/CommonAPITask$2;-><init>(Landroid/os/Bundle;Lcom/osp/app/signin/sasdk/response/ISaAPIResponse;)V

    invoke-static {}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient;->getInstance()Lcom/osp/app/signin/sasdk/http/HttpRequestClient;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/osp/app/signin/sasdk/http/HttpRequestClient;->getEntryPointOfIdm(Landroid/content/Context;Lcom/osp/app/signin/sasdk/http/HttpRequestClient$EntryPointResponseListener;)V

    return-void
.end method

.method public static startActualTask(Landroid/content/Context;Landroid/app/Activity;ILandroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/osp/app/signin/sasdk/common/MetaManager;->getInstance()Lcom/osp/app/signin/sasdk/common/MetaManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/osp/app/signin/sasdk/common/MetaManager;->setActualRequest(I)V

    invoke-static {p0, p1, p3}, Lcom/osp/app/signin/sasdk/browser/BrowserUtil;->createBrowser(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Bundle;)Lcom/osp/app/signin/sasdk/browser/BaseBrowser;

    move-result-object p1

    invoke-static {p0}, Lcom/osp/app/signin/sasdk/common/Util;->getUiModeForWebView(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x70

    if-ne v1, p2, :cond_0

    invoke-static {p0}, Lcom/osp/app/signin/sasdk/common/Util;->getLanguageCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Lcom/osp/app/signin/sasdk/common/Util;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p2, p0, v0}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20$ChromeUrl;->getUrlForConnectedServicesList(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/osp/app/signin/sasdk/browser/BaseBrowser;->getTargetBrowserPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p3, p2, v1, v0}, Lcom/osp/app/signin/sasdk/server/UrlManager$OspVer20$ChromeUrl;->getUrlForCommonServiceType(Landroid/content/Context;Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/osp/app/signin/sasdk/browser/BaseBrowser;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/osp/app/signin/sasdk/browser/BaseBrowser;->start()V

    return-void
.end method
