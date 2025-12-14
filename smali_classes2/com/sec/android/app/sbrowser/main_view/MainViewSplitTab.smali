.class Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/main/IMainViewSplitTab;


# instance fields
.field private mLeftTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

.field private final mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

.field private final mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field private mRightTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

.field private mSplitTabLayout:Lcom/sec/android/app/sbrowser/main_view/SplitTabLayout;

.field private final mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->lambda$setLeftTab$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->lambda$setRightTab$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private finishSplitMode()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->isSecretModeEnabled()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->finishSplitMode(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->hide()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewToolbar()Lcom/sec/android/app/sbrowser/common/model/main/IMainViewToolbar;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/IMainViewToolbar;->onSplitModeStatusChanged()V

    return-void
.end method

.method private getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method private isInvalidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

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

.method private isSameTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 0

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p2

    if-ne p1, p2, :cond_1

    const/4 p0, 0x1

    :cond_1
    :goto_0
    return p0
.end method

.method private isSecretModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$setLeftTab$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mSplitTabLayout:Lcom/sec/android/app/sbrowser/main_view/SplitTabLayout;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/main_view/SplitTabLayout;->setFocusToLeft()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mLeftTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setFocusedTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$setRightTab$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mSplitTabLayout:Lcom/sec/android/app/sbrowser/main_view/SplitTabLayout;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/main_view/SplitTabLayout;->setFocusToRight()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mRightTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setFocusedTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setLeftTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->isInvalidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mLeftTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->isSameTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getThinWebView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mLeftTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mSplitTabLayout:Lcom/sec/android/app/sbrowser/main_view/SplitTabLayout;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/main_view/SplitTabLayout;->setLeftWebView(Landroid/view/View;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/S;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/main_view/S;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private setRightTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->isInvalidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mRightTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->isSameTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getThinWebView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mRightTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mSplitTabLayout:Lcom/sec/android/app/sbrowser/main_view/SplitTabLayout;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/main_view/SplitTabLayout;->setRightWebView(Landroid/view/View;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/S;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/main_view/S;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private startSplitMode(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->isSecretModeEnabled()Z

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->startSplitMode(ZZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->startSplitMode(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewToolbar()Lcom/sec/android/app/sbrowser/common/model/main/IMainViewToolbar;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/IMainViewToolbar;->onSplitModeStatusChanged()V

    return-void
.end method


# virtual methods
.method public checkOnBackPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isTransBarContainerShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->onOffSplitMode()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->finishSplitMode()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mLeftTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mRightTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onSplitModeFinished()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mSplitTabLayout:Lcom/sec/android/app/sbrowser/main_view/SplitTabLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/SplitTabLayout;->hide()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->setSplitMode(Z)V

    return-void
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mSplitTabLayout:Lcom/sec/android/app/sbrowser/main_view/SplitTabLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/SplitTabLayout;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCurrentTabChanged()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitModeOnLeft()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->startSplitMode(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->hide()V

    :goto_0
    return-void
.end method

.method public onLayoutModeChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mSplitTabLayout:Lcom/sec/android/app/sbrowser/main_view/SplitTabLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/SplitTabLayout;->updateLayoutParams()V

    return-void
.end method

.method public onToggleSplitMode(ZZZZ)V
    .locals 1

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "onTransSplitMode(): "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->isShowing()Z

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isEnabled : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isLeftActive : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isAllOff : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "si__MainViewSplitTab"

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->stopSummarizeIfNeeded()V

    xor-int/lit8 p1, p2, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->startSplitMode(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->finishSplitMode()V

    if-eqz p3, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->finishSplitMode()V

    :cond_1
    :goto_0
    return-void
.end method

.method public show(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mSplitTabLayout:Lcom/sec/android/app/sbrowser/main_view/SplitTabLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0bca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/main_view/SplitTabLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mSplitTabLayout:Lcom/sec/android/app/sbrowser/main_view/SplitTabLayout;

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->setLeftTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->setRightTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mSplitTabLayout:Lcom/sec/android/app/sbrowser/main_view/SplitTabLayout;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/main_view/SplitTabLayout;->setFocus(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onSplitModeStarted()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mSplitTabLayout:Lcom/sec/android/app/sbrowser/main_view/SplitTabLayout;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/main_view/SplitTabLayout;->show()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->setSplitMode(Z)V

    return-void
.end method

.method public startSplitMode(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    if-eqz p1, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    if-eqz p1, :cond_1

    move-object p2, p3

    :cond_1
    const/4 p3, 0x0

    invoke-interface {v0, p3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setVideoAssistantActivated(Z)V

    invoke-interface {p2, p3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setVideoAssistantActivated(Z)V

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, p2, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewSplitTab;->show(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    return-void
.end method
