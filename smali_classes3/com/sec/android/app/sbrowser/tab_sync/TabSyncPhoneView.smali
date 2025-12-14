.class public Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;
.super Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;,
        Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$TabSyncPhoneViewCallback;
    }
.end annotation


# static fields
.field private static sCallback:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$TabSyncPhoneViewCallback;


# instance fields
.field public isMakeOverNewGuiDisabled:Z

.field private mAccount:Landroid/accounts/Account;

.field private mAccountType:I

.field private mActionMode:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;

.field private final mActionModeDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;

.field private mAddAccountLayout:Landroid/view/View;

.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mAuthority:Ljava/lang/String;

.field private mBackButton:Landroid/view/View;

.field private mCollapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field private mCoordinateLayout:Landroid/view/View;

.field private mDeleteMenu:Landroid/view/View;

.field private mIsBackButtonLongClicked:Z

.field private mIsLandscapeOrigin:Z

.field private mIsPaused:Z

.field private mIsShowingCustomSyncingLayout:Z

.field private mLayoutHeightOrigin:I

.field private mLayoutWidthOrigin:I

.field private final mLongPressDragList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLongPressMultiSelectionListener:Landroidx/recyclerview/widget/X0;

.field private mNoTabsGroup:Landroid/view/View;

.field private mSPenDragEndIndex:I

.field private final mSPenDragItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSPenDragStartIndex:I

.field private mSPenMultiSelectedListener:Landroidx/recyclerview/widget/Z0;

.field private mSyncObserverHandle:Ljava/lang/Object;

.field private mSyncStatus:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

.field private mSyncTabContent:Landroid/view/View;

.field private mSyncTabListGroup:Landroid/widget/FrameLayout;

.field private mSyncTabListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSyncTabMasterSyncOffLayout:Landroid/view/View;

.field private mSyncTabNoItemLayout:Landroid/view/View;

.field private mSyncTabSyncOffLayout:Landroid/view/View;

.field private mSyncTabSyncingLayout:Landroid/view/View;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field private mToolbarTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSPenDragItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mLongPressDragList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->isMakeOverNewGuiDisabled:Z

    sget-object v1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;->STOP:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncStatus:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$1;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mActionModeDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mIsShowingCustomSyncingLayout:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mIsLandscapeOrigin:Z

    return-void
.end method

.method private addAccount()V
    .locals 2

    const-string v0, "TabSyncUi"

    const-string v1, "[addAccount]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->startAddSamsungAccountActivity(Landroid/app/Activity;)V

    return-void
.end method

.method private addListItemsDecoration()V
    .locals 4

    new-instance v0, Lq/d;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    invoke-direct {v0, v1}, Lq/d;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;->getRoundedCornerColor(Landroid/content/Context;Z)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$4;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;Lq/d;I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->lambda$initSyncOffLayout$7(Landroid/view/View;)V

    return-void
.end method

.method private cancelRefresh()V
    .locals 2

    const-string v0, "TabSyncUi"

    const-string v1, "[cancelRefresh]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->showNoItemLayout()V

    return-void
.end method

.method private collapseAllGroups()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->collapseAllGroups()V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->onSyncStatusChanged(I)V

    return-void
.end method

.method private deleteTabsFromDB(Ljava/util/ArrayList;)V
    .locals 2

    new-instance p0, Ljava/lang/Thread;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/tab_sync/o;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->resetContentHeight()V

    return-void
.end method

.method private enableFocusToBackButton()V
    .locals 2

    const-string v0, "TabSyncUi"

    const-string v1, "[enableFocusToBackButton]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mBackButton:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mBackButton:Landroid/view/View;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/n;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private expandAllGroups()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->expandAllGroups()V

    return-void
.end method

