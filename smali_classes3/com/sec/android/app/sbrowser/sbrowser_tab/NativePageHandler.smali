.class public Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContainerView:Landroid/view/ViewGroup;

.field private mContentJSHelper:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;

.field private mContext:Landroid/content/Context;

.field private mIsLoadingFromQuickAccess:Z

.field private mIsNativePageVisible:Z

.field private mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

.field private mNativePageDelegate:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;

.field private mRequestUrlOnNativePage:Ljava/lang/String;

.field private mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

.field private mThemeColorForQuickAccess:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mContainerView:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/b;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/b;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)V

    invoke-direct {p1, v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;-><init>(Lcom/sec/android/app/sbrowser/tab/Tab;Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper$Delegate;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mContentJSHelper:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->lambda$new$0()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->lambda$showNativePage$1()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mContainerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mThemeColorForQuickAccess:I

    return p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->getVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->loadUrl(Ljava/lang/String;I)V

    return-void
.end method

.method private getVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePageDelegate:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePageDelegate:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderView()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    :cond_1
    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->notifyNativePageEditModeChanged(Z)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->notifyNativePageVisibilityChanged(Z)V

    return-void
.end method

.method private synthetic lambda$new$0()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    return-object p0
.end method

.method private synthetic lambda$showNativePage$1()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePageDelegate:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;->getMainViewLayout()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private loadUrl(Ljava/lang/String;I)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->show()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->createLoadUrlParams(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->loadUrl(Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setIsLoading(Z)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mRequestUrlOnNativePage:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mIsLoadingFromQuickAccess:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->showDocumentPage()V

    return-void
.end method

.method private notifyNativePageEditModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyNativePageEditModeChanged(Z)V

    return-void
.end method

.method private notifyNativePageVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyNativePageVisibilityChanged(Z)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->setBitmapCallback(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->closeNativePage()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mContentJSHelper:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->destroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mContentJSHelper:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;

    :cond_1
    return-void
.end method

.method public closeDialogIfNecessary()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->closeDialogIfNecessary()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mContentJSHelper:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->closeDialogIfNecessary()V

    :cond_1
    return-void
.end method

.method public closeNativePage()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePageDelegate:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;->closeNativePage(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    return-void
.end method

.method public destroyNativePage()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mContainerView:Landroid/view/ViewGroup;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->destroy()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mIsNativePageVisible:Z

    return-void
.end method

.method public enterEditMode(ZZ)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;->INTERNAL:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    if-eqz p1, :cond_4

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->isNativePage()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;->HOMEPAGE_SETTINGS_FROM_NATIVE_PAGE:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    :goto_0
    move-object v0, p2

    goto :goto_1

    :cond_0
    sget-object p2, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;->HOMEPAGE_SETTINGS_FROM_WEBPAGE:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isUnifiedHomepageUrl()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;->UHP:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->isNativePage()Z

    move-result p2

    if-nez p2, :cond_3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;->POPUP:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    :cond_3
    :goto_1
    const-string p2, "internet-native://newtab/"

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->showNativePage(Ljava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->getVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setAccessibilityEnabled(Z)V

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->hideInfoBar()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    if-eqz p0, :cond_6

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->enterEditMode(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;)V

    :cond_6
    return-void
.end method

.method public exitEditMode(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->exitEditMode(ZZ)V

    :cond_0
    return-void
.end method

.method public getNativePage()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mRequestUrlOnNativePage:Ljava/lang/String;

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->getView()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public handleQuickAccessRequestResult(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mContentJSHelper:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->handleQuickAccessRequestResult(I)V

    :cond_0
    return-void
.end method

.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePageDelegate:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eq v0, p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setImportance(Z)V

    :cond_0
    return-void
.end method

.method public isCheckableBottomBarVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->isCheckableBottomBarVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->isEditMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLoadingFromNativePage()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mIsLoadingFromQuickAccess:Z

    return p0
.end method

.method public isNativeInitialScreen()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->isInitialScreen()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNativePage()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNativePageVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mIsNativePageVisible:Z

    return p0
.end method

.method public isNeedToHideToolbarShadow()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->isNeedToHideToolbarShadow()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReadyToShow()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->isReadyToShow()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSolidColorLightThemed()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->isSolidColorLightThemed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyLaunchNewTabFromAssistIntent()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->notifyLaunchNewTabFromAssistIntent()V

    :cond_0
    return-void
.end method

.method public notifyLaunchNewTabFromExternalApp()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->notifyLaunchNewTabFromExternalApp()V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mContentJSHelper:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->onAttachedToWindow(Z)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mContentJSHelper:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public onDidCommitProvisionalLoadForFrame()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mRequestUrlOnNativePage:Ljava/lang/String;

    return-void
.end method

.method public onLoadFailed()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mRequestUrlOnNativePage:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mIsLoadingFromQuickAccess:Z

    return-void
.end method

.method public onLoadFinished(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mIsLoadingFromQuickAccess:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->isLoadingFromNativePage()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setIsLoading(Z)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isErrorPage()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->isNativePage()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->exitEditMode(ZZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->showDocumentPage()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mContentJSHelper:Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ContentJavaScriptHelper;->handleDidFinishLoad()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->isNativePage()Z

    move-result v3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isHidden()Z

    move-result v6

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessController;->onDidFinishLoad(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    return-void
.end method

.method public onLoadStarted(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mRequestUrlOnNativePage:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->showNativePage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->showDocumentPage()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onLoadUrl(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mRequestUrlOnNativePage:Ljava/lang/String;

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->showNativePage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->showDocumentPage()V

    :goto_0
    return-void
.end method

.method public onThemeColorChanged(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getThemeColor()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mThemeColorForQuickAccess:I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyDidChangeThemeColor(I)V

    :cond_1
    return-void
.end method

.method public setNativePageDelegate(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePageDelegate:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;

    return-void
.end method

.method public setNativePageEarly(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    :cond_0
    return-void
.end method

.method public shouldShowBottomBarShadow()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->getNativePage()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->isScrollBottomReached()Z

    move-result p0

    if-nez p0, :cond_0

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

.method public shouldShowToolbarShadow()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->getNativePage()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->isScrollTopReached()Z

    move-result p0

    if-nez p0, :cond_0

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

.method public showDocumentPage()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mContainerView:Landroid/view/ViewGroup;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showDoc: removeView = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " child = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativePageHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->closeNativePage()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->getVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->show()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->updateTitle()V

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->notifyNativePageVisibilityChanged(Z)V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mIsNativePageVisible:Z

    return-void
.end method

.method public showNativePage(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isRestrictEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->destroyNativePage()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isRestrictEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isParentalControlNativePage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->destroyNativePage()V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    if-nez v0, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isRestrictEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isParentalControlUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->getParentalControlStatus()Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->shouldShowMinorPage()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage;-><init>(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    goto :goto_2

    :cond_3
    new-instance p1, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlPage;-><init>(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    :goto_2
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePageDelegate:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;->getNativePage(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    move-result-object p1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    :goto_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    if-nez p1, :cond_6

    return-void

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePageDelegate:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eq p1, v0, :cond_7

    const-string p0, "NativePageHandler"

    const-string p1, "This tab is not current tab, so not to show native page."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePageDelegate:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->initializePageViewIfNeeded(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)V

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->setListener(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/b;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/b;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)V

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->setDelegate(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageViewDelegate;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isHidden()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mContainerView:Landroid/view/ViewGroup;

    if-eq p1, v0, :cond_9

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mContainerView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mNativePage:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_a
    :goto_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getThemeColor()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mThemeColorForQuickAccess:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setThemeColor(IZ)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mIsNativePageVisible:Z

    if-nez p1, :cond_b

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->notifyNativePageVisibilityChanged(Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mIsNativePageVisible:Z

    :cond_b
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->hide()V

    :cond_c
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyFaviconUpdated()V

    :cond_d
    return-void
.end method
