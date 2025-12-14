.class public Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper$NotificationPageDeleteTransition;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBottomBarMarginView:Landroid/view/View;

.field private mDeleteBottomBarButton:Landroid/widget/LinearLayout;

.field private mDeleteBottomText:Landroid/widget/TextView;

.field private mDeleteView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field mMainText:Landroid/widget/TextView;

.field private mRvShiftHandler:Landroid/os/Handler;

.field private mShareBottomBarButton:Landroid/widget/LinearLayout;

.field private mShareBottomText:Landroid/widget/TextView;

.field mSubTextDescription:Landroid/widget/TextView;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mRvShiftHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mDeleteView:Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->lambda$scrollListIfRequired$2(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->lambda$hideBottomBar$1(Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mBottomBarMarginView:Landroid/view/View;

    return-object p0
.end method

.method private synthetic lambda$hideBottomBar$1(Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071354

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopBottomPadding(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetHoverBottomPadding(I)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->updateBottomMargin(Z)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->hide()V

    return-void
.end method

.method private static lambda$scrollListIfRequired$2(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v1, 0xfa

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    return-void
.end method

.method private setColorForActionBarIcon(ILandroid/view/Menu;)V
    .locals 0

    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->setActionButtonTintColor(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public addListItemsDecoration(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;->getRoundedCornerColor(Landroid/content/Context;Z)I

    move-result v0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    return-void
.end method

.method public appBarOnOffsetChanged(ZLandroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/google/android/material/appbar/AppBarLayout;ILandroid/view/ViewGroup;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    const v0, 0x7f0b02ee

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lt/k0;

    invoke-virtual {p6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p4}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p4

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    sub-int v2, p4, p5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float p5, p5

    int-to-float p4, p4

    div-float/2addr p5, p4

    invoke-virtual {p7}, Landroid/view/View;->getHeight()I

    move-result p4

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    sub-int/2addr p4, p3

    if-eqz p1, :cond_1

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p1, p5

    const p3, 0x3f19999a    # 0.6f

    sub-float/2addr p1, p3

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p5, p1

    if-gez p1, :cond_2

    const/4 p1, 0x5

    if-le v2, p1, :cond_2

    iput p4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput p4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public displaySelectModeUI(ZLandroid/view/Menu;Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 4

    const-string v0, "displaySelectModeUI show="

    const-string v1, "NotificationBaseUiHelper"

    invoke-static {v0, v1, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

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

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->setIsInActionMode(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

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

    invoke-virtual {v0, p5}, Lm/b;->l(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getToolbar(Landroid/app/Activity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p5, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper$1;

    invoke-direct {p5, p0, p2, p3, p4}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper$1;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;Landroid/view/Menu;Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;Landroid/widget/LinearLayout;)V

    const-wide/16 p2, 0x64

    invoke-virtual {p1, p5, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lm/b;->l(Landroid/view/View;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->setMenuItemVisibility(ZLandroid/view/Menu;Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;Landroid/widget/LinearLayout;)V

    :goto_1
    return-void
.end method

.method public hideBottomBar(Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mVisible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mVisible:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, LJ8/d;

    const/16 v2, 0x12

    invoke-direct {v1, p0, v2, p1, p2}, LJ8/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 p0, 0x12c

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public initHelper(Landroid/view/View;Landroid/widget/LinearLayout;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mDeleteView:Landroid/view/View;

    const v2, 0x7f0b01b5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mDeleteView:Landroid/view/View;

    const v2, 0x7f0b01bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mDeleteView:Landroid/view/View;

    const v2, 0x7f0b03e5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mDeleteBottomText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mDeleteView:Landroid/view/View;

    const v2, 0x7f0b0b47

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mShareBottomText:Landroid/widget/TextView;

    const v1, 0x7f0b047f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mBottomBarMarginView:Landroid/view/View;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mDeleteView:Landroid/view/View;

    const v1, 0x7f0b0b46

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mDeleteView:Landroid/view/View;

    const v2, 0x7f0b03de

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0601fc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mShareBottomText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0601ff

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mDeleteBottomText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0601fd

    invoke-virtual {p2, v2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mShareBottomText:Landroid/widget/TextView;

    const p2, 0x7f0800b1

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mShareBottomText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    const v2, 0x7f060e10

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mDeleteBottomText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mDeleteBottomText:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2, v2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f14004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f1402b1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const p2, 0x7f140053

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public isSelectAllNotificationPageList(ILcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;)Z
    .locals 0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getTotalNotificationItemCount()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public launchSystemNotificationSettings()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.provider.extra.APP_PACKAGE"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to launch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "NotificationBaseUiHelper"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public loadNoNotificationLayout(Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/16 p0, 0x8

    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onOptionMenuCreate(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;Landroid/widget/LinearLayout;Landroid/view/Menu;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->setMenuItemVisibility(ZLandroid/view/Menu;Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;Landroid/widget/LinearLayout;)V

    const p1, 0x7f0b0b89

    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->setColorForActionBarIcon(ILandroid/view/Menu;)V

    invoke-interface {p3, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f140f8f

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method public refreshActionMenu(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;Landroidx/recyclerview/widget/RecyclerView;ZZZLcom/sec/android/app/sbrowser/common/utils/BottomBarController;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getNotificationSelectedItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    if-nez p5, :cond_2

    invoke-virtual {p0, p2, p6}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->showBottomBar(Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2, p6}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->hideBottomBar(Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;)V

    :cond_2
    :goto_1
    const/16 p2, 0x8

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    if-eqz p4, :cond_4

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->updateBottomBarDeleteButton(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;)V

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public scrollListIfRequired(Ljava/lang/Boolean;ILandroidx/recyclerview/widget/RecyclerView;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->isAppbarExpanded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->collapseAppbar()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mRvShiftHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mRvShiftHandler:Landroid/os/Handler;

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/g;

    const/4 v0, 0x1

    invoke-direct {p1, p3, p2, v0}, Lcom/sec/android/app/sbrowser/settings/g;-><init>(Landroidx/recyclerview/widget/RecyclerView;II)V

    const-wide/16 p2, 0xfa

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    const/4 p2, 0x0

    :cond_1
    return p2
.end method

.method public selectAllCheckBoxSPenHoverText(Ljava/lang/String;Landroid/widget/CheckBox;)V
    .locals 1

    const-string v0, "[0-9]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    const v0, 0x7f141084

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    const p1, 0x7f141085

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p2, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setActionButtonTintColor(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    const v0, 0x7f0601f4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-static {p1, p0}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setTint(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setExpandList(Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapterListener;Ljava/util/List;Landroidx/recyclerview/widget/O0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;",
            "Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapterListener;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItem;",
            ">;",
            "Landroidx/recyclerview/widget/O0;",
            ")V"
        }
    .end annotation

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/D0;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p0

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    invoke-virtual {p1, v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    invoke-virtual {p2, p4}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->setNotificationData(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->setListener(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapterListener;)V

    invoke-virtual {p1, p5}, Landroidx/recyclerview/widget/RecyclerView;->setOnScrollListener(Landroidx/recyclerview/widget/O0;)V

    return-void
.end method

.method public setMenuItemEnabled(ZLandroid/view/Menu;)V
    .locals 0

    const p0, 0x7f0b0b89

    invoke-interface {p2, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public setMenuItemVisibility(ZLandroid/view/Menu;Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;Landroid/widget/LinearLayout;)V
    .locals 4

    if-eqz p2, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p4

    if-nez p4, :cond_0

    move p4, v1

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    const v2, 0x7f0b03e1

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz p1, :cond_1

    if-nez p4, :cond_1

    move p4, v1

    goto :goto_1

    :cond_1
    move p4, v0

    :goto_1
    invoke-interface {v2, p4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    const p4, 0x7f0b00d4

    invoke-interface {p2, p4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {p2, p4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p4

    invoke-interface {p4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    const p4, 0x7f0b0c5c

    invoke-interface {p2, p4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {p2, p4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p4

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->isNotificationListEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-interface {p4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    const p4, 0x7f0b0b89

    invoke-interface {p2, p4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {p2, p4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p4

    if-eqz p1, :cond_5

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->isSearchDataEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    move v0, v1

    :cond_5
    invoke-interface {p4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p0, v1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->setMenuItemEnabled(ZLandroid/view/Menu;)V

    :cond_7
    return-void
.end method

.method public setNotificationSelectedItemCount(ZLcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;Landroidx/recyclerview/widget/RecyclerView;ZZZLcom/sec/android/app/sbrowser/common/utils/BottomBarController;Landroid/widget/CheckBox;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getNotificationSelectedItemCount()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f140801

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f140655

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    iget-object v5, v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const v7, 0x7f12005f

    invoke-virtual {v5, v7, v4, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    const v6, 0x7f14028a

    const v7, 0x7f140b8f

    const v8, 0x7f14105f

    const-string v9, ", "

    if-nez v4, :cond_2

    iget-object v10, v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    const v11, 0x7f1405cf

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v6, v3, v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v8, v3, v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->selectAllCheckBoxSPenHoverText(Ljava/lang/String;Landroid/widget/CheckBox;)V

    move-object v3, p2

    goto :goto_2

    :cond_2
    iget-object v10, v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    const v12, 0x7f120001

    invoke-virtual {v10, v12, v4, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v3, p2

    invoke-virtual {p0, v4, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->isSelectAllNotificationPageList(ILcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v5, v9}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    const v10, 0x7f140289

    invoke-static {v6, v10, v5, v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v6, v8, v5, v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-static {v5, v9}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v10, v6, v5, v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v6, v8, v5, v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "%d"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->selectAllCheckBoxSPenHoverText(Ljava/lang/String;Landroid/widget/CheckBox;)V

    :goto_2
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getTotalNotificationItemCount()I

    move-result v2

    if-ne v4, v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->refreshActionMenu(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;Landroidx/recyclerview/widget/RecyclerView;ZZZLcom/sec/android/app/sbrowser/common/utils/BottomBarController;)V

    return-void
.end method

.method public setTextNoNotificationLayout(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p1, 0x7f0b07ef

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mMainText:Landroid/widget/TextView;

    const v0, 0x7f1502ec

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    const p1, 0x7f0b0825

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mSubTextDescription:Landroid/widget/TextView;

    return-void
.end method

.method public showBottomBar(Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mVisible:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mVisible:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07135b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopBottomPadding(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetHoverBottomPadding(I)V

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper$2;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper$2;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;)V

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->show(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;)V

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->updateBottomMargin(Z)V

    return-void
.end method

.method public textUpdateOnConfigurationChanged(ZLcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;Landroid/widget/LinearLayout;Landroid/view/Menu;Landroid/widget/TextView;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mShareBottomText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f140053

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mDeleteBottomText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v1, 0x7f14004e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->setMenuItemVisibility(ZLandroid/view/Menu;Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;Landroid/widget/LinearLayout;)V

    const p1, 0x7f140f8e

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    invoke-virtual {p0, p4}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->updateMenuItems(Landroid/view/Menu;)V

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->getNotificationItemList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mMainText:Landroid/widget/TextView;

    const p2, 0x7f140834

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mSubTextDescription:Landroid/widget/TextView;

    const p1, 0x7f140833

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    return-void
.end method

.method public updateAppBarInfo(ZLandroid/widget/TextView;Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getNotificationSelectedItemCount()I

    move-result p3

    if-eqz p1, :cond_2

    if-nez p3, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1405cf

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f120001

    invoke-virtual {p0, v0, p3, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const p0, 0x7f140f88

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public updateBottomBarDeleteButton(Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mDeleteBottomText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getNotificationSelectedItemCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getTotalNotificationItemCount()I

    move-result p1

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140434

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140433

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mDeleteBottomText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationBaseUiHelper;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateMenuItems(Landroid/view/Menu;)V
    .locals 1

    if-eqz p1, :cond_3

    const p0, 0x7f0b03e1

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    const v0, 0x7f14004e

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_0
    const p0, 0x7f0b0b89

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    const v0, 0x7f140f8f

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_1
    const p0, 0x7f0b00d4

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    const v0, 0x7f14082f

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_2
    const p0, 0x7f0b0c5c

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    const p1, 0x7f140830

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_3
    return-void
.end method
