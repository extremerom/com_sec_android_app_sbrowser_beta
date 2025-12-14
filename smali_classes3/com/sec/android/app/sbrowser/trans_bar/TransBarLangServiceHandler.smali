.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayoutClient;
.implements Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangListHandlerClient;


# instance fields
.field private mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandlerClient;

.field private mContext:Landroid/content/Context;

.field private mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

.field private mLangListHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangListHandler;

.field private mSourceLanguage:Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

.field private mTargetLanguage:Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandlerClient;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mSourceLanguage:Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mTargetLanguage:Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mLangListHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangListHandler;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandlerClient;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->setupLangListHandler()V

    return-void
.end method

.method private getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mLangListHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangListHandler;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangListHandler;->getDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private updateTargetLang()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->getLang(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->getLangLocaleInfo(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->getDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    invoke-direct {v3, v2, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mTargetLanguage:Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandlerClient;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandlerClient;->onUpdateLang(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getLang(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p0

    const-string p1, "SOURCE"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p0

    const-string p1, "TARGET"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLangList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mLangListHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangListHandler;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangListHandler;->getLangList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getLangList(Z)[Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p0

    const-string p1, "SOURCE"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getLangList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p0

    const-string p1, "TARGET"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getLangList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLangLocaleInfo(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getLangLocaleInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p0, "en"

    :cond_1
    return-object p0
.end method

.method public getLanguage(Z)Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mSourceLanguage:Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mTargetLanguage:Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    return-object p0
.end method

.method public getSourceLangCode()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->getLanguage(Z)Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "TransBarLangServiceHandler"

    const-string v0, "getSourceLangCode - no TransBarInfo"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;->getCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSourceLangName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->getLanguage(Z)Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "TransBarLangServiceHandler"

    const-string v0, "getSourceLangName - no TransBarInfo"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTabUrlHost()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    const/4 v0, 0x0

    const-string v1, "TransBarLangServiceHandler"

    if-nez p0, :cond_0

    const-string p0, "getTabUrlHost - mDelegate empty"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;->getTabUrl()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "getTabUrlHost - url empty"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public isTransBarEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandlerClient;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandlerClient;->isTransBarEnabled()Z

    move-result p0

    return p0
.end method

.method public onCheckLangOnNeverTranslateList()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->getSourceLangCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCheckLangOnNeverTranslateList - srcLang: "

    const-string v2, "TransBarLangServiceHandler"

    invoke-static {v1, v0, v2}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;->onCheckLangOnNeverTranslateList()Z

    move-result p0

    return p0
.end method

.method public onCheckSiteOnNeverTranslateList()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->getTabUrlHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCheckSiteOnNeverTranslateList - host: "

    const-string v2, "TransBarLangServiceHandler"

    invoke-static {v1, v0, v2}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;->onCheckSiteOnNeverTranslateList()Z

    move-result p0

    return p0
.end method

.method public onCloseFab()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->onCloseFab(Landroid/content/Context;)V

    return-void
.end method

.method public onLoadFinished(I)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->onLoadFinished(I)V

    return-void
.end method

.method public onSetNeverTranslateLanguage(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->getSourceLangCode()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetNeverTranslateLanguage - srcLang: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | isSet:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransBarLangServiceHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;->onSetNeverTranslateLanguage(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->revertTranslation()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;->onSetNeverTranslateLanguage(Z)V

    :cond_2
    :goto_0
    const-string v0, "20207"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->sendNeverTransEventLog(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSetNeverTranslateSite(Z)V
    .locals 3

    const-string v0, "onSetNeverTranslateSite - isSet: "

    const-string v1, "TransBarLangServiceHandler"

    invoke-static {v0, v1, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->getTabUrlHost()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onSetNeverTranslateSite - host: "

    invoke-static {v2, v0, v1}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;->onSetNeverTranslateSite(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->revertTranslation()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;->onSetNeverTranslateSite(Z)V

    :cond_2
    :goto_0
    const-string v0, "20208"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->sendNeverTransEventLog(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSourceItemSelected(Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SourceItemSelectedListener onItemSelected:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransBarLangServiceHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->onUpdateSourceLang(Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;)V

    const-string p0, "20206"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "201"

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTargetItemSelected(Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TARGET"

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->setLang(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TargetItemSelectedListener onItemSelected:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransBarLangServiceHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->updateTargetLang()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->runPageChangeLang(Landroid/content/Context;Z)V

    const-string v0, "20056"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string v1, "201"

    invoke-static {v1, v0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->isDefaultTranslatorInstalled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isTranslateV2()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandlerClient;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandlerClient;->onTranslate(Z)V

    :cond_1
    return-void
.end method

.method public onUpdateSourceLang(Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;->getCode()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->setLang(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->updateSourceLang()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->runPageChangeLang(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->isDefaultTranslatorInstalled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isTranslateV2()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandlerClient;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandlerClient;->onTranslate(Z)V

    :cond_1
    return-void
.end method

.method public openLangPackSettings()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->openLangPackSettings()V

    return-void
.end method

.method public openSettingsImpl()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->openSettingsImpl()V

    const-string v0, "20065"

    const-string v1, "SourceTarget"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->sendEventLogWithDimAndLangCode(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public revertTranslation()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandlerClient;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandlerClient;->revertTranslation()V

    :cond_0
    return-void
.end method

.method public sendEventLog(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getModeImpl()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "On-device"

    goto :goto_0

    :cond_0
    const-string p0, "Server"

    goto :goto_0

    :cond_1
    const-string p0, "Addons"

    :goto_0
    const-string v0, "Mode"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "201"

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public sendEventLog(Z)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->sendEventLog(Z)V

    return-void
.end method

.method public sendEventLogWithDimAndLangCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->getLanguage(Z)Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->getLanguage(Z)Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->sendEventLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public sendExpandEventLog(Z)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->sendExpandEventLog(Z)V

    return-void
.end method

.method public sendLangInfoEventLog(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "Source"

    goto :goto_0

    :cond_0
    const-string v0, "Target"

    :goto_0
    if-eqz p1, :cond_1

    const-string v1, "20205"

    goto :goto_1

    :cond_1
    const-string v1, "20055"

    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->getLanguage(Z)Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;->getCode()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const-string p1, "en"

    :goto_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->sendEventLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public sendMoveEventLog()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->sendMoveEventLog()V

    return-void
.end method

.method public sendNeverTransEventLog(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "20207"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Language"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->getSourceLangCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "Checked"

    if-eqz p2, :cond_1

    const-string p2, "Unchecked"

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->sendEventLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public sendSplitModeEventLog(ZZ)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->sendSplitModeEventLog(ZZ)V

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    return-void
.end method

.method public setLang(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p0

    const-string p1, "SOURCE"

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->setLang(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p0

    const-string p1, "TARGET"

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->setLang(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setupLangListHandler()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mLangListHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangListHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangListHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangListHandler;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangListHandlerClient;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mLangListHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangListHandler;

    :cond_0
    return-void
.end method

.method public updateLangList(Z)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->getLangList(Z)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mLangListHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangListHandler;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangListHandler;->updateLangList(Landroid/content/Context;[Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->updateTargetLang()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->updateSourceLang()V

    :cond_1
    return-void
.end method

.method public updateSourceLang()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->getLang(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->getLangLocaleInfo(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->getDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    invoke-direct {v3, v2, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mSourceLanguage:Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandlerClient;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandlerClient;->onUpdateLang(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
