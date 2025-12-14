.class Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;
.implements Lc6/e;


# instance fields
.field private mActionBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;

.field private final mActivity:Landroid/app/Activity;

.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mAppBarOffset:I

.field private mClearHistory:Z

.field private mCoordinatorLayout:Landroid/view/View;

.field private final mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

.field private mMainAppBarTitle:Landroid/widget/TextView;

.field private mMenu:Landroid/view/Menu;

.field private mPrevOffset:I

.field private mPrevScreenType:I

.field private mTitle:Landroid/widget/TextView;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mPrevOffset:I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->initializeAppBar()V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getCurrentDisplayType(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mPrevScreenType:I

    new-instance p1, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;-><init>(Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActionBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;Lcom/google/android/material/appbar/AppBarLayout$Behavior;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->lambda$collapseAppbar$0(Lcom/google/android/material/appbar/AppBarLayout$Behavior;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private applyExtendAppBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->resetAppBarHeight()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->notifyAppBarHeightChanged()V

    return-void
.end method

.method private canAppBarExpand()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape(Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private initializeAppBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0e11

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0e12

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0e07

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0e09

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mMainAppBarTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0e0d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mCoordinatorLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b02c6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActivity:Landroid/app/Activity;

    check-cast v0, Lm/n;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1}, Lm/n;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {v0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lm/b;->n(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->applyExtendAppBar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lc6/e;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    return-void
.end method

.method private synthetic lambda$collapseAppbar$0(Lcom/google/android/material/appbar/AppBarLayout$Behavior;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lc6/r;->v(I)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->notifyAppBarHeightChanged()V

    return-void
.end method

.method private notifyAppBarHeightChanged()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mCoordinatorLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b06ff

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lt/k0;

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private resetAppBarHeight()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->isAppbarExpanded()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mTitle:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActionBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->getAppBarTextView()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070f2c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    int-to-float v1, v1

    const v2, 0x3e333333    # 0.175f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mMainAppBarTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    int-to-float v1, v1

    const v2, 0x3ec7ae14    # 0.39f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mMainAppBarTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setColorForActionBarBack()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/ImageButton;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->setActionButtonTintColor(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public collapseAppbar()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/d;

    iget-object v0, v0, LR0/d;->a:LR0/c;

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3ea8f5c3    # 0.33f

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/media/history/view/e;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/sbrowser/media/history/view/e;-><init>(Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;Lcom/google/android/material/appbar/AppBarLayout$Behavior;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p0

    neg-int p0, p0

    filled-new-array {v1, p0}, [I

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    const-wide/16 v0, 0x226

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mMenu:Landroid/view/Menu;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActionBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;

    return-void
.end method

.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lc6/e;)V

    return-void
.end method

.method public finishActionMode()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->updateToolbar(Z)V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getItemCount()I

    move-result p0

    return p0
.end method

.method public getSelectedItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getSelectedItemCount()I

    move-result p0

    return p0
.end method

.method public getToolbarTitle()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method public isAppbarExpanded()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mAppBarOffset:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->canAppBarExpand()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIdentifierActionPerformed()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->isInActionMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->openOptionsMenu()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInActionMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->isInActionMode()Z

    move-result p0

    return p0
.end method

.method public isSelectedAll()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActionBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->isSelectedAll()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mClearHistory:Z

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

.method public onCancelButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->cancelButtonClicked()V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/media/history/view/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/media/history/view/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0807b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getCurrentDisplayType(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mPrevScreenType:I

    if-eq v1, v0, :cond_1

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mPrevOffset:I

    :cond_1
    iput v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mPrevScreenType:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->applyExtendAppBar()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mMenu:Landroid/view/Menu;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100015

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->setColorForActionBarBack()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->updateOptionMenuVisibility()V

    return-void
.end method

.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mPrevOffset:I

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mAppBarOffset:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mPrevOffset:I

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p2, p1

    const/high16 p1, 0x3fc00000    # 1.5f

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mMainAppBarTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mTitle:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->isInActionMode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActionBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->getAppBarTextView()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->isDelayNeeded()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/sec/android/app/sbrowser/media/history/view/a;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Lcom/sec/android/app/sbrowser/media/history/view/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->notifyAppBarHeightChanged()V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_3

    const v0, 0x7f0b02aa

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const v0, 0x7f0b0af4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "3230"

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->videoHistory(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getItemCount()I

    move-result p1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->updateItemSelectedList(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getController()Lcom/sec/android/app/sbrowser/media/history/view/IMHController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHController;->onDeleteButtonClicked()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->startActionMode()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    sget-object p1, Lcom/sec/android/app/sbrowser/media/history/common/MHConstants$ActionModeType;->DELETE:Lcom/sec/android/app/sbrowser/media/history/common/MHConstants$ActionModeType;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->setActionModeType(Lcom/sec/android/app/sbrowser/media/history/common/MHConstants$ActionModeType;)V

    goto :goto_0

    :cond_2
    const-string p1, "3231"

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->videoHistory(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->getInstance()Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->clearModelList()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->deleteAllMediaHistoryData(Landroid/content/Context;)Z

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->setClearHistory(Z)V

    goto :goto_0

    :cond_3
    const-string p1, "3213"

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->videoHistory(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mMenu:Landroid/view/Menu;

    if-eqz p0, :cond_0

    const v0, 0x7f0b0052

    invoke-interface {p0, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/Menu;->close()V

    :cond_0
    return-void
.end method

.method public selectAllListItem(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->selectAllListItem(Z)V

    return-void
.end method

.method public setActionButtonTintColor(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActivity:Landroid/app/Activity;

    const v0, 0x7f0601f6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-static {p1, p0}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setTint(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void
.end method

.method public setClearHistory(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mClearHistory:Z

    return-void
.end method

.method public setMainAppBarContentDescription(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mMainAppBarTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMainAppBarTitle(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mMainAppBarTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public startActionMode()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActionBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->updateAppbarLayout()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->updateToolbar(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActionBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->startAppBarAnimation()V

    return-void
.end method

.method public updateActionBarText()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActionBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->updateAppBarText()V

    return-void
.end method

.method public updateAppbarLayout()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->updateOptionMenuVisibility()V

    return-void
.end method

.method public updateOptionMenuVisibility()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0b0af4

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0b02aa

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mMenu:Landroid/view/Menu;

    const v3, 0x7f0b0052

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->isInActionMode()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getItemCount()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v1, p0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v2, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    return-void
.end method

.method public updateToolbar(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActivity:Landroid/app/Activity;

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

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mHistoryView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getToolbarTitle()Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lm/b;->t()V

    invoke-virtual {v0}, Lm/b;->u()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActionBarView:Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->getActionBarView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lm/b;->l(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lm/b;->l(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mMainAppBarTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1405de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->updateOptionMenuVisibility()V

    return-void
.end method
