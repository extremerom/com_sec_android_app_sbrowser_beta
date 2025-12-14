.class public Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$InfoBarSecurityDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;,
        Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$SmartProtectUIManager;,
        Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$SmartProtectType;,
        Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$LoadFinishCheckCallback;
    }
.end annotation


# instance fields
.field private mAECBoundary:I

.field private mAllowlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbackListener:Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$CallbackListener;

.field private mCandidateLoadedDomain:Ljava/lang/String;

.field private mCandidateTabId:I

.field private mDebugMode:Z

.field private mDelegate:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;

.field private mInfoBarCallback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mIsMaliciousPopup:Z

.field private mLoadFinishCheckHandler:Landroid/os/Handler;

.field private mLoadStartedTime:J

.field private mMaliciousPushDisabled:Z

.field private mNeedToCheckPushPopup:Z

.field private mRHCBoundary:I

.field private mRedirectChain:[Ljava/lang/String;

.field private mSkipShowDialog:Z

.field private mTestMode:Z

.field private mUIManager:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$SmartProtectUIManager;

.field private mWillDetectSuspiciousness:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDebugMode:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mAllowlist:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mTestMode:Z

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;-><init>()V

    return-object v0
.end method

.method private getDomainName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/sec/terrace/browser/TerraceUrlUtilities;->getDomainAndRegistry(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/o;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/o;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private getRedirectChainList(Z)[Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mTestMode:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mRedirectChain:[Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getInstance()Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getInstance()Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getRedirectChainList(Z)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getRedirectedHostCount([Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    array-length v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    array-length p0, p1

    return p0

    :cond_1
    const-string v1, ""

    move v2, v0

    move v3, v2

    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_7

    aget-object v4, p1, v2

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isHttpUrl(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->getTldPlusOne(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {v4}, Lcom/sec/terrace/browser/TerraceUrlUtilities;->isTopDomain(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->isUrlAllowed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    aget-object v1, p1, v2

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->getTldPlusOne(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aget-object v4, p1, v0

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->getTldPlusOne(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v3, v0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDebugMode:Z

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getRedirectedHostCount  redirect = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  redirectedHostCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SmartProtectChecker"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return v3

    :cond_8
    :goto_2
    return v0
.end method

.method private getTldPlusOne(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/sec/terrace/browser/TerraceUrlUtilities;->getDomainAndRegistry(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private isSuspiciousRedirectionEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->getInstance()Lcom/sec/android/app/sbrowser/settings/BrowserSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->isSafeBrowsingEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->isSuspiciousRedirectionEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSuspiciousSite()Z
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDelegate:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->getRedirectChainList(Z)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->getRedirectedHostCount([Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDelegate:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;->getAddedEntryCount()I

    move-result v3

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDebugMode:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "redirectChainAfterCommit: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SmartProtectChecker"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "redirectHostCount: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "addedEntryCount: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$SmartProtectType;->REDIRECT_BLOCKER:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$SmartProtectType;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->predict(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$SmartProtectType;III)Z

    move-result p0

    return p0
.end method

.method private predict(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$SmartProtectType;III)Z
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$2;->$SwitchMap$com$sec$android$app$sbrowser$smart_protect$SmartProtectChecker$SmartProtectType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "SmartProtectChecker"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    const/4 p3, 0x2

    if-eq v0, p3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "invalid type: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mRHCBoundary:I

    if-lt p2, p1, :cond_1

    iget p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mAECBoundary:I

    if-lt p4, p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    goto :goto_1

    :cond_2
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mMaliciousPushDisabled:Z

    if-eqz p0, :cond_3

    return v3

    :cond_3
    const p0, 0x400df3b6    # 2.218f

    int-to-float p1, p2

    mul-float/2addr p1, p0

    const p0, -0x43bb645a    # -0.012f

    int-to-float p2, p3

    mul-float/2addr p2, p0

    add-float/2addr p2, p1

    const p0, -0x3f74f5c3    # -4.345f

    add-float/2addr p2, p0

    const/4 p0, 0x0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_1

    :goto_1
    const-string p0, "predict  result = "

    invoke-static {p0, v1, v2}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2
.end method

.method private prepareCheckSuspiciousSite()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDelegate:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mWillDetectSuspiciousness:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->getRedirectChainList(Z)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    array-length v3, v2

    iget v4, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mRHCBoundary:I

    if-ge v3, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->getRedirectedHostCount([Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mRHCBoundary:I

    if-ge v2, v3, :cond_2

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mWillDetectSuspiciousness:Z

    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDelegate:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;->getTabId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDelegate:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;->getTabVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDelegate:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isHttpUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mWillDetectSuspiciousness:Z

    return-void

    :cond_4
    invoke-static {v2}, Lcom/sec/terrace/browser/TerraceUrlUtilities;->isTopDomain(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mWillDetectSuspiciousness:Z

    return-void

    :cond_5
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mCandidateLoadedDomain:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDelegate:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;->getTabId()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mCandidateTabId:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mLoadFinishCheckHandler:Landroid/os/Handler;

    if-nez v2, :cond_6

    new-instance v2, Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$LoadFinishCheckCallback;

    invoke-direct {v3, p0, v1}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$LoadFinishCheckCallback;-><init>(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;I)V

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mLoadFinishCheckHandler:Landroid/os/Handler;

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mLoadFinishCheckHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_7
    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mWillDetectSuspiciousness:Z

    return-void

    :cond_8
    :goto_1
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mWillDetectSuspiciousness:Z

    return-void
.end method

.method private registerCallbackListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mCallbackListener:Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$CallbackListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$1;-><init>(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mCallbackListener:Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$CallbackListener;

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getInstance()Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mCallbackListener:Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$CallbackListener;

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->setCallbackListener(Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$CallbackListener;)V

    return-void
.end method

.method private reportUnwantedNavigation(ILjava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/net/TinSmartProtectLogger;->getInstance()Lcom/sec/terrace/browser/net/TinSmartProtectLogger;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/net/TinSmartProtectLogger;->reportUnwantedNavigation(ILjava/lang/String;)Z

    return-void
.end method

.method private requestLayoutObjectCount()V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getInstance()Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getInstance()Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->requestLayoutObjectCount()Z

    :cond_0
    return-void
.end method

.method private showSuspiciousSiteWarningInfoBar()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mSkipShowDialog:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDelegate:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->isUrlAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mUIManager:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$SmartProtectUIManager;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mLoadStartedTime:J

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$SmartProtectUIManager;->showSuspiciousSiteWarningInfoBar(J)V

    :cond_0
    return-void
.end method

.method private updateList()V
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->getSuspiciousSiteAllowList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mAllowlist:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getInstance()Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->updateList()V

    return-void
.end method


# virtual methods
.method public checkPushPopup(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SmartProtectChecker"

    const-string v1, " checkPushPopup "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDelegate:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->requestLayoutObjectCount()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mNeedToCheckPushPopup:Z

    :goto_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mInfoBarCallback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mIsMaliciousPopup:Z

    return-void
.end method

.method public confirmLoadFinish()Z
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDebugMode:Z

    const-string v1, "SmartProtectChecker"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " confirmLoadFinish  isLoading = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDelegate:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;->isLoading()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  getTabVisibility = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDelegate:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;->getTabVisibility()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  tabId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDelegate:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;->getTabId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  urlChanged = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDelegate:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mCandidateLoadedDomain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mWillDetectSuspiciousness:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDelegate:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;->isLoading()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDelegate:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;->getTabVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDelegate:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mCandidateLoadedDomain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDelegate:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;->getTabId()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mCandidateTabId:I

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->isSuspiciousSite()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "This site is suspicious."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDelegate:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x3ef

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->reportUnwantedNavigation(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->showSuspiciousSiteWarningInfoBar()V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public countLayoutObject(III)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDelegate:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->getRedirectChainList(Z)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->getRedirectedHostCount([Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    add-int v2, p1, p2

    add-int/2addr v2, p3

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDebugMode:Z

    if-eqz v3, :cond_2

    const-string v3, " countLayoutObject  redirectCount = "

    const-string v4, "  textCount = "

    const-string v5, "  linkCount = "

    invoke-static {v1, p1, v3, v4, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "  nonTextLinkCount = "

    const-string v4, "  totalCount = "

    invoke-static {p1, p2, v3, p3, v4}, Lt/b;->A(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v3, "SmartProtectChecker"

    invoke-static {p1, v2, v3}, Lw2/j;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_2
    if-eqz p3, :cond_3

    const/4 p1, 0x5

    if-ge p2, p1, :cond_3

    sget-object p1, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$SmartProtectType;->MALICIOUS_PUSH_BLOCKER:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$SmartProtectType;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->predict(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$SmartProtectType;III)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDelegate:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x3ed

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->reportUnwantedNavigation(ILjava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mIsMaliciousPopup:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->showSuspiciousSiteWarningInfoBar()V

    goto :goto_1

    :cond_3
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mIsMaliciousPopup:Z

    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mInfoBarCallback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    if-eqz p1, :cond_4

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mInfoBarCallback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    :cond_4
    return-void
.end method

.method public getNeedToCheckPushPopup()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mNeedToCheckPushPopup:Z

    return p0
.end method

.method public init(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$SmartProtectUIManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDelegate:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mUIManager:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$SmartProtectUIManager;

    invoke-static {}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->getRedirectionHostCountBoundary()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mRHCBoundary:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->getAddedEntryCountBoundary()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mAECBoundary:I

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mTestMode:Z

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->getInstance()Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;->init()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->registerCallbackListener()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->updateList()V

    return-void
.end method

.method public isMaliciousInfoBar()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mIsMaliciousPopup:Z

    return p0
.end method

.method public isUrlAllowed(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mAllowlist:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mAllowlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mAllowlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "checkCurrentUrlAllowed failed: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "SmartProtectChecker"

    invoke-static {p0, p1, v1}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public loadFinished(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDelegate:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->isSuspiciousRedirectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->isUrlAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->prepareCheckSuspiciousSite()V

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mNeedToCheckPushPopup:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    const-string v0, "SmartProtectChecker"

    const-string v1, "loadFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDelegate:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->requestLayoutObjectCount()V

    :cond_4
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mNeedToCheckPushPopup:Z

    return-void
.end method

.method public loadStarted(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->isSuspiciousRedirectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNetworkUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mWillDetectSuspiciousness:Z

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mLoadStartedTime:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mWillDetectSuspiciousness:Z

    :cond_0
    return-void
.end method

.method public needToCheckPushPopup()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDelegate:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mMaliciousPushDisabled:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->getRedirectChainList(Z)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->getRedirectedHostCount([Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public onCurrentTabChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mUIManager:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$SmartProtectUIManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$SmartProtectUIManager;->setSecurityDelegateForInfoBar(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$InfoBarSecurityDelegate;)V

    return-void
.end method

.method public setAllowList(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mAllowlist:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLoadFinishCheckHandler(Landroid/os/Handler;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mLoadFinishCheckHandler:Landroid/os/Handler;

    return-void
.end method

.method public setRedirectChain([Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mRedirectChain:[Ljava/lang/String;

    return-void
.end method

.method public setTestMode()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mTestMode:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mDebugMode:Z

    return-void
.end method

.method public skipShowDialog()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mSkipShowDialog:Z

    return-void
.end method

.method public updateBlockMaliciousPushEnabled(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mMaliciousPushDisabled:Z

    return-void
.end method

.method public willDetectSuspiciousness()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->mWillDetectSuspiciousness:Z

    return p0
.end method
