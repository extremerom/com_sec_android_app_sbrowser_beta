.class public abstract Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;
.super Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;
.implements Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;
.implements Lcom/sec/android/app/sbrowser/multi_tab/FloatingViewStateProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$FloatingViewType;
    }
.end annotation


# instance fields
.field private mAccountType:I

.field protected mActiveFloatingViewState:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$FloatingViewType;

.field mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

.field protected final mBottomBarDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Delegate;

.field protected final mBottomBarListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;

.field protected mChangeViewTypeDialog:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;

.field private final mChangeViewTypeDialogListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog$Listener;

.field mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

.field protected final mDeleteSuggestionListener:Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$SmartTabDeleteSuggestionListener;

.field mEditBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;

.field private mFloatingMenu:Landroid/view/ViewGroup;

.field private mFloatingNewTabButton:Landroid/view/View;

.field private mFloatingSecretButton:Landroid/widget/ImageView;

.field private mFloatingSyncedTabButton:Landroid/widget/ImageView;

.field private mFloatingTabButton:Landroidx/appcompat/widget/AppCompatTextView;

.field protected mIsEditModeFromSearch:Z

.field protected mIsNewTabSelected:Z

.field protected mIsUpdateTabsOnModeChange:Z

.field public mTabSyncController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;

.field public mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

.field protected mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$1;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBarDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Delegate;

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$2;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mDeleteSuggestionListener:Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$SmartTabDeleteSuggestionListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$3;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBarListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$4;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mChangeViewTypeDialogListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog$Listener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mIsUpdateTabsOnModeChange:Z

    return-void
.end method

