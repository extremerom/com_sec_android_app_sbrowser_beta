.class public abstract Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$SitesPageDeleteTransition;
    }
.end annotation


# instance fields
.field protected mActionbarAnimRunning:Z

.field protected mActivity:Landroid/app/Activity;

.field protected mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

.field protected final mBottomBarHandler:Landroid/os/Handler;

.field protected mBottomBarMarginView:Landroid/view/View;

.field protected mExpandList:Landroidx/recyclerview/widget/RecyclerView;

.field private mHandler:Landroid/os/Handler;

.field protected mHeightToShift:I

.field protected mIsDeleteAnimOnGoing:Z

.field protected mIsHideBottomBarAnimation:Z

.field protected mIsScrolling:Z

.field protected mIsShowingActionMode:Z

.field protected mItemTouchListener:Landroidx/recyclerview/widget/N0;

.field protected mNestedOnScrollListener:Landroidx/recyclerview/widget/O0;

.field protected final mRvShiftHandler:Landroid/os/Handler;

.field private mScrollRequired:Z

.field protected mTouchActionDowned:Z

.field private mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsScrolling:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mBottomBarHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mRvShiftHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsDeleteAnimOnGoing:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$1;-><init>(Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mItemTouchListener:Landroidx/recyclerview/widget/N0;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$2;-><init>(Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mNestedOnScrollListener:Landroidx/recyclerview/widget/O0;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->lambda$hideBottomBar$1()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->lambda$scrollListIfRequired$0(I)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mScrollRequired:Z

    return-void
.end method

.method private getChangeBounds(Z)LY2/i;
    .locals 3

    new-instance p0, LY2/i;

    invoke-direct {p0}, LY2/i;-><init>()V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, LY2/f0;->setDuration(J)LY2/f0;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e2e147b    # 0.17f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut90()Landroid/view/animation/Interpolator;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, LY2/f0;->setInterpolator(Landroid/animation/TimeInterpolator;)LY2/f0;

    return-object p0
.end method

.method private synthetic lambda$hideBottomBar$1()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f071354

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopBottomPadding(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetHoverBottomPadding(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->updateBottomMargin(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$5;-><init>(Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->hide(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;)V

    :cond_2
    return-void
.end method

.method private lambda$scrollListIfRequired$0(I)V
    .locals 4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v1, 0xfa

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    return-void
.end method


# virtual methods
.method public addListItemsDecoration(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lq/d;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lq/d;-><init>(Landroid/content/Context;)V

    new-instance v1, Lq/d;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lq/d;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$8;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$8;-><init>(Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;Lq/d;ILq/d;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    return-void
.end method

.method public enableBottomBarButtons(Z)V
    .locals 0

    return-void
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-lez p2, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getRoundedCornerColor()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->isSecretModeEnabled()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;->getRoundedCornerColor(Landroid/content/Context;Z)I

    move-result p0

    return p0
.end method

.method public hideBottomBar()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mVisible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mVisible:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->enableBottomBarButtons(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/view/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/sites/view/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public hideSearchViewWithDelay()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$3;-><init>(Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public isSecretModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public abstract performItemTouchAction()V
.end method

.method public scrollListIfRequired()V
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mScrollRequired:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mHeightToShift:I

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mHeightToShift:I

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mHeightToShift:I

    check-cast v2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isAppbarExpanded()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->collapseAppbar()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mRvShiftHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mRvShiftHandler:Landroid/os/Handler;

    new-instance v2, LG6/c;

    const/16 v3, 0x10

    invoke-direct {v2, v0, v3, p0}, LG6/c;-><init>(IILjava/lang/Object;)V

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public setCheckBoxVisibility(Landroid/widget/CheckBox;Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    if-eqz p2, :cond_0

    const v0, 0x7f010037

    goto :goto_0

    :cond_0
    const v0, 0x7f010035

    :goto_0
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    return-void
.end method

.method public setCtrlKeyPressed(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const-string v0, "setCtrlKeyPressed : "

    const-string v1, "SitesBaseUi"

    invoke-static {v0, v1, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetCtrlkeyPressed(Z)V

    :cond_0
    return-void
.end method

.method public setHeightToShift(Landroid/view/View;Z)V
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070149

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mHeightToShift:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v3, v0, :cond_0

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v0, v1

    sub-int/2addr p1, v1

    add-int/2addr p1, v2

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mHeightToShift:I

    goto :goto_0

    :cond_0
    sub-int v4, v0, v2

    if-le v3, v4, :cond_1

    sub-int v4, v0, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    sub-int/2addr p1, v4

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mHeightToShift:I

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    sub-int/2addr v0, v2

    if-le v3, v0, :cond_2

    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mHeightToShift:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mHeightToShift:I

    :cond_2
    return-void
.end method

.method public setLongPressDescription(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f140e6f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f14107e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f140b8f

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSceneAnimation(Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$SitesPageDeleteTransition;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$SitesPageDeleteTransition;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$7;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$7;-><init>(Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;)V

    invoke-virtual {v0, v1}, LY2/n0;->addListener(LY2/d0;)LY2/n0;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0, v0}, LY2/j0;->a(Landroid/view/ViewGroup;LY2/f0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showBottomBar()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mVisible:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mVisible:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->enableBottomBarButtons(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07135b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopBottomPadding(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetHoverBottomPadding(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    if-eqz v1, :cond_2

    new-instance v2, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$4;-><init>(Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->show(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->updateBottomMargin(Z)V

    :cond_2
    return-void
.end method

.method public showSelectAllCheckBoxAnimation(Landroid/widget/CheckBox;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f010037

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActionbarAnimRunning:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$6;-><init>(Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public startCheckBoxAnimation(Z)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->getChangeBounds(Z)LY2/i;

    move-result-object v2

    invoke-static {v1, v2}, LY2/j0;->a(Landroid/view/ViewGroup;LY2/f0;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b0b66

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const v4, 0x7f0b01fe

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3, p1}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->setCheckBoxVisibility(Landroid/widget/CheckBox;Z)V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->setCheckBoxVisibility(Landroid/widget/CheckBox;Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateBottomBar()V
    .locals 0

    return-void
.end method
