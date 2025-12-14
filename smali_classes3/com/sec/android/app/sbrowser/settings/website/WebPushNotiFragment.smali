.class public Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;
.implements Lcom/sec/android/app/sbrowser/common/model/settings/CtrlKeyHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment$WebsiteInfoPopulator;
    }
.end annotation


# instance fields
.field private mActionBarView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

.field private final mBottomBarHandler:Landroid/os/Handler;

.field private mBottomCornerForDeleteView:Landroid/view/View;

.field private mCancelButton:Landroid/view/View;

.field private mCancelButtonText:Landroid/widget/TextView;

.field private mCounter:I

.field private mDeleteAction:Landroid/view/MenuItem;

.field private mDeleteBottomBarButton:Landroid/widget/LinearLayout;

.field private mDeleteMenuItem:Landroid/widget/LinearLayout;

.field private mDeleteSelection:Landroid/widget/LinearLayout;

.field private mDeleteTextView:Landroid/widget/TextView;

.field private mDummyView:Landroid/view/View;

.field private mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

.field private mHeightToShift:I

.field private mIsActionMode:Z

.field protected mIsFirstLaunch:Z

.field private mItemTouchListener:Landroidx/recyclerview/widget/N0;

.field private mListeners:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

.field private mMainAppBarTitle:Landroid/widget/TextView;

.field private mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

.field private mOffsetChangeListener:Lc6/e;

.field private mRvShiftHandler:Landroid/os/Handler;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field protected mSelectAllLayout:Landroid/widget/LinearLayout;

.field mSelectAllText:Landroid/widget/TextView;

.field private mTouchActionDowned:Z

.field private mWebPushDeleteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;"
        }
    .end annotation
.end field

.field private mWebPushList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mIsActionMode:Z

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mCounter:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mIsFirstLaunch:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mBottomBarHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mRvShiftHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mItemTouchListener:Landroidx/recyclerview/widget/N0;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment$2;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mOffsetChangeListener:Lc6/e;

    return-void
.end method

