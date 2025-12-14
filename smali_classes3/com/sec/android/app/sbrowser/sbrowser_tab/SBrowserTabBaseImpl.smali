.class public Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;
.super Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;
.source "SourceFile"


# instance fields
.field private mBoardingPassProcessor:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;

.field private mIsErrorPage:Z

.field private mIsTabCrashUiInBG:Z

.field private mLastGoneTime:J

.field private mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

.field private mNeedPrivacyDownloadDialog:Z

.field private mOriginalUrlForSavedPage:Ljava/lang/String;

.field private mParentalControlBlockedUrl:Ljava/lang/String;

.field private mPreviousUpdatedUrl:Ljava/lang/String;

.field private mProgress:D

.field private mProvisionalLoad:Z

.field private mProvisionalLoadUrl:Ljava/lang/String;

.field private mReaderHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

.field private mReloadOnceAfterForegroundCrash:Z

.field private mRemoveParentalControlHistory:Z

.field private mRestrictHelper:Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/content/MutableContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mProvisionalLoad:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mProgress:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNeedPrivacyDownloadDialog:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isReloadAfterSandboxProcessCrashEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mReloadOnceAfterForegroundCrash:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mLastGoneTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mOriginalUrlForSavedPage:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mRemoveParentalControlHistory:Z

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;)Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->lambda$initializeContextMenu$0()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->lambda$loadParentalControlUnblockedUrl$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;Ljava/lang/Boolean;)Ldb/r;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->lambda$getRestrictHelper$5(Ljava/lang/Boolean;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method private getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mReaderHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mReaderHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mReaderHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    return-object p0
.end method

.method private getRestrictHelper()Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mRestrictHelper:Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;

    new-instance v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/l;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/l;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictHelperFactory;->getOrCreate(Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;Lsb/k;)Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mRestrictHelper:Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;

    return-object v0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->lambda$loadUrlWithRunnable$1(Ljava/lang/String;)V

    return-void
.end method

.method private handleDidFinishLoad(JLjava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->onLoadFinished(Ljava/lang/String;Z)V

    if-nez p4, :cond_0

    return-void

    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "didFinishLoad for mainframe: frameId = "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "si__SBrowserTab"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->updateTitle()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mProvisionalLoad:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->onLoadFinished(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->onLoadFinished(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isNeedToHideToolbarShadow()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyToolbarShadowVisibilityChanged(Z)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->lambda$onReportCrash$3()V

    return-void
.end method

.method private initializeContextMenu()V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabContextMenuPopulator;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabContextMenuPopulator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContextMenuPopulator:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContextMenuPopulator:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;

    new-instance v3, Lcom/sec/android/app/sbrowser/sbrowser_tab/k;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/k;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackRegister;-><init>(Lcom/sec/terrace/Terrace;Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;Lcom/sec/android/app/sbrowser/sbrowser_tab/ContextMenuCallbackDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContextMenuPopulator:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->setContextMenuPopulator(Lcom/sec/terrace/TerraceContextMenuPopulator;)V

    return-void
.end method

.method private invalidateTabContents(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->destroyCrashView()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mIsTabCrashUiInBG:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->updateTitle()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mNavigatingUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->hideVideoAssistant()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->onLoadStarted(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->onLoadStarted(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->onLoadStarted(Ljava/lang/String;)V

    return-void
.end method

.method private isReloadAfterSandboxProcessCrashEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isUserBinary()Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->lambda$onReportCrash$2()V

    return-void
.end method

.method private synthetic lambda$getRestrictHelper$5(Ljava/lang/Boolean;)Ldb/r;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mRemoveParentalControlHistory:Z

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private synthetic lambda$initializeContextMenu$0()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    return-object p0
.end method

.method private synthetic lambda$loadParentalControlUnblockedUrl$4(Ljava/lang/String;)V
    .locals 2

    const-string v0, "si__SBrowserTab"

    const-string v1, "load ParentalControl blocked url"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$loadUrlWithRunnable$1(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onReportCrash$2()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mReloadOnceAfterForegroundCrash:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->reload()V

    return-void
.end method

.method private synthetic lambda$onReportCrash$3()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mReloadOnceAfterForegroundCrash:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mNavigatingUrl:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->loadUrl(Ljava/lang/String;I)V

    return-void
.end method

.method private removeParentalControlHistory()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->removeParentalControlHistory(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->removeParentalControlHistory(Z)V

    return-void
.end method

.method private removeParentalControlHistory(Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x32

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getDirectedNavigationHistory(ZI)Lcom/sec/terrace/navigation_interception/TerraceNavigationHistory;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/terrace/navigation_interception/TerraceNavigationHistory;->getEntryCount()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getLastCommittedEntryIndex()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_6

    if-eqz p1, :cond_2

    add-int v3, v1, v2

    goto :goto_1

    :cond_2
    sub-int v3, v1, v2

    :goto_1
    invoke-virtual {v0, v3}, Lcom/sec/terrace/Terrace;->getEntryAtIndex(I)Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isParentalControlUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, v3}, Lcom/sec/terrace/Terrace;->removeEntryAtIndex(I)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method private shouldInvalidateTabContents(Ljava/lang/String;)Z
    .locals 1

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mIsErrorPage:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isDataUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isValidUrl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isDataUrl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isWebUIUrl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private showDocumentPage()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->showDocumentPage()V

    return-void
.end method

.method private showNativePage()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->showNativePage(Ljava/lang/String;)V

    return-void
.end method

.method private updateUseDesktopUserAgent()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UserAgentUtils;->isAutoSwitchUserAgentForMultiFold(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->shouldUseDesktopUserAgent()Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isUserBinary()Z

    move-result v1

    const-string v2, "si__SBrowserTab"

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "updateUseDesktopUserAgent, URL: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", OriginalURL: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getOriginalRequestedUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getUseDesktopUserAgent()Z

    move-result v1

    if-eq v0, v1, :cond_2

    const-string v1, "updateUseDesktopUserAgent, UseDesktopUserAgent: "

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setUseDesktopUserAgent(ZZ)V

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mShouldUseDesktopUserAgent:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public addShortcut(IILandroid/view/View;Z)V
    .locals 0
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->addShortcut(IILandroid/view/View;Z)V

    return-void
.end method

.method public applyReaderFontScale(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->applyReaderFontScale(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method public applyReaderOption(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->applyReaderOption(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method public applyReaderThemeColor(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->applyReaderThemeColor(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method public canGoBack()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isReaderView()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->canGoBack()Z

    move-result p0

    return p0
.end method

.method public checkParentalControl(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getRestrictHelper()Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;->moveToCorrectPageIfNeeded(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getRestrictHelper()Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;->checkUrlBlocked(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->updateTitle()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isReaderPage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->setReaderPageEnabled(ZZZZ)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->close()V

    sget-object v0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_TOPBAR:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->enableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZLandroid/graphics/Bitmap;)V

    sget-object v0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_BOTTOMBAR:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->enableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZLandroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->close()V

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->close()V

    return-void
.end method

.method public closeDialogIfNecessary()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->closeDialogIfNecessary()V

    return-void
.end method

.method public closeInfoBar()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->closeInfoBar()V

    return-void
.end method

.method public deactivate()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->deactivate()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->close()V

    return-void
.end method

.method public destroyNativePage()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->destroyNativePage()V

    return-void
.end method

.method public destroySelectedText()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->destroySelectActionMode()V

    return-void
.end method

.method public didShowPrivacyDownloadDialog()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNeedPrivacyDownloadDialog:Z

    return-void
.end method

.method public dismissContextMenu()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContextMenuPopulator:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->dismiss()V

    return-void
.end method

.method public dismissContextMenuWithExtractText()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContextMenuPopulator:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->dismissWithExtractText()V

    return-void
.end method

.method public enterEditMode(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->enterEditMode(ZZ)V

    return-void
.end method

.method public exitEditMode(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->exitEditMode(ZZ)V

    return-void
.end method

.method public getArticleImageUrl()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->getArticleImageUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBaseContext()Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getBoardingPassProcessor()Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mBoardingPassProcessor:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;

    return-object p0
.end method

.method public getBottomMargin()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mBottomControlsHeight:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabLayout()Lcom/sec/android/app/sbrowser/tab/TabLayout;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->getVisibleBottomMargin()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    move-result-object p0

    return-object p0
.end method

.method public getNativePage()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->getNativePage()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getOriginalTabOfReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getOriginalTabOfReaderTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getOriginalTabOfReaderTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->getOriginalTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isSavedPageUrl()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mOriginalUrlForSavedPage:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->getUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mOriginalUrlForSavedPage:Ljava/lang/String;

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mOriginalUrlForSavedPage:Ljava/lang/String;

    return-object p0
.end method

.method public getPWAStatus()Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->getPWAStatus()Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    move-result-object p0

    return-object p0
.end method

.method public getParentalControlBlockedUrl()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mParentalControlBlockedUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getPreviousUpdatedUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mPreviousUpdatedUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getReader()Lcom/sec/android/app/sbrowser/common/model/reader/IReader;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->getReader()Lcom/sec/android/app/sbrowser/reader/Reader;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getReaderTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->getReaderTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getReaderTabWhenSplitView()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderTabWhenSplitView()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getReaderTabWhenSplitView()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->getReaderTabWhenSplitView()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getReaderTheme()I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->getReaderTheme()I

    move-result p0

    return p0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getSelectedText()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getTopMargin()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTopControlsHeight:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabLayout()Lcom/sec/android/app/sbrowser/tab/TabLayout;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->getVisibleTopMargin()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isReaderView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->getReaderTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public goBack()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getRestrictHelper()Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;->goBackToPreviousPage(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isReaderView()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->onReaderButtonClick()V

    goto :goto_0

    :cond_2
    const-string v0, "si__SBrowserTab"

    const-string v1, "goBack"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->goBack()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->goBack()Z

    :goto_0
    return-void
.end method

.method public handleAssistantMenuItemClicked()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getLiveTextController()Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getLiveTextController()Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->didRemoveClientView()Z

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getObjectCaptureController()Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getObjectCaptureController()Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->didRemoveClientView()Z

    :cond_1
    return-void
.end method

.method public handleQuickAccessRequestResult(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->handleQuickAccessRequestResult(I)V

    return-void
.end method

.method public hide()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->hide()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isReaderView()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->hide()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->hide()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->hide()V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->onTabHidden()V

    return-void
.end method

.method public hideInfoBar()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->hideInfoBar()V

    return-void
.end method

.method public hideReader()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isReaderView()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->setReaderPageEnabled(ZZZZ)V

    :cond_0
    return-void
.end method

.method public initializeTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ILandroid/content/Context;Lcom/sec/terrace/Terrace;ZZLjava/lang/String;I)V
    .locals 0
    .param p4    # Lcom/sec/terrace/Terrace;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super/range {p0 .. p8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->initializeTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ILandroid/content/Context;Lcom/sec/terrace/Terrace;ZZLjava/lang/String;I)V

    new-instance p1, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    new-instance p1, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabActiveTimeManager;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabActiveTimeManager;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTabActiveTimeManager:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabActiveTimeManager;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mBoardingPassProcessor:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;->createBoardingPassProcessor(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mBoardingPassProcessor:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isParentalControlUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->loadUrl(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->updateUseDesktopUserAgent()V

    return-void
.end method

.method public initializeTerrace()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->initializeTerrace()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->initializeContextMenu()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->initialize()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->setTabID(I)V

    return-void
.end method

.method public isArticleAvailable()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->isArticleAvailable()Z

    move-result p0

    return p0
.end method

.method public isBookmarkAvailable()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isNativePage()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isSavedPageUrl()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isFileUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isMultiCpUrl()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isUnifiedHomepageUrl()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "data:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mNavigatingUrl:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isWebUIUrl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method public isCheckableBottomBarVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->isCheckableBottomBarVisible()Z

    move-result p0

    return p0
.end method

.method public isEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->isEditMode()Z

    move-result p0

    return p0
.end method

.method public isErrorPage()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mIsErrorPage:Z

    return p0
.end method

.method public isExtractionFailed()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->isExtractionFailed()Z

    move-result p0

    return p0
.end method

.method public isInfoBarPresent()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->isInfoBarPresent()Z

    move-result p0

    return p0
.end method

.method public isLaunchedFromSplitView()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabLaunchType()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->isLaunchedFromSplitView()Z

    move-result p0

    return p0
.end method

.method public isNativeInitialScreen()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->isNativeInitialScreen()Z

    move-result p0

    return p0
.end method

.method public isNativePage()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->isNativePage()Z

    move-result p0

    return p0
.end method

.method public isNativePageVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->isNativePageVisible()Z

    move-result p0

    return p0
.end method

.method public isNeedToHideToolbarShadow()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->isNeedToHideToolbarShadow()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isUnifiedHomepageUrl()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isMultiCpUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeView(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOfflineModePage()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isSavedPageUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getOriginalUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPWAInstalling()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getPWAStatus()Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getPWAStatus()Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->isInstalling()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isParentalControlNativePage()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getNativePage()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    move-result-object p0

    instance-of p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQuickAccessNativePage()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getNativePage()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isReadyToShow()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getUrl()Ljava/lang/String;

    move-result-object p0

    const-string v0, "chrome-native://newtab/"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReaderPage()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isReaderView()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isSavedReaderPage()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isReaderTabLoadFinished()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->isLoadFinished()Z

    move-result p0

    return p0
.end method

.method public isReaderView()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->isReaderView()Z

    move-result p0

    return p0
.end method

.method public isReadyToShow()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->isReadyToShow()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isReaderView()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->isReadyToShow()Z

    move-result p0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isReadyToShow()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public isSavedPageUrl()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isSavedPageUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSavedReaderPage()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->isSavedReaderPage()Z

    move-result p0

    return p0
.end method

.method public isSolidColorLightThemed()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->isSolidColorLightThemed()Z

    move-result p0

    return p0
.end method

.method public isUrlBlockedByParentalControl(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getRestrictHelper()Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;->isUrlBlockedByParentalControl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public loadParentalControlUnblockedUrl()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getParentalControlBlockedUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isParentalControlNativePage()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isParentalControlUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/m;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/m;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public loadUrl(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;ZI)V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p6, v0, :cond_1

    const/4 v1, 0x2

    if-ne p6, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getBaseContext()Landroid/content/Context;

    move-result-object p6

    invoke-static {p6, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->isSavedReaderPage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p6

    invoke-virtual {p0, p6}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->setIsSavedReaderPage(Z)V

    :cond_2
    iget-object p6, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p6, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->onLoadUrl(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result p6

    if-nez p6, :cond_3

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsLoading:Z

    :cond_3
    if-eqz p2, :cond_4

    const-string p6, "about:contentblock"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_4

    const-string p2, "internet://contentblock"

    :cond_4
    if-eqz p1, :cond_5

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->createLoadUrlParamsForIntent(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;

    move-result-object p0

    invoke-virtual {p5, p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->loadUrl(Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->createLoadUrlParams(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->loadUrl(Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;)V

    :goto_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;ILjava/lang/String;ZI)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->loadUrl(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;ZI)V

    return-void
.end method

.method public loadUrlFromSitesActivity(Landroid/content/Intent;)V
    .locals 8
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "HistorySelectedUrl"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v3, v0

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->updateIntent(Landroid/content/Intent;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->setReaderPageEnabled(ZZZZ)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v4, 0x8000000

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->loadUrl(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;ZI)V

    return-void
.end method

.method public loadUrlWithRunnable(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/m;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/m;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getWasRenderProcessGone()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->onAttachedToWindow(Z)V

    return-void
.end method

.method public onConfigurationChangedFromMainView(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->updateInfoBar()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->dismissContextMenuWithExtractText()V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->setOrientationChanged()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getUseDesktopUserAgent()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setCustomUserAgentIfNeeded(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isContinueAppsOnMainScreenEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->showReloadTipCardIfNeeded()V

    :cond_2
    return-void
.end method

.method public onCurrentTabChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getUseDesktopUserAgent()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setCustomUserAgentIfNeeded(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->hideVideoAssistant()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->onCurrentTabChanged()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->onDetachedFromWindow()V

    return-void
.end method

.method public onDidCommitProvisionalLoadForFrame(JZLjava/lang/String;I)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->onDidCommitProvisionalLoadForFrame()V

    if-eqz p3, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsLoading:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->onDidCommitProvisionalLoadForFrame(Ljava/lang/String;I)V

    invoke-virtual {p0, p4}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->changeUserAgentIfNeeded(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mUserAgentOverrideManager:Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;

    invoke-virtual {p1, p5}, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->reloadIfBackForwardNav(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mProvisionalLoad:Z

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mIsErrorPage:Z

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mProvisionalLoadUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->showDocumentPage()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDidStartProvisionalLoadForFrame(ZLjava/lang/String;ZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->onDidStartProvisionalLoadForFrame(ZLjava/lang/String;ZZ)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mProvisionalLoadUrl:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mProvisionalLoad:Z

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->shouldInvalidateTabContents(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->invalidateTabContents(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->onDidStartProvisionalLoadForFrame(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->notifyDidStartProvisionalLoadForFrame()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onLaunchNewTabFromAssistIntent()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->notifyLaunchNewTabFromAssistIntent()V

    return-void
.end method

.method public onLaunchNewTabFromExternalApp()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->notifyLaunchNewTabFromExternalApp()V

    return-void
.end method

.method public onLoadFailed(ZZILjava/lang/String;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "didFailLoad: Id("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") errorCode("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") mainFrame("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "si__SBrowserTab"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->updateTitle()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsLoading:Z

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mProvisionalLoad:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->onLoadFailed()V

    const/4 p1, -0x3

    if-ne p3, p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->showNativePage()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mNavigatingUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->showDocumentPage()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mIsErrorPage:Z

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {p0, p3, p4}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->onLoadFailed(ILjava/lang/String;)V

    return-void
.end method

.method public onLoadFinished(JLjava/lang/String;Z)V
    .locals 1

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isRelatedReaderUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p4, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->handleDidFinishLoad(JLjava/lang/String;Z)V

    :cond_1
    if-nez p4, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getRestrictHelper()Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;->moveToCorrectPageIfNeeded(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Ljava/lang/String;)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mRemoveParentalControlHistory:Z

    if-eqz p1, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->removeParentalControlHistory()V

    :cond_4
    return-void
.end method

.method public onLoadProgressChanged(D)V
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsLoading:Z

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-nez v0, :cond_0

    cmpg-double v0, p1, v1

    if-gez v0, :cond_0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mProgress:D

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyProgressChanged(D)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mProvisionalLoad:Z

    if-eqz v0, :cond_1

    cmpl-double v0, p1, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mProgress:D

    cmpl-double v0, v3, p1

    if-nez v0, :cond_2

    cmpl-double v0, p1, v1

    if-nez v0, :cond_2

    return-void

    :cond_2
    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mProgress:D

    cmpl-double p1, p1, v1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isRelatedReaderUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getUrl()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->handleDidFinishLoad(JLjava/lang/String;Z)V

    :cond_4
    return-void
.end method

.method public onMainActivityRecreated(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mBoardingPassProcessor:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->onMainActivityRecreated(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mReaderHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->onMainActivityRecreated(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->onMultiWindowModeChanged(Z)V

    :cond_0
    return-void
.end method

.method public onParentalConfirm()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getRestrictHelper()Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getParentalControlBlockedUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;->addUrlOnAllowedList(Ljava/lang/String;)V

    return-void
.end method

.method public onReadyToShowTabAfterRecreate(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->onReadyToShowTabAfterRecreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mReaderHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->getReaderTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mReaderHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->getReaderTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->onReadyToShowTabAfterRecreate(Landroid/content/Context;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->onReadyToShowTabAfterRecreate(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onRecognizeArticleResult(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->onRecognizeArticleResult(Z)V

    return-void
.end method

.method public onReportCrash(ZI)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Render process gone! Tad id : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " needToShowCrash : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", termination status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "si__SBrowserTab"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "enable-tabcrash-to-appcrash"

    invoke-static {p1}, Lcom/sec/terrace/TerraceCommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Tab crash to app crash"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/base/AssertUtil;->assertTabcrashToAppcrash()V

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setIsRenderViewReady(Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isReaderView()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->getReaderTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->destroyReader()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isNativePage()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->destroyReader()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->closeNativePage()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->closeNativePage()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->destroyReader()V

    const-string p1, "removeView IndexOutOfBoundsException"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isHidden()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const-string p1, "Need to show tab crash ui in background, skip it."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mIsTabCrashUiInBG:Z

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mLastGoneTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const-string p1, "Render process gone! elapsed secs: "

    invoke-static {v3, v4, p1, v0}, Landroidx/recyclerview/widget/P;->k(JLjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x708

    cmp-long p1, v3, v5

    if-lez p1, :cond_5

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mReloadOnceAfterForegroundCrash:Z

    :cond_5
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mReloadOnceAfterForegroundCrash:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v3, 0x64

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "Reload once after crashed"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/n;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lcom/sec/android/app/sbrowser/sbrowser_tab/n;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;I)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mNavigatingUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "Restore once after crashed"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/n;

    const/4 v5, 0x1

    invoke-direct {v0, p0, v5}, Lcom/sec/android/app/sbrowser/sbrowser_tab/n;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;I)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_7
    const-string p1, "renderProcessGone: showCrashTabView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isReloadAfterSandboxProcessCrashEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mReloadOnceAfterForegroundCrash:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->showCrashView()V

    :cond_8
    :goto_1
    iput-wide v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mLastGoneTime:J

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyToolbarVisibilityChanged(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyBottombarVisibilityChanged(Z)V

    return-void
.end method

.method public onThemeColorChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->onThemeColorChanged(I)V

    return-void
.end method

.method public onUpdateTitle(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->updateTitle(Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateUrl(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mPreviousUpdatedUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mPreviousUpdatedUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isContentUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyReaderPageVisibilityChanged(ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mPreviousUpdatedUrl:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyUrlChangedWithPreviousUrl(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mOriginalUrlForSavedPage:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mPreviousUpdatedUrl:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsTerraceStateDirty:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyUrlUpdated(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyBackForwardUpdated()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBlockDeepLinkEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyDeepLinkStatusChanged()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->initFaviconDominantColor()V

    :cond_2
    return-void
.end method

.method public requestUserAgent(ZLandroid/app/Activity;)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isChangeUARefresh()Z

    move-result v0

    const-string v1, "si__SBrowserTab"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFrontScreen()Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "requestUserAgent, isFrontScreen = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "requestUserAgent, isFocusedNodeEditable = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isFocusedNodeEditable()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isFocusedNodeEditable()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setUseDesktopUserAgent(ZZ)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/UserAgentUtils;->isSatisfiedLargeTabletMobileUAPolicy(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getUseDesktopUserAgent()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestUserAgent, isTabletLayout = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestUserAgent, isDesktopUserAgent = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p2, v0, :cond_1

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setUseDesktopUserAgent(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public saveAllImages(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "si__SBrowserTab"

    const-string p1, "scanAllImages :: tab is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->scanImages(Ljava/lang/String;)V

    return-void
.end method

.method public savePageUtilityCheck()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "about:blank"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isFirstpageUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isNativePage()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isSavedPageUrl()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isInternalUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isUnifiedHomepageUrl()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isErrorPage()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isMultiCpUrl()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isDataUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isLoading()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setIsSavedReaderPage(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->setIsSavedReaderPage(Z)V

    return-void
.end method

.method public setNativePageDelegate(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->setNativePageDelegate(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;)V

    return-void
.end method

.method public setNativePageEarly(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->setNativePageEarly(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;)V

    return-void
.end method

.method public setOrientationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isNeedToHideToolbarShadow()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyToolbarShadowVisibilityChanged(Z)V

    return-void
.end method

.method public setOriginalUrlForSavedPage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mOriginalUrlForSavedPage:Ljava/lang/String;

    return-void
.end method

.method public setParentalControlBlockedUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mParentalControlBlockedUrl:Ljava/lang/String;

    return-void
.end method

.method public setReaderPageEnabled(ZZZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->setReaderPageEnabled(ZZZZ)V

    return-void
.end method

.method public setRemoveParentalControlHistory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mRemoveParentalControlHistory:Z

    return-void
.end method

.method public bridge synthetic setZoomInfoBarAnchorView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setZoomInfoBarAnchorView(Landroid/view/View;)V

    return-void
.end method

.method public shouldShowBottomBarShadow()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->shouldShowBottomBarShadow()Z

    move-result p0

    return p0
.end method

.method public shouldShowToolbarShadow()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->shouldShowToolbarShadow()Z

    move-result p0

    return p0
.end method

.method public show()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->show()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mIsTabCrashUiInBG:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mIsTabCrashUiInBG:Z

    const-string v0, "si__SBrowserTab"

    const-string v1, "show: Tab Crash UI in background, reload"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->reload()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->updateTitle()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setContextMenuEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isReaderView()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyToolbarShadowVisibilityChanged(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getReaderHandler()Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderHandler;->show()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isNativePage()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->showNativePage()V

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isNeedToHideToolbarShadow()Z

    move-result v2

    xor-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyToolbarShadowVisibilityChanged(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->show()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setImportance(Z)V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isRenderViewReady()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyShow()V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mPendingLoadUrl:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mPendingLoadUrl:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mUserAgentOverrideManager:Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->reloadIfRequired()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->recordLastShowTimestampMillis()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->onTabShown()V

    return-void
.end method

.method public showInfoBar()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->showInfoBar()V

    return-void
.end method

.method public showNativePage(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->mNativePageHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->showNativePage(Ljava/lang/String;)V

    return-void
.end method

.method public showReloadTipCardIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UserAgentUtils;->isAutoSwitchUserAgentForMultiFold(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isContinueAppsOnMainScreenEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mShouldUseDesktopUserAgent:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->shouldUseDesktopUserAgent()Z

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->showReloadTipCardIfNeeded()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateInfoBar()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->updateInfoBar()V

    return-void
.end method

.method public updateParentalControlData()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getRestrictHelper()Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;->updateData()V

    return-void
.end method
