.class public Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field private mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

.field private mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->lambda$showAddToDialog$0(II)V

    return-void
.end method

.method private addShortcut(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->addShortcut(IILandroid/view/View;Z)V

    return-void
.end method

.method private addShortcut(IILandroid/view/View;Z)V
    .locals 3
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "addShortcut : "

    const-string v1, " , source : "

    const-string v2, "AddToMenu"

    invoke-static {p1, p2, v0, v1, v2}, Lt/b;->w(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordAddWebPageToAppsScreen(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordAddWebPageToHomeScreen(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;->isNoTabInCurrentMode()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getView()Landroid/view/View;

    move-result-object p0

    const p2, 0x7f1410c8

    invoke-static {p1, p0, p2}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/content/Context;Landroid/view/View;I)V

    return-void

    :cond_4
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->addShortcut(IILandroid/view/View;Z)V

    return-void
.end method

.method private canAddToQuickAccess()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;->isSecretModeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isContentUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSBrowserViewModel()Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    move-result-object p0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->canAddQuickAccess(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method private getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p0

    return-object p0
.end method

.method private isUnavailableAddTo(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isUnifiedHomepageUrl()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isMultiCpUrl()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isErrorPage()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isInternalUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$showAddToDialog$0(II)V
    .locals 2

    const/4 v0, 0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordAddWebPageToSavedPages(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->savePage()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->addQuickAccess()V

    goto :goto_0

    :sswitch_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMenuPopupAnchorView(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x5

    const/4 v1, 0x6

    invoke-direct {p0, p2, v1, p1, v0}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->addShortcut(IILandroid/view/View;Z)V

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->getOrCreateInstance()Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMenuPopupAnchorView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->setAnchor(Landroid/view/View;)V

    const/4 p1, 0x4

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->addShortcut(II)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordAddWebPageToBookmarks(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->addBookmarkBar()V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordAddWebPageToBookmarks(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;->addBookmark(Z)Z

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f14024a -> :sswitch_5
        0x7f140282 -> :sswitch_4
        0x7f1405df -> :sswitch_3
        0x7f14086b -> :sswitch_2
        0x7f140b92 -> :sswitch_1
        0x7f140dd9 -> :sswitch_0
    .end sparse-switch
.end method

.method private savePage()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;->isNoTabInCurrentMode()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->savePage(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "AddToMenu"

    const-string v0, "savePage failed - isNoTabInCurrentMode() is true"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addQuickAccess()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordAddWebPageToQuickAccess(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->canAddToQuickAccess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSBrowserViewModel()Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    move-result-object p0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->addQuickAccessItems(Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;)V

    return-void
.end method

.method public addShortcut()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getPWAStatus()Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->isUnavailableAddTo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isIncognitoMode()Z

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isAddShortCutToHomeScreenAvailable(Landroid/content/Context;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "data:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isReaderPage()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->getPwaType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->isInstalling()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->addShortcut(II)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    const/16 v1, 0x12

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->addShortcut(II)V

    :cond_4
    :goto_0
    return-void
.end method

.method public dismissAddToDialog()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;->getInstance()Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;->dismiss()V

    return-void
.end method

.method public getAddToAvailable()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isBookmarkAvailable()Z

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getPWAStatus()Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isLoading()Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isOfflineMode()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->isUnavailableAddTo(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    move v0, v5

    move v4, v0

    move v7, v4

    :goto_0
    move v8, v7

    goto :goto_5

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getContentMimeType()Ljava/lang/String;

    move-result-object v4

    const-string v7, "text/html"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isSavedPageUrl(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isSplitMode()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isIncognitoMode()Z

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v8, v5}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isAddShortCutToHomeScreenAvailable(Landroid/content/Context;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    move v8, v6

    goto :goto_3

    :cond_4
    :goto_2
    move v8, v5

    :goto_3
    if-eqz v7, :cond_5

    move v7, v5

    goto :goto_4

    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSBrowserViewModel()Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->canAddQuickAccess(Ljava/lang/String;)Z

    move-result v7

    :goto_4
    const-string v9, "data:"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isReaderPage()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    move v7, v5

    goto :goto_0

    :cond_7
    :goto_5
    if-eqz v8, :cond_9

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->getPwaType()I

    move-result v2

    const/4 v9, 0x5

    if-eq v2, v9, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->isInstalling()Z

    move-result v2

    xor-int/lit8 v5, v2, 0x1

    :cond_9
    :goto_6
    if-eqz v0, :cond_a

    const v0, 0x7f14024a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, 0x7f140282

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string p0, "getAddToAvailable, homeScreen = "

    const-string v0, "AddToMenu"

    invoke-static {p0, v0, v8}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v7, :cond_b

    const p0, 0x7f140b92

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    if-eqz v8, :cond_c

    const p0, 0x7f1405df

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    if-eqz v5, :cond_d

    const p0, 0x7f14086b

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    if-eqz v4, :cond_e

    const p0, 0x7f140dd9

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_7
    return-object v1
.end method

.method public setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    return-void
.end method

.method public showAddToDialog(I)Z
    .locals 5

    const-string v0, "AddToMenu"

    const-string v1, "showAddToDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->getAddToAvailable()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;->getInstance()Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AddToMenu;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v3, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMenuPopupAnchorView(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, LG6/b;

    invoke-direct {v4, p1, p0}, LG6/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;->show(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/View;Lcom/sec/android/app/sbrowser/toolbar/AddToHelper$Listener;)V

    const/4 p0, 0x1

    return p0
.end method
