.class public Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$SineInOut90;,
        Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;
    }
.end annotation


# instance fields
.field private mBarVisible:Z

.field private mMarginView:Landroid/view/View;

.field private mSlideDownAnim:Landroid/view/animation/Animation;

.field private mSlideUpAnim:Landroid/view/animation/Animation;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mBarVisible:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mView:Landroid/view/View;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mMarginView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f010118

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mSlideUpAnim:Landroid/view/animation/Animation;

    new-instance p2, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$SineInOut90;

    invoke-direct {p2}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$SineInOut90;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f01010d

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mSlideDownAnim:Landroid/view/animation/Animation;

    new-instance p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$SineInOut90;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$SineInOut90;-><init>()V

    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->lambda$updateBottomMargin$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mMarginView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mView:Landroid/view/View;

    return-object p0
.end method

.method private synthetic lambda$updateBottomMargin$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mMarginView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mMarginView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mBarVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mSlideDownAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$2;-><init>(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mSlideDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mBarVisible:Z

    :cond_0
    return-void
.end method

.method public hide(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mBarVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mSlideDownAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$3;-><init>(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mSlideDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mBarVisible:Z

    :cond_0
    return-void
.end method

.method public hideBottomBar()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->updateBottomMargin(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->getAnimationDurationScale()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->hideWithoutAnimation()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->hide()V

    :goto_0
    return-void
.end method

.method public hideWithoutAnimation()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mBarVisible:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public resetBottomBarFromAdapter(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->updateBottomMargin(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->hide()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->hideWithoutAnimation()V

    :goto_0
    return-void
.end method

.method public setMarginView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mMarginView:Landroid/view/View;

    return-void
.end method

.method public show()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mBarVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mBarVisible:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mView:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mSlideUpAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public show(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mBarVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mBarVisible:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mSlideUpAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$1;-><init>(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mView:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mSlideUpAnim:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public showBottomBar(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->getAnimationDurationScale()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->showWithoutAnimation()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$6;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$6;-><init>(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->show(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;)V

    :goto_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->updateBottomMargin(Z)V

    return-void
.end method

.method public showBottomBarFromAdapter(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$5;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$5;-><init>(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->show(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->updateBottomMargin(Z)V

    return-void
.end method

.method public showWithoutAnimation()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mBarVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mBarVisible:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateBottomMargin(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070149

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    goto :goto_0

    :cond_0
    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    :goto_0
    new-instance v2, LK6/i;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p0}, LK6/i;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$4;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$4;-><init>(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const p0, 0x7f0c0010

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {v1, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$SineInOut90;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$SineInOut90;-><init>()V

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
