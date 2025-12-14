.class public Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

.field private mContext:Landroid/content/Context;

.field private mKeyboardShortcuts:Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;

.field private mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->lambda$onBackPressedNoParentTab$0(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method private checkOnBackPressed()Z
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/StatusUtil;->isSavedPageRunning()Z

    move-result v1

    const-string v2, "si__MainViewKeyEvent"

    if-eqz v1, :cond_0

    const-string v1, "onBackPressed : SavedPageRunning"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaveWebPage()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->onCancel(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isShowing()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const-string p0, "onBackPressed : dismiss clipboard dialog"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->dismissClipboardDialog()V

    return v3

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->isAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "onBackPressed : TabAnimator#isAnimationRunning"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->isMultiTabShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->checkOnBackPressedMultiTab()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isNoTabsShowing()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    return v4

    :cond_4
    if-nez v0, :cond_5

    const-string p0, "onBackPressed : current tab is null"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_6

    const-string p0, "onBackPressed : focused tab is null"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_6
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p0, "onBackPressed : consumed by tab"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->finishFindOnPage()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string p0, "onBackPressed : finish find on page."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_8
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string p0, "onBackPressed : iseditmode"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v3, v4}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->exitEditMode(ZZ)V

    return v3

    :cond_9
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSelectActionModeShowing()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string p0, "onBackPressed : destroy selected text"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->destroySelectedText()V

    return v3

    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->finishEditMode()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string p0, "onBackPressed : finished Edit mode successfully"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_b
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->didRemoveVisionTextView()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string p0, "onBackPressed : removed Extract Text view successfully"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_c
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->didRemoveObjectCaptureView()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string p0, "onBackPressed : removed Object Capture view successfully"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isReaderModeInProgress()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "onBackPressed : reader mode canceled"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v4, v4, v4, v4}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setReaderPageEnabled(ZZZZ)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewToolbar()Lcom/sec/android/app/sbrowser/common/model/main/IMainViewToolbar;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/IMainViewToolbar;->onReaderModeCanceled()V

    return v3

    :cond_e
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getImageTextTranslator()Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    move-result-object v1

    if-eqz v1, :cond_f

    const-string v1, "onBackPressed : ITT canceled"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getImageTextTranslator()Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->cancelTranslationAndPerformCleanup()V

    :cond_f
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->checkOnBackPressed()Z

    move-result v1

    if-eqz v1, :cond_10

    return v3

    :cond_10
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->onBackPressedCanGoBack(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    return p0

    :cond_11
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSplitTab()Lcom/sec/android/app/sbrowser/common/model/main/IMainViewSplitTab;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/main/IMainViewSplitTab;->checkOnBackPressed()Z

    move-result v1

    if-eqz v1, :cond_12

    return v3

    :cond_12
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getParentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->onBackPressedParentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    return p0

    :cond_13
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->onBackPressedNoParentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    return p0
.end method

.method private getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method private getKeyboardShortcuts()Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mKeyboardShortcuts:Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mKeyboardShortcuts:Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mKeyboardShortcuts:Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;

    return-object p0
.end method

.method private isMultiTabShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMultiTabShowing()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onBackPressedNoParentTab$0(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isResumed()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->hide()V

    :cond_0
    return-void
.end method

.method private onBackPressedCanGoBack(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 1

    const-string p0, "si__MainViewKeyEvent"

    const-string v0, "onBackPressed : canGoBack"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->goBack()V

    const/4 p0, 0x1

    return p0
.end method

.method private onBackPressedForExit()V
    .locals 2

    const-string v0, "onBackPressedForExit"

    const-string v1, "si__MainViewKeyEvent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->getEnablePromptToExit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->isMultiTabShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->askExit()V

    goto :goto_0

    :cond_0
    const-string v0, "onBackPressedForExit, finishOrMoveTaskToBack"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->finishOrMoveTaskToBack()V

    :goto_0
    return-void
.end method

.method private onBackPressedNoParentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 4

    const-string v0, "si__MainViewKeyEvent"

    const-string v1, "onBackPressed : no parent Tab"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->getEnablePromptToExit()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "onBackPressedNoParentTab : locked currentTab"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getAppAssociatedWith()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabLaunchType()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_EXTERNAL_APP:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    if-ne v1, v3, :cond_2

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/h;

    const/4 v3, 0x6

    invoke-direct {v1, v3, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return v2
.end method

.method private onBackPressedParentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 3

    const-string v0, "si__MainViewKeyEvent"

    const-string v1, "onBackPressed : parent Tab"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isTransBarContainerShowing()Z

    move-result v0

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v2, v2, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setReaderPageEnabled(ZZZZ)V

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->startTabAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getOptionMenuBadgeCount()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateOptionMenuBadgeVisibility(I)V

    return v1
.end method


# virtual methods
.method public handleKeyEvent(Landroid/view/KeyEvent;)Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getLiveTextController()Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getLiveTextController()Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->handleKeyEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getObjectCaptureController()Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getObjectCaptureController()Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->handleKeyEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->getKeyboardShortcuts()Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->handleKeyEvent(Landroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onBackPressed()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->checkOnBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewKeyEvent;->onBackPressedForExit()V

    return-void
.end method