.method private displaySelectModeUI(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lm/n;

    invoke-virtual {v0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lm/b;->q(Z)V

    invoke-virtual {v0, v1}, Lm/b;->n(Z)V

    invoke-virtual {v0, v1}, Lm/b;->r(Z)V

    invoke-virtual {v0, p1}, Lm/b;->p(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->setIsInActionMode(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getToolbarTitle(Landroid/app/Activity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/16 v3, 0x8

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lm/b;->t()V

    invoke-virtual {v0}, Lm/b;->u()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getToolbar(Landroid/app/Activity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActionBarView:Landroid/view/View;

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0, p0}, Lm/b;->l(Landroid/view/View;)V

    return-void
.end method

.method private displayWebsiteList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->sortWebsiteList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mWebPushList:Ljava/util/List;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->setAllowedBlockedList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->setSwitchStateChange()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/D0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mListeners:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->getAdapterListener()Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiAdapterListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->setListener(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiAdapterListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getItemCount()I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteUtils;->addListItemsDecoration(Landroidx/recyclerview/widget/RecyclerView;Landroid/app/Activity;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mIsFirstLaunch:Z

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mIsFirstLaunch:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->expandGroup(I)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getGroupCount()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->expandGroup(I)V

    :cond_1
    return-void
.end method

.method private getNoItemViewMinHeight()I
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0e0024

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    const/high16 v1, -0x80000000

    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method private getSelectedString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140289

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14028a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getNotificationSelectedItemCount()I

    move-result p0

    if-lez p0, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f12005f

    invoke-virtual {v1, v3, p0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const p0, 0x7f140801

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v2, 0x7f140655

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string v1, ", "

    invoke-static {v0, v1, p0}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->lambda$onCreateView$3(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->lambda$updateActionbarLayout$6()V

    return-void
.end method

.method public static synthetic j(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;)V
    .locals 0

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->lambda$updateActionbarLayout$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->lambda$onCreateView$1()V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->lambda$onBackPressed$10()V

    return-void
.end method

.method private synthetic lambda$onBackPressed$10()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->destroyDeleteMode()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mIsActionMode:Z

    return-void
.end method

.method private synthetic lambda$onCreateView$0()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mWebPushList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->updateNoItemViewHeight()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreateView$1()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mWebPushDeleteList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->destroyDeleteMode()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mIsActionMode:Z

    return-void
.end method

.method private synthetic lambda$onCreateView$2(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->deleteSelectedData()I

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5202"

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mIsActionMode:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->setDeleteVisibility(Z)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/website/b;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;I)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreateView$3(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mIsActionMode:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->setSwitchStateChange()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCtrlAndDKeyPressed$11()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->destroyDeleteMode()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mIsActionMode:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mWebPushDeleteList:Ljava/util/ArrayList;

    return-void
.end method

.method private lambda$scrollListIfRequired$4(I)V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v1, 0xfa

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    return-void
.end method

.method private synthetic lambda$updateActionbarLayout$5(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$updateActionbarLayout$6()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method private synthetic lambda$updateActionbarLayout$7(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->selectAllNotificationItem(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->getSelectedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mListeners:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->resetPrevSelectedIndex(I)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/b;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/website/b;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;I)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$updateActionbarLayout$8()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$updateActionbarLayout$9(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mListeners:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->resetPrevSelectedIndex(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->selectAllNotificationItem(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Select"

    goto :goto_0

    :cond_0
    const-string v0, "Deselect"

    :goto_0
    const-string v1, "5201"

    invoke-static {p1, v1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/b;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/website/b;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;I)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->getSelectedString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic m(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;)V
    .locals 0

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->lambda$onCreateView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->lambda$scrollListIfRequired$4(I)V

    return-void
.end method

.method public static synthetic o(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;)V
    .locals 0

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->lambda$updateActionbarLayout$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;)V
    .locals 0

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->lambda$updateActionbarLayout$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->lambda$onCtrlAndDKeyPressed$11()V

    return-void
.end method

.method public static synthetic r(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->lambda$updateActionbarLayout$8()V

    return-void
.end method

.method public static synthetic s(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->lambda$onCreateView$0()V

    return-void
.end method

.method private scrollListIfRequired()V
    .locals 5

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mHeightToShift:I

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mHeightToShift:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->isAppbarExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->collapseAppbar()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mRvShiftHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mRvShiftHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/website/k;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3, p0}, Lcom/sec/android/app/sbrowser/settings/website/k;-><init>(IILjava/lang/Object;)V

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private setOnSelectionMode()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mCounter:I

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mIsActionMode:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->startDeleteMode()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getTotalNotificationItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iput v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mCounter:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->selectAllNotificationItem(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->updateSelectAllCheckBox()V

    return-void
.end method

.method private setPushNotificationState(ZZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setPushNotificationsEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setWebPushNotificationEnabled(Z)V

    :cond_0
    return-void
.end method

.method private showSelectAllCheckBoxAnimation()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const v1, 0x7f010037

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    return-object p0
.end method

.method private turnOff()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->setPushNotificationState(ZZ)V

    return-void
.end method

.method private turnOn()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->setPushNotificationState(ZZ)V

    return-void
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mBottomBarHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private updateNoItemViewHeight()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/h1;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    :cond_1
    sub-int/2addr v0, v2

    int-to-double v0, v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->getNoItemViewMinHeight()I

    move-result v2

    double-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->setNoItemViewHeight(I)V

    return-void
.end method

.method private updateSelectAllCheckBox()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getTotalNotificationItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mCounter:I

    const/4 v3, 0x0

    if-ne v2, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mCounter:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mDummyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->hide()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mDummyView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->show()V

    :goto_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mCounter:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    const v2, 0x7f140357

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    const v2, 0x7f140356

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mCounter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->updateAppBarInfo()V

    return-void
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mDummyView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic w(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mIsActionMode:Z

    return p0
.end method

.method public static bridge synthetic x(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mTouchActionDowned:Z

    return-void
.end method

.method public static bridge synthetic y(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->displayWebsiteList(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic z(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->scrollListIfRequired()V

    return-void
.end method


# virtual methods
.method public deleteSelectedData()I
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getTotalNotificationItemCount()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mWebPushDeleteList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mWebPushList:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mWebPushList:Ljava/util/List;

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getChildInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->getIsSelected()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->getWebsite()Lcom/sec/android/app/sbrowser/settings/website/Website;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mWebPushDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->getWebsite()Lcom/sec/android/app/sbrowser/settings/website/Website;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mWebPushList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mWebPushDeleteList:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mWebPushDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mWebPushDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/settings/website/Website;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/settings/website/Website;->setPermissionContentSetting(I)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mWebPushList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->setAllowedBlockedList(Ljava/util/List;)V

    if-ne v0, v2, :cond_6

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    :cond_6
    move v1, v2

    :cond_7
    return v1
.end method

.method public destroyDeleteMode()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mBottomCornerForDeleteView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->setIsInActionMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->setShowingActionMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mListeners:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->clearLists()V

    iput v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mCounter:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mListeners:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->resetPrevSelectedIndex(I)V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mIsActionMode:Z

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->displaySelectModeUI(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mDeleteSelection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setEnabled(Z)V

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->setDeleteVisibility(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->updateAppBarInfo()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->startCheckBoxAnimation(Z)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->selectAllNotificationItem(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->showSelectAllCheckBoxAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mIsActionMode:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteUtils;->updateContentDescription(Landroidx/recyclerview/widget/RecyclerView;ZLandroid/app/Activity;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method public getAdapter()Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    return-object p0
.end method

.method public getCounter()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mCounter:I

    return p0
.end method

.method public final getListView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public getNavigateUpID()Ljava/lang/String;
    .locals 1

    const v0, 0x7f140cf9

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mIsActionMode:Z

    if-eqz p0, :cond_0

    const-string p0, "557"

    goto :goto_0

    :cond_0
    const-string p0, "556"

    :goto_0
    return-object p0
.end method

.method public getSelectedList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mListeners:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->getSelectedList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getWebPushListSize()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mWebPushList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public isActionMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mIsActionMode:Z

    return p0
.end method

.method public isSelectAllNotificationPageList(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getTotalNotificationItemCount()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSwitchChecked()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->isChecked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onBackPressed()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mIsActionMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->setDeleteVisibility(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/website/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/website/b;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/terrace/TerraceHelper;->initializeSync(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mIsActionMode:Z

    if-nez v0, :cond_0

    const v0, 0x7f100031

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0b0e4b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mDeleteAction:Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mDeleteAction:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->tintMenuIcon(Landroid/view/MenuItem;Landroid/app/Activity;)V

    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const p2, 0x7f0e0026

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0b0bf4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    const v0, 0x7f0b00d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mItemTouchListener:Landroidx/recyclerview/widget/N0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/N0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/website/c;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/settings/website/c;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const v2, 0x7f0b01bd

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v2, 0x7f0e0921

    invoke-virtual {p1, v2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p3

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getCollapsingToolbarTitle(Landroid/app/Activity;)Landroid/widget/TextView;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mMainAppBarTitle:Landroid/widget/TextView;

    const p3, 0x7f0b0b5f

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mDeleteSelection:Landroid/widget/LinearLayout;

    const p3, 0x7f0b02da

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    const p3, 0x7f0b01c0

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mBottomCornerForDeleteView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p3

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getAppBarLayout(Landroid/app/Activity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mOffsetChangeListener:Lc6/e;

    invoke-virtual {p3, v2}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lc6/e;)V

    :cond_0
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/website/a;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/settings/website/a;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;I)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f14004e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1402b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const p3, 0x7f0b03e5

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mDeleteTextView:Landroid/widget/TextView;

    const p3, 0x7f0b0481

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mDummyView:Landroid/view/View;

    const p3, 0x7f0b0e4d

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mDeleteMenuItem:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    invoke-direct {v2, p3, p3}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f14082f

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {v2, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setAccessibilityTitle(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->isPushNotificationsEnabled()Z

    move-result p3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {v2, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    invoke-direct {p0, p3, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->setPushNotificationState(ZZ)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/website/d;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/sec/android/app/sbrowser/settings/website/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p3, v2}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p3, p0, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners$WebPushNotiDelegate;Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mListeners:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->setSeslMultiSelectedListener()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActivity:Landroid/app/Activity;

    const p3, 0x7f060bcf

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;

    new-instance p3, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment$WebsiteInfoPopulator;

    invoke-direct {p3, p0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment$WebsiteInfoPopulator;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;I)V

    invoke-direct {p1, p3}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoCallback;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mDeleteTextView:Landroid/widget/TextView;

    const v0, 0x7f0800b1

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mDeleteTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const v1, 0x7f060e10

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->fetchPushNotificationPreferences()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mListeners:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->setSPenMultiSelectionListener()V

    return-object p2
.end method

.method public onCtrlAndAKeyPressed()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mIsActionMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mListeners:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->resetPrevSelectedIndex(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->selectAllNotificationItem(Z)V

    :cond_0
    return-void
.end method

.method public onCtrlAndDKeyPressed()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->deleteSelectedData()I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mIsActionMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mWebPushDeleteList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->setDeleteVisibility(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/website/b;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/website/b;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mWebPushList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mOffsetChangeListener:Lc6/e;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lc6/e;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mItemTouchListener:Landroidx/recyclerview/widget/N0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/N0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->onDestroy()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0b0e4b

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "5192"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mIsActionMode:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->setOnSelectionMode()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mDeleteAction:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140346

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;->onResume()V

    return-void
.end method

.method public onShiftKeyPressed(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mListeners:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiListeners;->onShiftKeyPressed(Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const v0, 0x7f14082f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public refreshActionMenu()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getNotificationSelectedItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mTouchActionDowned:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment$3;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->show(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mDummyView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->hide()V

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->updateBottomBarDeleteButton()V

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public selectAllNotificationItem(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getChildInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/settings/website/ChildInfo;->setIsSelected(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->getSelectedList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->getSelectedList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->getSelectedList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->updateOnSelectAllNotificationItem(Z)V

    return-void
.end method

.method public setCounter(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mCounter:I

    return-void
.end method

.method public setDeleteVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mDeleteMenuItem:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mDummyView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mTouchActionDowned:Z

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->show()V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->hide()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setDummyViewVisiblity(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mDummyView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setHeightToShift(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mHeightToShift:I

    return-void
.end method

.method public setIsInActionMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mIsActionMode:Z

    return-void
.end method

.method public setNotificationSelectedItemCount()V
    .locals 8

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mIsActionMode:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getNotificationSelectedItemCount()I

    move-result v0

    const v1, 0x7f140b8f

    const v2, 0x7f14105f

    const v3, 0x7f14028a

    const-string v4, ", "

    if-nez v0, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActivity:Landroid/app/Activity;

    const v7, 0x7f140821

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllLayout:Landroid/widget/LinearLayout;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v7, v3, v6, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v2, v6, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f140357

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f140345

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->isSelectAllNotificationPageList(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const v3, 0x7f140289

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllLayout:Landroid/widget/LinearLayout;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v7, v3, v6, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v2, v6, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    const v3, 0x7f140356

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->updateAppBarInfo()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getTotalNotificationItemCount()I

    move-result v2

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->refreshActionMenu()V

    return-void
.end method

.method public setSwitchStateChange()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mWebPushList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->turnOn()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->setSwitchStatus(Z)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->turnOff()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->setSwitchStatus(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->getScreenID()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "On"

    goto :goto_2

    :cond_2
    const-string p0, "Off"

    :goto_2
    const-string v1, "5193"

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTouchActionDowned(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mTouchActionDowned:Z

    return-void
.end method

.method public startDeleteMode()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mIsActionMode:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->setIsInActionMode(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mIsActionMode:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->setShowingActionMode(Z)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mCounter:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-static {v2}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->updateActionbarLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->updateSelectAllCheckBox()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->startCheckBoxAnimation(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->showSelectAllCheckBoxAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mIsActionMode:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteUtils;->updateContentDescription(Landroidx/recyclerview/widget/RecyclerView;ZLandroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->refreshActionMenu()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method public updateActionbarLayout()V
    .locals 10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e052d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActionBarView:Landroid/view/View;

    const v2, 0x7f0b0821

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActionBarView:Landroid/view/View;

    const v2, 0x7f0b0823

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActionBarView:Landroid/view/View;

    const v2, 0x7f0b0822

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActionBarView:Landroid/view/View;

    const v2, 0x7f0b0af8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mCancelButton:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActionBarView:Landroid/view/View;

    const v2, 0x7f0b0af9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mCancelButtonText:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mCancelButtonText:Landroid/widget/TextView;

    const v2, 0x7f0800ad

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mCancelButtonText:Landroid/widget/TextView;

    const v2, 0x7f060e10

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mCancelButton:Landroid/view/View;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/website/a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/settings/website/a;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getNotificationSelectedItemCount()I

    move-result v1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getTotalNotificationItemCount()I

    move-result v5

    if-ne v1, v5, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->updateSelectAllCheckBox()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllLayout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/sec/android/app/sbrowser/settings/website/a;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lcom/sec/android/app/sbrowser/settings/website/a;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/sec/android/app/sbrowser/settings/website/a;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/settings/website/a;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getNotificationSelectedItemCount()I

    move-result v1

    const v3, 0x7f140b8f

    const v4, 0x7f14105f

    const v5, 0x7f14028a

    const-string v6, ", "

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllText:Landroid/widget/TextView;

    const v7, 0x7f140821

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllLayout:Landroid/widget/LinearLayout;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f120001

    invoke-virtual {v8, v9, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllText:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "%d"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->isSelectAllNotificationPageList(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const v5, 0x7f140289

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllLayout:Landroid/widget/LinearLayout;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getNotificationSelectedItemCount()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mSelectAllText:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->displaySelectModeUI(Z)V

    return-void
.end method

.method public updateAppBarInfo()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mMainAppBarTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getNotificationSelectedItemCount()I

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mIsActionMode:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mMainAppBarTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f140821

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mMainAppBarTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f120001

    invoke-virtual {p0, v3, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mMainAppBarTitle:Landroid/widget/TextView;

    const v0, 0x7f14082f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public updateBottomBarDeleteButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mDeleteTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getNotificationSelectedItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getTotalNotificationItemCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140434

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140433

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mDeleteTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateOnSelectAllNotificationItem(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mExpandableList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    const v3, 0x7f0b0234

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->mIsActionMode:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->setNotificationSelectedItemCount()V

    return-void
.end method