.method private canSwitchViews()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->shouldIgnoreClicked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isInRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isMoveMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private enterMoveMode()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupTabsNavigate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->hide()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->enterMoveMode()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->exitEditMode()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->exitEditModeWithoutList(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->enterMoveMode()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->MOVE:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->setAppBarTitle(ILcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->enterMoveMode()V

    :cond_1
    :goto_0
    return-void
.end method

.method private hideBottomBar()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->updateNewTabFloatingBtnVisibility(I)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->updateFloatingMenuVisibility(I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$initFloatingMenuBar$1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->canSwitchViews()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isSecretModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBarListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;->onSecretClicked()V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBarListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;->onSyncedTabsClicked()V

    sget-object p1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$FloatingViewType;->SYNCED_TABS:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$FloatingViewType;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mActiveFloatingViewState:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$FloatingViewType;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->updateMenuBarSecretBtnDesc()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->setMenuBtnTint()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$initFloatingMenuBar$2(Landroid/view/View;)V
    .locals 0

    instance-of p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->hideSyncTabView()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->canSwitchViews()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBarListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;->onSecretClicked()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$initFloatingMenuBar$3(Landroid/view/View;)V
    .locals 0

    instance-of p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabView;->hideSyncTabView()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isSecretModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBarListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;->onSecretClicked()V

    :cond_1
    sget-object p1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$FloatingViewType;->NORMAL_TABS:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$FloatingViewType;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mActiveFloatingViewState:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$FloatingViewType;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->setMenuBtnTint()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->updateMenuBarSecretBtnDesc()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->updateTabCountInFloatingMenu()V

    return-void
.end method

.method private synthetic lambda$initNewTabFloatingButton$0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBarListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;->onNewTabClicked()V

    return-void
.end method

.method private synthetic lambda$onCloseMultiTabClicked$5()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->closeMultiTab()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCloseMultiTabClicked$6()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNoTabsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/C;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/C;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->startOutroAnimation(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$renameGroup$4(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "[renameGroup] result / name : "

    const-string v1, " -> "

    const-string v2, " / color : "

    invoke-static {v0, p1, v1, p3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiTabViewBase"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setScrollPositionWithGroup(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->sendSALoggingForTabGroupDialog(Z)V

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {v1, p1, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->renameGroup(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eq p2, p4, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {p1, p3, p4}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->changeGroupColor(Ljava/lang/String;I)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsMultiTabOutroAnimating:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->exitEditMode()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setCurrentGroup(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->onConfirmGroupDialog()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isInRoot()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->updateTabs(Z)V

    :cond_4
    return-void
.end method

.method public static synthetic q(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->lambda$initFloatingMenuBar$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->lambda$initNewTabFloatingButton$0(Landroid/view/View;)V

    return-void
.end method

.method private recordSmartTabDeleteLaunch()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isSmartTabDeleteSuggestionFirstTimeUse()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->recordSmartTabDeleteSuggestionFirstTimeUse()V

    return-void
.end method

.method public static synthetic s(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->lambda$initFloatingMenuBar$1(Landroid/view/View;)V

    return-void
.end method

.method private setFloatingTabBtnTooltip()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mFloatingNewTabButton:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f140860

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setMenuIconTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showBottomBar()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->updateNewTabFloatingBtnVisibility(I)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->updateFloatingMenuVisibility(I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static synthetic t(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->lambda$renameGroup$4(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic u(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->lambda$onCloseMultiTabClicked$5()V

    return-void
.end method

.method private updateFloatingMenuVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mFloatingMenu:Landroid/view/ViewGroup;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateNewTabFloatingBtnVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mFloatingNewTabButton:Landroid/view/View;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateTabListIfNeeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->updateTabStacks()V

    :cond_0
    return-void
.end method

.method public static synthetic v(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->lambda$onCloseMultiTabClicked$6()V

    return-void
.end method

.method public static synthetic w(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->lambda$initFloatingMenuBar$3(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic x(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->enterMoveMode()V

    return-void
.end method

.method public static bridge synthetic y(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->recordSmartTabDeleteLaunch()V

    return-void
.end method


# virtual methods
.method public activateSearchFilter()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->getFilterString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setShiftKeyPressed(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getFilter()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->updateTabListIfNeeded(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->searchTabs(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->notifySearchFilterChanged(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public cancelMoveGroup()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isMoveMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->exitMoveMode()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isInRoot()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->exitMoveMode(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->updateGroupNavigateVisibility()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->refreshTabList()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getModeTypeBeforeMove()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->editTabs(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;ZZ)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->restoreSelect()V

    return-void
.end method

.method public clearChangeViewTypeDialog()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mChangeViewTypeDialog:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->dismiss()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mChangeViewTypeDialog:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->setListener(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog$Listener;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mChangeViewTypeDialog:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;

    return-void
.end method

.method public closeTabsWithConfirmDialog(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getSecretTabCount()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->getNormalTabCount()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getSelectedTabsCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->showCloseAllConfirmDialog(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->showCloseConfirmDialog(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public createTabSyncView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mTabSyncController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->isAccountsLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mAccountType:I

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    check-cast v1, Lm/n;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;-><init>(Lm/n;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mTabSyncController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mTabSyncController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->setUiToTabSyncController(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mTabSyncController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->setTabSyncDelegate(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mTabSyncController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->onCreate(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->onResume()V

    :goto_1
    return-void
.end method

.method public destroyTabSyncView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mTabSyncController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->onDestroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mTabSyncController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    return-void
.end method

.method public editTabs(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mEditBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;

    invoke-virtual {v0, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->setTabDeleteSuggestionOngoing(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->setTabDeleteSuggestionOngoing(Z)V

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "[editTabs] "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MultiTabView"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isCardView()Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "mode_list"

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->switchViewMode(Ljava/lang/String;Z)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->enterEditMode(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;Z)V

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isGroupListShowing()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "4515"

    goto :goto_0

    :cond_2
    const-string p3, "4049"

    :goto_0
    invoke-static {p2, p3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->enterEditModeWithType(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    return-void
.end method

.method public enableButtons(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->showButtons(Z)V

    :cond_0
    return-void
.end method

.method public enterEditMode(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isSearchBarShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mIsEditModeFromSearch:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->showSearchBar(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->enterEditMode(Z)V

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz p2, :cond_2

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setCtrlKeyPressed(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->hideBottomBar()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mEditBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isTabLockSupported()Z

    move-result v0

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getCurrentGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->enterEditMode(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;ZZLjava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isGroupPathShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupTabsNavigate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->enableViews(Z)V

    :cond_4
    return-void
.end method

.method public enterSearchMode()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isNoTabsShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->isCancelBtnShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isInRoot()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->exitEditMode()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->showSearchBar(Z)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setCtrlKeyPressed(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isTabDragging()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setIsTabDragging(Z)V

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->resetExtendedAppbar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    sget-object v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->NORMAL:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->setAppBarTitle(ILcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->hideBottomBar()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->updateTabDataToSamsungSearch()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isSecretModeEnabled()Z

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "4046"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public exitEditMode()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setCtrlKeyPressed(Z)V

    :cond_0
    return-void
.end method

.method public exitEditModeWithList()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->exitEditMode()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->exitEditModeWithoutList(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->updateBottomBarBackground()V

    return-void
.end method

.method public exitEditModeWithoutList(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->setTabDeleteSuggestionOngoing(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->exitEditMode()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->removeSmartTabDeleteSuggestionTipCard()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mEditBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->setTabDeleteSuggestionOngoing(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mEditBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->exitEditModeWithoutList()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMode:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mModeBeforeEditMode:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMode:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSettings;->getViewType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mModeBeforeEditMode:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->switchViewMode(Ljava/lang/String;Z)V

    :cond_3
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->setEditToolbarTitle(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->isSearchBarShowing()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mIsEditModeFromSearch:Z

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->showBottomBar()V

    :cond_4
    return-void
.end method

.method public exitSearchMode()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mIsEditModeFromSearch:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->exitEditMode()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->clearSearchText()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->showSearchBar(Z)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setCtrlKeyPressed(Z)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    sget-object v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->NORMAL:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->setAppBarTitle(ILcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->hideSimilarResultText()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->showBottomBar()V

    return-void
.end method

.method public getAccountType()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mAccountType:I

    return p0
.end method

.method public getGroupPathHeight()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCurrentGroup:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isMoveMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getModeType()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isGroupMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f071514

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getSearchFilter()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->getFilterString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getUi()Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    return-object p0
.end method

.method public hideSimilarResultText()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mSimilarResultText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public initBottomBar(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    const v1, 0x7f0b09d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBarDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Delegate;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBarListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->initialize(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Delegate;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar$Listener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->showAllTabsButton(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public initEditBottomBar()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mEditBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$6;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$7;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->onCreateView(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Listener;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar$Delegate;)V

    return-void
.end method

.method public initExtendedAppBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    const v1, 0x7f0b0cda

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$8;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->setDelegate(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$Delegate;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->init()V

    return-void
.end method

.method public initFloatingMenuBar()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    const v1, 0x7f0b0cdf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mFloatingMenu:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    const v1, 0x7f0b0869

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mFloatingSyncedTabButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->setMenuIconTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    const v1, 0x7f0b0ac7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mFloatingSecretButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->updateMenuBarSecretBtnDesc()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    const v1, 0x7f0b0d19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mFloatingTabButton:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->setMenuIconTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->updateFloatingMenuVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->initializeActiveMenuBtn()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->setMenuBtnTint()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mFloatingSyncedTabButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/B;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/B;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mFloatingSecretButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/B;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/B;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mFloatingTabButton:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/B;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/B;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->updateTabCountInFloatingMenu()V

    return-void
.end method

.method public initNewTabFloatingButton()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    const v1, 0x7f0b0ce3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mFloatingNewTabButton:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->setFloatingTabBtnTooltip()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mFloatingNewTabButton:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/B;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/B;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->updateNewTabFloatingBtnVisibility(I)V

    return-void
.end method

.method public initSuggestionAppBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mDeleteSuggestionListener:Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$SmartTabDeleteSuggestionListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->initSmartTabDeleteSuggestion(Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$SmartTabDeleteSuggestionListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->setSuggestionAppBar()V

    :cond_0
    return-void
.end method

.method public initToolbar(Z)V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mRecents:Landroid/view/View;

    new-instance v3, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$9;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$9;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getCurrentGroup()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-virtual {v1, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->showGroupListButtons(ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    sget-object v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->NORMAL:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->setAppBarTitle(ILcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)V

    :cond_0
    return-void
.end method

.method public initializeActiveMenuBtn()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$FloatingViewType;->SECRET_TABS:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$FloatingViewType;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mActiveFloatingViewState:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$FloatingViewType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$FloatingViewType;->NORMAL_TABS:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$FloatingViewType;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mActiveFloatingViewState:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$FloatingViewType;

    :goto_0
    return-void
.end method

.method public isClosable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mEditBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->isClosable()Z

    move-result p0

    return p0
.end method

.method public isCloseBySuggestion()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->isCloseBySuggestion()Z

    move-result p0

    return p0
.end method

.method public isEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->isEditMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMoveMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getModeType()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isMoveMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNewTabSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mIsNewTabSelected:Z

    return p0
.end method

.method public isNormalMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getModeType()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isNormalMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSearchBarShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->isSearchBarShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSearchMode()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isSearchBarShowing()Z

    move-result p0

    return p0
.end method

.method public isSyncedTabsMode()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mActiveFloatingViewState:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$FloatingViewType;

    sget-object v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$FloatingViewType;->SYNCED_TABS:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$FloatingViewType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTabDragging()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBrowserPreferenceChanged(Ljava/lang/String;)V
    .locals 1

    const-string v0, "share_intent_launch"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isShareIntentSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->exitEditMode()V

    :cond_0
    return-void
.end method

.method public onClick(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getTabManager(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_LINK:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->createNewTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->changeCurrentTab(I)V

    return-void
.end method

.method public onCloseMultiTabClicked()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isSearchBarShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->exitSearchMode()V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    if-eqz v1, :cond_2

    const-string v1, "4101"

    goto :goto_0

    :cond_2
    const-string v1, "4001"

    :goto_0
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/C;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/C;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;I)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onConfirmGroupDialog()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    const-string v1, "[onConfirmGroupDialog] isInMultiWindowMode: "

    const-string v2, "MultiTabViewBase"

    invoke-static {v1, v2, v0}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->reserveUpdateAfterDialog()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    return-void
.end method

.method public onMultiTabVoiceRecognizerResult(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->onVoiceRecognizerResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSecretModeAuthResult(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$FloatingViewType;->SECRET_TABS:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$FloatingViewType;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$FloatingViewType;->NORMAL_TABS:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$FloatingViewType;

    :goto_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mActiveFloatingViewState:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$FloatingViewType;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->setMenuBtnTint()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->updateMenuBarSecretBtnDesc()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->updateTabCountInFloatingMenu()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->onWindowFocusChanged(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isGroupPathShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mGroupTabsNavigate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabGroupTabsNavigate;->enableViews(Z)V

    :cond_1
    return-void
.end method

.method public pauseSyncView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mTabSyncController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->onPause()V

    :cond_0
    return-void
.end method

.method public recordFirstLaunch()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isFirstTimeUseListModeOfTabManager()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->isLaunchedByBixby()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setFirstTimeUseListModeOfTabManager(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsFirstIntroAnimation:Z

    :cond_0
    return-void
.end method

.method public removeSmartTabDeleteSuggestionTipCard()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->removeSmartTabDeleteSuggestionTipCard()V

    :cond_0
    return-void
.end method

.method public renameGroup(Landroid/view/View;Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getSelectedGroup()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getCurrentGroup()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getGroupColorId(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->sendSALoggingForShowTabGroupDialog()V

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    :goto_1
    new-instance v2, LN4/g;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v1, v3}, LN4/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {p0, p2, v2, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->showGroupNameDialog(ILcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog$Listener;Landroid/view/View;)V

    return-void
.end method

.method public resetContainerHeight()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->resetContainerHeight()V

    :cond_0
    return-void
.end method

.method public resetExtendedAppbar()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->resetExtendedAppbar()V

    :cond_0
    return-void
.end method

.method public searchTabs()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->getSearchFilter()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->searchTabs(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAccountType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mAccountType:I

    return-void
.end method

.method public setEditToolbarTitle(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->setEditToolbarTitle(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getModeType()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->setAppBarTitle(ILcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)V

    :cond_1
    return-void
.end method

.method public setMenuBtnTint()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mFloatingTabButton:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mFloatingSecretButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mFloatingSyncedTabButton:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    const v1, 0x7f060d07

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    const v2, 0x7f060d08

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mFloatingTabButton:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mFloatingSecretButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mFloatingSyncedTabButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$10;->$SwitchMap$com$sec$android$app$sbrowser$multi_tab$MultiTabViewControl$FloatingViewType:[I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mActiveFloatingViewState:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$FloatingViewType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mFloatingSecretButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mFloatingTabButton:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mFloatingSyncedTabButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setNewTabSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mIsNewTabSelected:Z

    return-void
.end method

.method public shouldIgnoreClicked()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isSecretModeChanging()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "MultiTabView"

    if-eqz v0, :cond_0

    const-string p0, "[shouldIgnoreClicked] secret mode changing"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabAnimating()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabModeChanging()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabScrolling()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabTouching()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCloseDialog:Lm/l;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "[shouldIgnoreClicked] dialog is shown"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const-string p0, "[shouldIgnoreClicked] now on animation"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public showChangeViewTypeDialog(Landroid/view/View;Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->clearChangeViewTypeDialog()V

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMode:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mChangeViewTypeDialog:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mChangeViewTypeDialogListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog$Listener;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->setListener(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog$Listener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mChangeViewTypeDialog:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->show(Z)V

    return-void
.end method

.method public showChangeViewTypeDialog(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->getMoreMenuButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->showChangeViewTypeDialog(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public abstract showCloseAllConfirmDialog(Landroid/view/View;)V
.end method

.method public abstract showMoreMenu()V
.end method

.method public showSearchButton(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->showSearchButton(Z)V

    :cond_0
    return-void
.end method

.method public switchViewMode(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "[switchViewMode] getMode: "

    const-string v1, "MultiTabView"

    invoke-static {v0, p1, v1}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMode:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[switchViewMode] same with mMode: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMode:Ljava/lang/String;

    invoke-static {p1, p0, v1}, Lt/b;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    move-object p2, p1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mModeBeforeEditMode:Ljava/lang/String;

    :goto_0
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mModeBeforeEditMode:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isEditMode()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->isMoveMode()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCloseDialog:Lm/l;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mCloseDialog:Lm/l;

    invoke-virtual {p2}, Lm/y;->dismiss()V

    :cond_3
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMode:Ljava/lang/String;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setLongClickedPosition(I)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->initTabMainView(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->resetExtendedAppbar()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->updateTabs(Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mIsUpdateTabsOnModeChange:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public updateBottomBarBackground()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getCurrentViewState()Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->updateBackground(Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;)V

    :cond_0
    return-void
.end method

.method public updateBottomBarPadding()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabBottomBar;->updateHorizontalPadding()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mEditBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->updateHorizontalPadding()V

    :cond_1
    return-void
.end method

.method public updateButtonsBySelect()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mEditBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getModeType()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mIsSecretModeEnabled:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isTabLockSupported()Z

    move-result v4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->isSharable()Z

    move-result v5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getSelectedItemList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isInRoot()Z

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->updateButtonsBySelect(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;ZZZLjava/util/List;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateEditBottomBarBackground()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mEditBottomBar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getCurrentViewState()Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditBottomBar;->updateBackground(Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;)V

    :cond_0
    return-void
.end method

.method public updateMenuBarSecretBtnDesc()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mFloatingSecretButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    const v2, 0x7f140867

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mFloatingSecretButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mContext:Landroid/content/Context;

    const v2, 0x7f140868

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mFloatingSecretButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->setMenuIconTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public abstract updateTabDataToSamsungSearch()V
.end method

.method public abstract updateTabs(Z)V
.end method

.method public updateToolBarBackground()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getToolbarTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->setExpandedTitleColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mToolbarControl:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getToolbarTextColor()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->getCurrentViewState()Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->updateToolBarBackground(ILcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;)V

    return-void
.end method

.method public updateTopMargin()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->mCoordinateLayout:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->updateTopMargin()V

    :cond_0
    return-void
.end method