.method private extractDeviceIdList(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getTabSyncListData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->deviceId:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deviceId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->deviceId:Ljava/lang/String;

    const-string v4, "TabSyncUi"

    invoke-static {v3, v2, v4}, Lt/b;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->lambda$initExtendedAppBar$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->showListLayout()V

    return-void
.end method

.method private getAccountType()I
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->isAccountsLoggedIn()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method private getAuthority()Ljava/lang/String;
    .locals 0

    const-string p0, "com.sec.android.app.sbrowser.beta"

    return-object p0
.end method

.method private getChildAt(II)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabListView:Landroidx/recyclerview/widget/RecyclerView;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getLongPressMultiSelectionListener()Landroidx/recyclerview/widget/X0;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mLongPressMultiSelectionListener:Landroidx/recyclerview/widget/X0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$3;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mLongPressMultiSelectionListener:Landroidx/recyclerview/widget/X0;

    return-object v0
.end method

.method private getSPenMultiSelectedListener()Landroidx/recyclerview/widget/Z0;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSPenMultiSelectedListener:Landroidx/recyclerview/widget/Z0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$2;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSPenMultiSelectedListener:Landroidx/recyclerview/widget/Z0;

    return-object v0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->lambda$initExtendedAppBar$2(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->lambda$deleteTabsFromDB$9(Ljava/util/ArrayList;)V

    return-void
.end method

.method private initAddAccountLayout()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v1, 0x7f0b0c52

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAddAccountLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v1, 0x7f0b0803

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f141041

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->convertStringForJpnIfNeeded(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v1, 0x7f0b07ff

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_sync/k;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/tab_sync/k;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initExtendedAppBar()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v1, 0x7f0b00e9

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->addOnOffsetChangedListener()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v1, 0x7f0b02c4

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mCollapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v1, 0x7f0b0d77

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1, v1}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v2}, Lm/n;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    invoke-virtual {v0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lm/b;->n(Z)V

    invoke-virtual {v0, v1}, Lm/b;->r(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v1, 0x7f0b0cf5

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mBackButton:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_sync/k;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/tab_sync/k;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mBackButton:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/assistant/view/b;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->enableFocusToBackButton()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v1, 0x7f0b0da3

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mToolbarTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0b03e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mDeleteMenu:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_sync/k;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/tab_sync/k;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isGED()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mBackButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mDeleteMenu:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mDeleteMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setTooltip(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mBackButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setTooltip(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->resetExtendedAppbar()V

    return-void
.end method

.method private initListLayout()V
    .locals 4

    const-string v0, "TabSyncUi"

    const-string v1, "[initListLayout]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v1, 0x7f0b0c4c

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabListGroup:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabListGroup:Landroid/widget/FrameLayout;

    const v1, 0x7f0b0c4a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mContext:Landroid/content/Context;

    const v3, 0x7f15050f

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e08dd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->addListItemsDecoration()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabListView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabListView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method

.method private initMasterSyncOffLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v1, 0x7f0b0c55

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabMasterSyncOffLayout:Landroid/view/View;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private initNoItemLayout()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v1, 0x7f0b0c58

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabNoItemLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v1, 0x7f0b0801

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_sync/k;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/tab_sync/k;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initSyncOffLayout()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v1, 0x7f0b0c5a

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabSyncOffLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v1, 0x7f0b0804

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f140819

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->convertStringForJpnIfNeeded(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v1, 0x7f0b0802

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_sync/k;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/tab_sync/k;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initSyncingLayout()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v1, 0x7f0b0c59

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabSyncingLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v1, 0x7f0b0800

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_sync/k;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/tab_sync/k;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeNewMakeoverUI()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v1, 0x7f0b0cf7

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mCoordinateLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v1, 0x7f0b0cf6

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->initListLayout()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v2, 0x7f0b0c57

    invoke-virtual {v0, v2}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mNoTabsGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->initNoItemLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->initSyncingLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->initSyncOffLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->initMasterSyncOffLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->initAddAccountLayout()V

    return-void
.end method

.method private initializeOldUI()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v1, 0x7f0e08d8

    invoke-virtual {v0, v1}, Lm/n;->setContentView(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v1, 0x7f0b0cf7

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mCoordinateLayout:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->initExtendedAppBar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v1, 0x7f0b0cf6

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->initListLayout()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v2, 0x7f0b0c57

    invoke-virtual {v0, v2}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mNoTabsGroup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->initNoItemLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->initSyncingLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->initSyncOffLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->initMasterSyncOffLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->initAddAccountLayout()V

    return-void
.end method

.method private isToolbarFocused()Z
    .locals 2

    const-string v0, "TabSyncUi"

    const-string v1, "[isToolbarFocused]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mBackButton:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mDeleteMenu:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mActionMode:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->getSelAllCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mActionMode:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->getSelAllCheckBox()Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->lambda$initNoItemLayout$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->lambda$initAddAccountLayout$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->lambda$initSyncingLayout$6(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$addOnOffsetChangedListener$4(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mToolbarTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mActionMode:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->setTitleAlpha(F)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->resetContentHeight()V

    return-void
.end method

.method private static synthetic lambda$deleteTabsFromDB$9(Ljava/util/ArrayList;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;->deleteTabsConfirm(Ljava/util/ArrayList;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method private static synthetic lambda$enableFocusToBackButton$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[mBackButton:onTouch] motionEvent : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabSyncUi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :cond_1
    :goto_0
    return v0
.end method

.method private synthetic lambda$initAddAccountLayout$8(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->addAccount()V

    return-void
.end method

.method private synthetic lambda$initExtendedAppBar$1(Landroid/view/View;)V
    .locals 2

    const-string v0, "TabSyncUi"

    const-string v1, "[mBackButton:onClick]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mIsBackButtonLongClicked:Z

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mIsBackButtonLongClicked:Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    sget-object p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->sCallback:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$TabSyncPhoneViewCallback;

    if-eqz p0, :cond_1

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$TabSyncPhoneViewCallback;->onTabSyncModeChanged(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$initExtendedAppBar$2(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mIsBackButtonLongClicked:Z

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$initExtendedAppBar$3(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->startActionModeForDelete(Z)V

    return-void
.end method

.method private synthetic lambda$initNoItemLayout$5(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->manualRefresh()V

    return-void
.end method

.method private synthetic lambda$initSyncOffLayout$7(Landroid/view/View;)V
    .locals 1

    const/16 p1, 0xb4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->shouldGetParentalConfirm(ILandroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->turnOnSync()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initSyncingLayout$6(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->cancelRefresh()V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->lambda$addOnOffsetChangedListener$4(Lcom/google/android/material/appbar/AppBarLayout;I)V

    return-void
.end method

.method private manualRefresh()V
    .locals 3

    const-string v0, "[manualRefresh]"

    const-string v1, "TabSyncUi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Network not available"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAccount:Landroid/accounts/Account;

    if-nez v0, :cond_1

    const-string p0, "mAccount is null!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->showSyncingLayout()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAuthority:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->setSyncHandler()V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->lambda$initExtendedAppBar$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->lambda$enableFocusToBackButton$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private onSyncStatusChanged(I)V
    .locals 4

    const-string v0, "[onSyncStatusChanged] which :"

    const-string v1, "TabSyncUi"

    invoke-static {p1, v0, v1}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAccount:Landroid/accounts/Account;

    if-nez p1, :cond_0

    sget-object p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;->STOP:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncStatus:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAuthority:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAuthority:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[onSyncStatusChanged] isActive : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[onSyncStatusChanged] isPending : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[onSyncStatusChanged] mSyncStatus : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncStatus:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$5;->$SwitchMap$com$sec$android$app$sbrowser$tab_sync$TabSyncPhoneView$SyncStatus:[I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncStatus:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    sget-object p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;->ACTIVE:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncStatus:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_7

    sget-object p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;->PENDING:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncStatus:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    sget-object p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;->ACTIVE:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncStatus:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    goto :goto_1

    :cond_4
    if-nez v0, :cond_7

    sget-object p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;->STOP:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncStatus:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    goto :goto_1

    :cond_5
    if-nez p1, :cond_7

    if-eqz v0, :cond_6

    sget-object p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;->PENDING:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    goto :goto_0

    :cond_6
    sget-object p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;->STOP:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    :goto_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncStatus:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncStatus:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;->STOP:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->refreshUI()V

    :cond_8
    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mCollapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mLongPressDragList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSPenDragEndIndex:I

    return p0
.end method

.method private refreshActionMode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mActionMode:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->refreshActionMode()V

    :cond_0
    return-void
.end method

.method private resetContentHeight()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mCoordinateLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabContent:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071797

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mActionMode:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->getBottomBarHeight()I

    move-result v3

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    sub-int/2addr v0, v3

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabContent:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabContent:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_1
    return-void
.end method

.method private resetContentHeightWithDelay()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_sync/j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/tab_sync/j;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;I)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private resetExtendedAppbar()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSPenDragItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method private setAccount()V
    .locals 2

    const-string v0, "TabSyncUi"

    const-string v1, "[setAccount]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAccountType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncControllerDelegate;->triggerTabSyncManually()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAccount:Landroid/accounts/Account;

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAuthority:Ljava/lang/String;

    return-void
.end method

.method private setLongPressMultiSelectionEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabListView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->getLongPressMultiSelectionListener()Landroidx/recyclerview/widget/X0;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLongPressMultiSelectionListener(Landroidx/recyclerview/widget/X0;)V

    return-void
.end method

.method private setSyncHandler()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncObserverHandle:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAccount:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAuthority:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAuthority:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;->ACTIVE:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncStatus:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;->PENDING:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncStatus:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;->STOP:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncStatus:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    :goto_0
    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/m;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/tab_sync/m;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)V

    const/4 v1, 0x7

    invoke-static {v1, v0}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncObserverHandle:Ljava/lang/Object;

    return-void
.end method

.method private showAddAccountLayout()V
    .locals 3

    const-string v0, "TabSyncUi"

    const-string v1, "[showSyncOffLayout]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabListGroup:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mNoTabsGroup:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabNoItemLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabSyncingLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabSyncOffLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabMasterSyncOffLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAddAccountLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mIsShowingCustomSyncingLayout:Z

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->isMakeOverNewGuiDisabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mDeleteMenu:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showListLayout()V
    .locals 3

    const-string v0, "TabSyncUi"

    const-string v1, "[showListLayout]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabListGroup:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mNoTabsGroup:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabNoItemLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabSyncingLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabSyncOffLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabMasterSyncOffLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAddAccountLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mIsShowingCustomSyncingLayout:Z

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->isMakeOverNewGuiDisabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mDeleteMenu:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showMasterSyncOffLayout()V
    .locals 3

    const-string v0, "TabSyncUi"

    const-string v1, "[showSyncOffLayout]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabListGroup:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mNoTabsGroup:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabNoItemLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabSyncingLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabSyncOffLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabMasterSyncOffLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAddAccountLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mIsShowingCustomSyncingLayout:Z

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->isMakeOverNewGuiDisabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mDeleteMenu:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showNoItemLayout()V
    .locals 3

    const-string v0, "TabSyncUi"

    const-string v1, "[showNoItemLayout]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabListGroup:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mNoTabsGroup:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabNoItemLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabSyncingLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabSyncOffLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabMasterSyncOffLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAddAccountLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mIsShowingCustomSyncingLayout:Z

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->isMakeOverNewGuiDisabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mDeleteMenu:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showRoundCorners(Z)V
    .locals 5

    const-string v0, "[showRoundCorners]"

    const-string v1, "TabSyncUi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v2, 0x7f0b0daf

    invoke-virtual {v0, v2}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v3, 0x7f0b0db1

    invoke-virtual {v2, v3}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v4, 0x7f0b01c5

    invoke-virtual {v3, v4}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v4, 0x7f0b01c8

    invoke-virtual {p0, v4}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    :goto_1
    const-string p0, "[showRoundCorners] corner is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showSyncOffLayout()V
    .locals 3

    const-string v0, "TabSyncUi"

    const-string v1, "[showSyncOffLayout]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabListGroup:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mNoTabsGroup:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabNoItemLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabSyncingLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabSyncOffLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabMasterSyncOffLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAddAccountLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mIsShowingCustomSyncingLayout:Z

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->isMakeOverNewGuiDisabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mDeleteMenu:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showSyncingLayout()V
    .locals 3

    const-string v0, "TabSyncUi"

    const-string v1, "[showSyncingLayout]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabListGroup:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mNoTabsGroup:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabNoItemLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabSyncingLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabSyncOffLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabMasterSyncOffLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAddAccountLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mIsShowingCustomSyncingLayout:Z

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->isMakeOverNewGuiDisabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mDeleteMenu:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSPenDragStartIndex:I

    return p0
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabListView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private updateMode(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;I)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getGroupCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    const-string v0, "sameDeviceCount = "

    const-string v3, "TabSyncUi"

    invoke-static {v0, v3, p2}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mActionMode:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->isSelectAllChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->extractDeviceIdList(Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;->mTabSyncData:Ljava/util/List;

    invoke-virtual {v4, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->setTabSyncListData(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->extractDeviceIdList(Ljava/util/ArrayList;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "keepEditMode = "

    invoke-static {p2, v3, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    sget-object p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;->EDIT:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mScreenType:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->updateScreen(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->selectAll(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mActionMode:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->updateSelectAllLayout(Z)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->clearCheckBoxStates()V

    sget-object p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;->NORMAL:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mScreenType:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->updateScreen(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;->mTabSyncData:Ljava/util/List;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->setTabSyncListData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->clearCheckBoxStates()V

    sget-object p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;->NORMAL:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mScreenType:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->updateScreen(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;)V

    :goto_1
    return-void
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSPenDragEndIndex:I

    return-void
.end method

.method public static bridge synthetic w(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSPenDragStartIndex:I

    return-void
.end method

.method public static bridge synthetic x(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->collapseAllGroups()V

    return-void
.end method

.method public static bridge synthetic y(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;II)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic z(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->resetContentHeightWithDelay()V

    return-void
.end method


# virtual methods
.method public addOnOffsetChangedListener()V
    .locals 2

    const-string v0, "TabSyncUi"

    const-string v1, "[addOnOffsetChangedListener]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/tab_sync/l;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/tab_sync/l;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lc6/e;)V

    return-void
.end method

.method public deleteTabs(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getSelectedCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;

    iget-boolean v4, v4, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->isSelected:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->deleteGroup(I)V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v3, -0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->startActionMode(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->deleteTabsFromDB(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-long v0, p1

    const-string p1, "403"

    const-string v2, "4044"

    invoke-static {p1, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getGroupCount()I

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->showNoItemLayout()V

    :cond_4
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[dispatchKeyEvent] event : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabSyncUi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result v2

    const/high16 v3, 0x20000000

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->isShiftKeyPressed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->setShiftKeyPressed(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->setShiftKeyPressed(Z)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eq v2, v4, :cond_2

    return v0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->enableFocusToBackButton()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabListView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v2, :cond_3

    const-string p0, "dispatchKeyEvent return - mSyncTabListView is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x14

    if-eq v1, v2, :cond_a

    const/16 v2, 0x1d

    if-eq v1, v2, :cond_9

    const/16 v2, 0x20

    if-eq v1, v2, :cond_8

    const/16 v2, 0x42

    if-eq v1, v2, :cond_5

    const/16 v0, 0x70

    if-eq v1, v0, :cond_4

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mActionMode:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getTabSyncListData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->deleteTabs(Ljava/util/List;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mDeleteMenu:Landroid/view/View;

    if-ne p1, v1, :cond_6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->startActionModeForDelete(Z)V

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mBackButton:Landroid/view/View;

    if-ne p1, v1, :cond_7

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mIsBackButtonLongClicked:Z

    :cond_7
    return v0

    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mActionMode:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getTabSyncListData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->deleteTabs(Ljava/util/List;)V

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mActionMode:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-virtual {p1, v4}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->selectAll(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mActionMode:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->updateSelectAllLayout(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    invoke-virtual {p0}, Lm/n;->invalidateOptionsMenu()V

    goto :goto_1

    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->isToolbarFocused()Z

    move-result p1

    if-nez p1, :cond_b

    return v0

    :cond_b
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabContent:Landroid/view/View;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_c
    :goto_1
    return v4
.end method

.method public handleSelectAll()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mActionMode:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->updateSelectAllLayout(Z)V

    :cond_0
    return-void
.end method

.method public initializeUI(Lm/n;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;Z)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "TabSyncUi"

    const-string p1, "initializeUI: syncTabParentActivity is null returning"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->isMakeOverNewGuiDisabled:Z

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->initializeUI(Lm/n;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;Z)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->isMakeOverNewGuiDisabled:Z

    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->initializeNewMakeoverUI()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->initializeOldUI()V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivityDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;->getAccountType()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAccountType:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->getAuthority()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAuthority:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->setAccount()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->showSyncingLayout()V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->startTabSyncing(Z)V

    sget-object p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->sCallback:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$TabSyncPhoneViewCallback;

    if-eqz p0, :cond_2

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$TabSyncPhoneViewCallback;->onTabSyncModeChanged(Z)V

    :cond_2
    return-void
.end method

.method public isMasterSyncOn()Z
    .locals 2

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result p0

    const-string v0, "[isMasterSyncOn:Phone] isMasterSyncOn : "

    const-string v1, "TabSyncUi"

    invoke-static {v0, v1, p0}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public isShowingCustomSyncingLayout()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mIsShowingCustomSyncingLayout:Z

    return p0
.end method

.method public isSignIn()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAccountType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncControllerDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncControllerDelegate;->getGlobalSyncInternetStatus(Landroid/content/Context;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "[isSignIn:Phone] isSignIn : "

    const-string v1, "TabSyncUi"

    invoke-static {v0, v1, p0}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "TabSyncUi"

    const-string v1, "[onConfigurationChanged]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/LocaleUtils;->getDisplayLanguage(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/LocaleUtils;->getDisplayLanguage(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mLocale:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getGroupCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mScreenType:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->updateScreen(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->showNoItemLayout()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mScreenType:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;

    sget-object v1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;->EDIT:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->refreshActionMode()V

    :cond_2
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape(Landroid/content/res/Configuration;)Z

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mCoordinateLayout:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mCoordinateLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mIsLandscapeOrigin:Z

    if-ne p1, v2, :cond_4

    iget v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mLayoutWidthOrigin:I

    if-ne v0, v2, :cond_4

    iget v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mLayoutHeightOrigin:I

    if-eq v1, v2, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->resetExtendedAppbar()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->resetContentHeightWithDelay()V

    :cond_5
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mIsLandscapeOrigin:Z

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mLayoutWidthOrigin:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mLayoutHeightOrigin:I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "TabSyncUi"

    const-string v1, "[onDestroy]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncObserverHandle:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncObserverHandle:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getGroupCount()I

    move-result v0

    :goto_0
    const-string v1, "4015"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "TabSyncUi"

    const-string v1, "[onPause]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mIsPaused:Z

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 5

    const-string v0, "TabSyncUi"

    const-string v1, "[onResume]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mIsPaused:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mIsPaused:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->getAccountType()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAccountType:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->setAccount()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivityDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;

    iget v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAccountType:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;->setAccountType(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAddAccountLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget v3, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAccountType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v0, v2

    :cond_1
    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->refreshUI()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mActionMode:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->updateBottomButton()V

    :cond_3
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->onResume()V

    return-void
.end method

.method public processPostExecuteUI(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;)V
    .locals 7

    const-string v0, "TabSyncUi"

    const-string v1, "[processPostExecuteUI]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->processPostExecuteUI(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;->mTabSyncData:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-lez v1, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->isMakeOverNewGuiDisabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivityDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;

    :goto_1
    new-instance v3, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    iget-object v4, p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;->mTabSyncData:Ljava/util/List;

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->updateMode(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;I)V

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->getSPenMultiSelectedListener()Landroidx/recyclerview/widget/Z0;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetOnMultiSelectedListener(Landroidx/recyclerview/widget/Z0;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabListView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v4

    xor-int/2addr v4, v3

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mScreenType:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;

    sget-object v3, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;->NORMAL:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;

    if-ne v2, v3, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->expandAllGroups()V

    goto :goto_3

    :cond_3
    move v1, v0

    :cond_4
    :goto_3
    iget v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mAccountType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->startActionMode(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->showAddAccountLayout()V

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->isMasterSyncOn()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->startActionMode(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->showMasterSyncOffLayout()V

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->isSignIn()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->startActionMode(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->showSyncOffLayout()V

    goto :goto_4

    :cond_7
    if-gtz v1, :cond_8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->startActionMode(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->showNoItemLayout()V

    goto :goto_4

    :cond_8
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_sync/j;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/tab_sync/j;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;I)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_4
    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_9
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    invoke-virtual {p0}, Lm/n;->invalidateOptionsMenu()V

    return-void
.end method

.method public removeSyncedDevice()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->startActionModeForDelete(Z)V

    :cond_0
    return-void
.end method

.method public setShiftKeyPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mIsShiftKeyPressed:Z

    return-void
.end method

.method public showActionBarCheckBox(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mActionMode:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->showSelectAllCheckBoxAnimation(Z)V

    :cond_0
    return-void
.end method

.method public startActionMode(Z)V
    .locals 4

    const-string v0, "[startActionMode] startActionMode : "

    const-string v1, "TabSyncUi"

    invoke-static {v0, v1, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->isMakeOverNewGuiDisabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mActionMode:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mActionModeDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mActionMode:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->setShowSelectModeAnimation()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mActionMode:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->updateItemsSelectedText(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mActionMode:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->setCheckBoxDescription()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mActionMode:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->setShowSelectModeAnimation()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mSyncTabListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mActionMode:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->destroyActionMode()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mActionMode:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    const v1, 0x7f141002

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mCollapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->setHideSelectModeAnimation()V

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->handleDestroyActionMode()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->expandAllGroups()V

    :cond_6
    :goto_1
    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->showRoundCorners(Z)V

    return-void
.end method

.method public turnOnSync()V
    .locals 2

    const-string v0, "TabSyncUi"

    const-string v1, "[turnOnSync]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->setSamsungCloudSyncAutomatically(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->refreshUI()V

    return-void
.end method

.method public updateScreen(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->updateScreen(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    invoke-virtual {v0}, Lm/n;->invalidateOptionsMenu()V

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;->EDIT:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ScreenType;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->collapseAllGroups()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->startActionMode(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->setLongPressMultiSelectionEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v0, 0x101006f

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const v3, 0x101010b

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->startActionMode(Z)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->setLongPressMultiSelectionEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public updateSelectAllLayoutNoDelay()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->mActionMode:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->updateSelectAllLayoutDirectly()V

    :cond_0
    return-void
.end method
