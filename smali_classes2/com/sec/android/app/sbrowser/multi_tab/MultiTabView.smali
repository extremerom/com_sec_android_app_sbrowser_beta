.class public Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;
.super Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;


# instance fields
.field private mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

.field protected mBlurredBackground:Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground;

.field private mIntroAnimFrontView:Landroid/view/View;

.field private mIntroAnimTabId:I

.field private mIsUndoCloseTabRunning:Z

.field private mLongClickedTabId:I

.field private mMultiTabMenu:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;

.field private mMultiTabSearch:Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;

.field private mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field protected mScrollPosition:I

.field private mSyncedTabs:Landroid/view/View;

.field private final mTabMainViewCallbacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

.field protected final mTabMainViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mLongClickedTabId:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mScrollPosition:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mIntroAnimTabId:I

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$1;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->getTabMainViewCallbacks()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mTabMainViewCallbacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->getTabMainViewDelegate()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mTabMainViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-void
.end method

.method public static synthetic A(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->lambda$notifyTabAdded$3()V

    return-void
.end method

.method public static synthetic B(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->lambda$showCloseAllConfirmDialog$6(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic C(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->lambda$applySecretModeStatus$5()V

    return-void
.end method

.method public static synthetic D(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->lambda$updateTabsWithDelay$0()V

    return-void
.end method

.method public static synthetic E(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->lambda$onConfigurationChanged$1()V

    return-void
.end method

.method public static synthetic F(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->lambda$onResume$2()V

    return-void
.end method

.method public static synthetic G(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->lambda$applySecretModeStatus$4()V

    return-void
.end method

.method public static bridge synthetic H(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mMultiTabSearch:Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;

    return-object p0
.end method

.method public static bridge synthetic I(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mLongClickedTabId:I

    return-void
.end method

.method public static bridge synthetic J(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mMultiTabMenu:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;

    return-void
.end method

.method public static bridge synthetic K(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->cancelTouchEvent()V

    return-void
.end method

.method public static bridge synthetic L(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->determineIntroAnimWhenReady(Landroid/view/View;I)V

    return-void
.end method

.method public static bridge synthetic M(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->updateBlurredBackground()V

    return-void
.end method

.method public static synthetic access$001(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;)V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->updateTabCountInFloatingMenu()V

    return-void
.end method

.method private cancelTouchEvent()V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private delayIntroAnim(Landroid/view/View;I)V
    .locals 2

    const-string v0, "MultiTabView"

    const-string v1, "[delayIntroAnim] bitmap not ready, delay into anim"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mIntroAnimFrontView:Landroid/view/View;

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mIntroAnimTabId:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private determineIntroAnimWhenReady(Landroid/view/View;I)V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsFirstIntroAnimation:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->getElapsedTimeFromLaunch()J

    move-result-wide v0

    const-string v2, "[determineIntroAnimWhenReady] elapsedTime for layout: "

    const-string v3, "MultiTabView"

    invoke-static {v0, v1, v2, v3}, Landroidx/recyclerview/widget/P;->k(JLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->isBmpCallbackReceived()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->startIntroAnim(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->delayIntroAnim(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method private dismissMoreMenu()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mMultiTabMenu:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;->dismissPopupMenu()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mMultiTabMenu:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;

    return-void
.end method

.method private getBlurredBackgroundColor()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isDarkModeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const p0, 0x7f060cee

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isSecretModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f060cef

    goto :goto_0

    :cond_1
    const p0, 0x7f060ced

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method private getElapsedTimeFromLaunch()J
    .locals 4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getTimeLaunchTabsRequested()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method private getTabMainViewCallbacks()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$2;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;)V

    return-object v0
.end method

.method private getTabMainViewDelegate()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$3;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;)V

    return-object v0
.end method

.method private synthetic lambda$applySecretModeStatus$4()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->modeChangeNormalToSecret()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$applySecretModeStatus$5()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->modeChangeSecretToNormal()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$notifyTabAdded$3()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsCloseAllTabsAnimation:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsMultiTabOutroAnimating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->updateTabs(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$1()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->updateTabs(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->onConfigurationChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onResume$2()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/J;->onBackPressed()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showCloseAllConfirmDialog$6(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCloseDialog:Lm/l;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCloseDialog:Lm/l;

    invoke-virtual {p1}, Lm/y;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->closeSelected()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->closeAllTab()V

    :cond_2
    :goto_0
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "4538"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showCloseAllConfirmDialog$7(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCloseDialog:Lm/l;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCloseDialog:Lm/l;

    invoke-virtual {p1}, Lm/y;->dismiss()V

    :cond_0
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "4537"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateTabsWithDelay$0()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->updateTabs(Z)V

    return-void
.end method

.method private modeChangeNormalToSecret()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->exitSearchMode()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->hideNoTabView()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->removeSmartTabDeleteSuggestionTipCard()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getSecretTabCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setModeChange(Z)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsMultiTabOutroAnimating:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    const-string v1, ""

    invoke-interface {v0, p0, v2, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->createNewTab(ZZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->enableButtons(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->setSecretModeButtonText()V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->updateTabs(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setModeChange(Z)V

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private modeChangeSecretToNormal()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->exitSearchMode()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getNormalTabCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->handleNoTabs(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->hideNoTabView()V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->enableButtons(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->setSecretModeButtonText()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->updateTabs(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setModeChange(Z)V

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    return-void
.end method

.method private startIntroAnim(Landroid/view/View;I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->getElapsedTimeFromLaunch()J

    move-result-wide v0

    const-string v2, "[startIntroAnim] elapsedTime from launch request:"

    const-string v3, "MultiTabView"

    invoke-static {v0, v1, v2, v3}, Landroidx/recyclerview/widget/P;->k(JLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->startIntroAnimation(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->updateAssistantMenuIfNecessary()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->updateBlurredBackground()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateAssistantMenuIfNecessary()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;->updateAssistantMenuIfNecessary()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateBackground()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->updateBlurredBackgroundDimLayer()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->updateBottomBarBackground()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->updateEditBottomBarBackground()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->updateToolBarBackground()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->updateStatusBarBackground()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->updateNavigationBarBackground()V

    return-void
.end method

.method private updateBlurredBackground()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MultiTabView"

    const-string v1, "[updateBlurredBackground]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNoTabsShowing()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getFullscreenBitmapFromCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNoTabsShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getToolbarBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNoTabsShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getBottombarBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_2
    new-instance v3, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->setSize(II)Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;

    move-result-object v3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->getBlurredBackgroundColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->setBackgroundColor(I)Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->setToolbarBitmap(Landroid/graphics/Bitmap;)Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getToolbarHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->setToolbarHeight(I)Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->setBottombarBitmap(Landroid/graphics/Bitmap;)Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->setTabBitmap(Landroid/graphics/Bitmap;)Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mBlurredBackground:Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground$Builder;->build(Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground;)V

    return-void
.end method

.method private updateBlurredBackgroundDimLayer()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mBlurredBackground:Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getBackgroundColor()I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-direct {v1, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateTabsWithDelay()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getRemovedTabList(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->updateNoTabsView()V

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isWindowSizeChanged()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/y;

    const/4 v2, 0x4

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/y;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;I)V

    const-wide/16 v2, 0x82

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->updateTabs(Z)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabCount()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->updateNoTabsView()V

    :cond_4
    :goto_2
    return-void
.end method

.method public static synthetic z(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->lambda$showCloseAllConfirmDialog$7(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public applySecretModeStatus(Z)V
    .locals 2

    const-string v0, "[applySecretModeStatus] enabled: "

    const-string v1, "MultiTabView"

    invoke-static {v0, v1, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabAnimating()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabModeChanging()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    if-eq v0, p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->dismissDialogs()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->exitEditModeWithList()V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setModeChange(Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getSecretTabCount()I

    move-result p1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getNormalTabCount()I

    move-result p1

    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->hideNoTabView()V

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->resetSecretButtonState()V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/y;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/y;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;I)V

    const/16 v1, 0xc8

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->startPrivacyModeExitAnimation(Ljava/lang/Runnable;I)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isDisabledClicked()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->modeChangeSecretToNormal()V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/y;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/y;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;I)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->startPrivacyModeExitAnimation(Ljava/lang/Runnable;)V

    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->updateBlurredBackground()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    if-eqz p1, :cond_8

    sget-object p1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$FloatingViewType;->SECRET_TABS:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$FloatingViewType;

    goto :goto_3

    :cond_8
    sget-object p1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$FloatingViewType;->NORMAL_TABS:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$FloatingViewType;

    :goto_3
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mActiveFloatingViewState:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$FloatingViewType;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->updateMenuBarSecretBtnDesc()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->setMenuBtnTint()V

    :cond_9
    :goto_4
    return-void
.end method

.method public changeGroupName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->renameGroup(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public closeAllTab()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isGroupListShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->closeAllFilteredList()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->hasLockedTab()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->closeAllUnlockedTabs()V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->showSearchButton(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->enableButtons(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->startCloseAllTabsAnimation()V

    return-void
.end method

.method public closeGroupList()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->setSecretModeButtonText()V

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->closeGroupList()V

    return-void
.end method

.method public dismissDialogs()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCloseDialog:Lm/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCloseDialog:Lm/l;

    invoke-virtual {v0}, Lm/y;->dismiss()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCloseDialog:Lm/l;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupDialog:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupDialog:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->dismissDialog()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupDialog:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->clearChangeViewTypeDialog()V

    return-void
.end method

.method public exitEditMode()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->exitEditMode()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mTabMainViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->exitEditMode()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mTabMainViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->showNoTabViewIfNeeded()V

    :cond_0
    return-void
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isSecretModeEnabled()Z

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public groupTabs()V
    .locals 3

    const-string v0, "MultiTabView"

    const-string v1, "[groupTabs]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isGroupPathShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupTabsNavigate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->hide()V

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->GROUP:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->editTabs(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;ZZ)V

    return-void
.end method

.method public handleNoTabs(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[handleNoTabs] textAnimation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiTabView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isSecretModeEnabled()Z

    move-result v0

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoTab:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0b0806

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoTab:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoTab:Landroid/view/View;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const v1, 0x7f0b0809

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoItemImage:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoTab:Landroid/view/View;

    const v1, 0x7f0b080b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoItemSubtitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoTab:Landroid/view/View;

    const v1, 0x7f0b080c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoItemText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->clearSearchText()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setCurrentGroup(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoTab:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoItemImage:Landroid/view/View;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNoTabsAnim;->resetAnimation(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoItemSubtitle:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNoTabsAnim;->resetAnimation(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoItemText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNoTabsAnim;->resetAnimation(Landroid/view/View;)V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->updateBackground()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->updateNoTabsView()V

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoItemImage:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNoTabsAnim;->startNoItemsAnimation(Landroid/app/Activity;Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoItemSubtitle:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNoTabsAnim;->startNoItemsAnimation(Landroid/app/Activity;Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoItemText:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNoTabsAnim;->startNoItemsAnimation(Landroid/app/Activity;Landroid/view/View;)V

    :cond_4
    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->enableButtons(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-virtual {p1, v3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->showSearchBar(Z)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->showSearchButton(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->exitEditModeWithList()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoResult:Landroid/view/View;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoResult:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->updateTabCountInFloatingMenu()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->updateBlurredBackground()V

    return-void

    :cond_6
    iput-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCurrentGroup:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsCloseTabAnimation:Z

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsMultiTabOutroAnimating:Z

    if-nez p1, :cond_7

    const-string p1, "[handleNoTabs] createNewTab"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    const/4 p1, 0x1

    invoke-interface {p0, v3, p1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->createNewTab(ZZLjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public hideNoTabView()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNoTabsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoTab:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isCardView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->setAppBarExpanded(ZZ)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->updateBackground()V

    return-void
.end method

.method public hideSyncTabView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mSyncedTabs:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mSyncedTabs:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->showSearchButton(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->updateTabCountInFloatingMenu()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->pauseSyncView()V

    :cond_0
    return-void
.end method

.method public initSearchClient()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mMultiTabSearch:Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;->init()V

    return-void
.end method

.method public initTabMainView(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->initTabMainView(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mTabMainViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setDelegate(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;)V

    return-void
.end method

.method public isTabDragging()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->isTabDragging()Z

    move-result p0

    return p0
.end method

.method public notifyTabAdded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsCloseAllTabsAnimation:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsMultiTabOutroAnimating:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mIsNewTabSelected:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNoTabsShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isSecretModeEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->hideNoTabView()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->enableButtons(Z)V

    :cond_2
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mIsUndoCloseTabRunning:Z

    if-eqz p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/y;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/y;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;I)V

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsMultiTabIntroAnimating:Z

    if-eqz p0, :cond_4

    const-wide/16 v1, 0x1f4

    goto :goto_0

    :cond_4
    const-wide/16 v1, 0x64

    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[onConfigurationChanged] newConfig: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiTabView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->saveCurrentViewingPosition()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setIsTabDragging(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p1}, Landroid/view/View;->cancelDragAndDrop()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isCardView()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->setStackViewVisibility()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->updateTabsWithDelay()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/y;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;I)V

    const-wide/16 v1, 0xaa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isGridView()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->updateTabs(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->onConfigurationChanged()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->onConfigurationChanged()V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->resetExtendedAppbar()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->setSecretModeButtonText()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->updateBottomBarPadding()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->updateTopMargin()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mMultiTabMenu:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mMultiTabMenu:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;->dismissPopupMenu()V

    :cond_6
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->cancelTouchEvent()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    const p2, 0x7f0b07a0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mBlurredBackground:Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    const p2, 0x7f0b0cdc

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mEditBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->initEditBottomBar()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->initExtendedAppBar()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->initNewTabFloatingButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->initFloatingMenuBar()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->onDestroyView()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->onDestroyView()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->clearChangeViewTypeDialog()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mBlurredBackground:Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground;->onDestroyView()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mBlurredBackground:Lcom/sec/android/app/sbrowser/multi_tab/blurred_background/BlurredBackground;

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->destroyViews()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsMultiTabOutroAnimating:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->getInstance()Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0, v2, p0}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->removeObserver(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowObserver;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->onViewDestroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mEventListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabEventListener;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabEventListener;->onDetached()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mEventListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabEventListener;

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupDialog:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->dismissDialog()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupDialog:Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCloseDialog:Lm/l;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lm/y;->dismiss()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCloseDialog:Lm/l;

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->destroyTabSyncView()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoItemText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoItemSubtitle:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoItemImage:Landroid/view/View;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->dismissDialogs()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->dismissMoreMenu()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->onDetach()V

    :cond_1
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mEditBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupTabsNavigate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mSimilarResultText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mMultiTabSearch:Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onMultiWindowStatusChanged()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->onMultiWindowStatusChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isWindowSizeChanged()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isListView()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->updateTabsWithDelay()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setIsTabDragging(Z)V

    invoke-static {}, Lb1/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->i(Landroidx/fragment/app/J;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;->getOnSystemNavigationCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object p0

    invoke-static {v0, p0}, Lj9/b;->j(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mMultiTabMenu:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mMultiTabMenu:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;->showReopenClosedTabMenu()V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setShareIntentSelected(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNeedToUpdateTabsOnResume()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MultiTabView"

    const-string v2, "[onResume] updateTabs"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->updateTabs(Z)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->showNoTabViewIfRequired(Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabModeChanging()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->updateBackground()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->updateTopMargin()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->onResume()V

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    invoke-static {}, Lb1/a;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    new-instance v0, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/x;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/x;-><init>(Landroidx/fragment/app/Fragment;I)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;-><init>(Landroid/window/OnBackInvokedCallback;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->i(Landroidx/fragment/app/J;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;->getOnSystemNavigationCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->x(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->updateTabCountInFloatingMenu()V

    return-void
.end method

.method public onTabThumbnailCreated(ILandroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->onTabThumbnailCreated(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isInRoot()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->initToolbar(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->initBottomBar(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->initGroupPath()V

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->enableButtons(Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->updateTabs(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNeedToHandleNoTabs()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsFirstIntroAnimation:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz v2, :cond_1

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->handleNoTabs(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->hideNoTabView()V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getShowDialogChooseTabView()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isGridView()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->showChangeViewTypeDialog(Z)V

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setShowDialogChooseTabView(Z)V

    :cond_4
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->setNavigationBarColorIfNecessary(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->recordFirstLaunch()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->initSuggestionAppBar()V

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public openNewTab()V
    .locals 2

    const-string v0, "MultiTabView"

    const-string v1, "[openNewTab]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->performNewTabClick()V

    :cond_0
    return-void
.end method

.method public reopenClosedTab()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->isNormalToolbarShowing()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mIsUndoCloseTabRunning:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNoTabsShowing()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->reopenClosedTab()V

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->updateBlurredBackground()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->updateBackground()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mIsUndoCloseTabRunning:Z

    return-void
.end method

.method public setSecretModeButtonText()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->updateSecretModeButtonText()V

    :cond_0
    return-void
.end method

.method public showCloseAllConfirmDialog(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCloseDialog:Lm/l;

    const-string v1, "MultiTabView"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "[showCloseAllConfirmDialog] dialog is showing"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsCloseAllTabsAnimation:Z

    if-eqz v0, :cond_1

    const-string p0, "[showCloseAllConfirmDialog] on close all animation"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/w;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/w;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/w;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isInRoot()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->hasTabGroup()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->hasLockedTab()Z

    move-result v3

    invoke-static {v2, p1, v3, v0, v1}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->showCloseAllWithGroupDialog(Landroid/content/Context;Landroid/view/View;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCloseDialog:Lm/l;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getCurrentGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->hasLockedTab(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v2, p1, v3, v0, v1}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->showCloseAllDialog(Landroid/content/Context;Landroid/view/View;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCloseDialog:Lm/l;

    :goto_0
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "4536"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showMoreMenu()V
    .locals 3

    const-string v0, "[showMoreMenu]"

    const-string v1, "MultiTabView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mMultiTabMenu:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;

    if-eqz v0, :cond_0

    const-string p0, "[showMoreMenu] more menu is already showing"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCloseDialog:Lm/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "[showMoreMenu] confirm dialog is showing"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isSecretModeEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    const-string v0, "4102"

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCurrentGroup:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "4002"

    goto :goto_0

    :cond_4
    const-string v0, "4526"

    :goto_0
    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView$4;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu$Delegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mMultiTabMenu:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->getMoreMenuButton()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;->showPopupMenu(Landroid/content/Context;Landroid/view/View;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public showNoResultsViewIfNeeded()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->showNoResultsViewIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isCardView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->setAppBarExpanded(ZZ)V

    :cond_0
    return-void
.end method

.method public showSyncTabView()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mSyncedTabs:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0b0c4b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mSyncedTabs:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->createTabSyncView()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->clearSearchText()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setCurrentGroup(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mSyncedTabs:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->showSearchButton(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->exitEditModeWithList()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoResult:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mNoResult:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public startIntroAnimIfDelayed()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mIntroAnimFrontView:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mIntroAnimTabId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    const-string v0, "MultiTabView"

    const-string v2, "[onTabStackViewLoaded] run delayed into anim"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mIntroAnimFrontView:Landroid/view/View;

    iget v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mIntroAnimTabId:I

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->startIntroAnim(Landroid/view/View;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mIntroAnimFrontView:Landroid/view/View;

    iput v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mIntroAnimTabId:I

    return-void
.end method

.method public updateTabDataToSamsungSearch()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabInfoList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mMultiTabSearch:Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->initSearchClient()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mMultiTabSearch:Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_search/MultiTabSamsungSearch;->updateTabsToSearchClient(Ljava/util/List;)V

    return-void
.end method

.method public updateTabs(Z)V
    .locals 2

    const-string v0, "MultiTabView"

    const-string v1, "[updateTabs]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsFirstIntroAnimation:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->isLaunchedByBixby()Z

    move-result v1

    if-nez v1, :cond_1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsFirstIntroAnimation:Z

    :cond_1
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsCloseAllTabsAnimation:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mTabMainViewCallbacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setCallbacks(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mLongClickedTabId:I

    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->updateTabStacksBySelect(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->mLongClickedTabId:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->updateTabStacks()V

    :goto_0
    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->animateTabsOnLoad()V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getModeType()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isGroupMode()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isMoveMode()Z

    move-result p1

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mIsEditModeFromSearch:Z

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->activateSearchFilter()V

    :cond_5
    return-void
.end method
