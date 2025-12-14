.class public Lcom/sec/terrace/browser/TinSwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/TinSwipeRefreshLayout$OnRefreshListener;,
        Lcom/sec/terrace/browser/TinSwipeRefreshLayout$OnResetListener;
    }
.end annotation


# static fields
.field private static final LAYOUT_ATTRS:[I


# instance fields
.field private final mAnimateToStartPosition:Landroid/view/animation/Animation;

.field private mAnimatedVectorDrawable:LZ2/h;

.field private mAnimationCallback:LZ2/c;

.field private mAnimationCallbackStart:LZ2/c;

.field private mCancelAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCircleHeight:I

.field private mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

.field private mCircleViewIndex:I

.field private mCircleWidth:I

.field private mCurrentTargetOffsetTop:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mFrom:I

.field private mHapticFeedbackSent:Z

.field private mIsBeingDragged:Z

.field private mListener:Lcom/sec/terrace/browser/TinSwipeRefreshLayout$OnRefreshListener;

.field private mMediumAnimationDuration:I

.field private mNotify:Z

.field private mOriginalOffsetCalculated:Z

.field protected mOriginalOffsetTop:I

.field private mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

.field private mRefreshing:Z

.field private mResetListener:Lcom/sec/terrace/browser/TinSwipeRefreshLayout$OnResetListener;

.field private mScale:Z

.field private mScaleAnimation:Landroid/view/animation/Animation;

.field private mScaleDownAnimation:Landroid/view/animation/Animation;

.field private mScaleDownToStartAnimation:Landroid/view/animation/Animation;

.field private mSpinnerFinalOffset:F

.field private mStartingScale:F

.field private mTotalDragDistance:F

.field private mTotalMotionY:F

.field private mUsingCustomStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x101000e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mRefreshing:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mTotalDragDistance:F

    iput-boolean v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleViewIndex:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mAnimatedVectorDrawable:LZ2/h;

    new-instance v1, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$1;

    invoke-direct {v1, p0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$1;-><init>(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;)V

    iput-object v1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v1, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$2;

    invoke-direct {v1, p0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$2;-><init>(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;)V

    iput-object v1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mAnimationCallback:LZ2/c;

    new-instance v1, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$3;

    invoke-direct {v1, p0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$3;-><init>(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;)V

    iput-object v1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mAnimationCallbackStart:LZ2/c;

    new-instance v1, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$7;

    invoke-direct {v1, p0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$7;-><init>(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;)V

    iput-object v1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mMediumAnimationDuration:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    sget-object v1, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42200000    # 40.0f

    mul-float v2, v0, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleWidth:I

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleHeight:I

    invoke-direct {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->createProgressView()V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    const/high16 p2, 0x42800000    # 64.0f

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mSpinnerFinalOffset:F

    iput p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mTotalDragDistance:F

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;)LZ2/h;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mAnimatedVectorDrawable:LZ2/h;

    return-object p0
.end method

.method private animateOffsetToCorrectPosition(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/sec/terrace/R$drawable;->progress_circle_indeterminate_transition:I

    invoke-static {v1, v0}, LZ2/h;->a(ILandroid/content/Context;)LZ2/h;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mAnimatedVectorDrawable:LZ2/h;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/sec/terrace/R$drawable;->progress_circle_start_transition:I

    invoke-static {v0, p1}, LZ2/h;->a(ILandroid/content/Context;)LZ2/h;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mAnimationCallbackStart:LZ2/c;

    invoke-virtual {p1, p0}, LZ2/h;->b(LZ2/c;)V

    invoke-virtual {p1}, LZ2/h;->start()V

    return-void
.end method

.method private animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mFrom:I

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1, p2}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;)LZ2/c;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mAnimationCallback:LZ2/c;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;)Lorg/chromium/third_party/android/swiperefresh/CircleImageView;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    return-object p0
.end method

.method private createProgressView()V
    .locals 4

    new-instance v0, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, -0x50506

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;-><init>(Landroid/content/Context;IF)V

    iput-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    sget v1, Lcom/sec/terrace/R$drawable;->pull_to_refresh:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;)Landroid/view/animation/Animation$AnimationListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mRefreshing:Z

    return p0
.end method

.method public static bridge synthetic f(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mScale:Z

    return p0
.end method

.method public static bridge synthetic g(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;)F
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mStartingScale:F

    return p0
.end method

.method public static bridge synthetic h(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;I)V
    .locals 0

    iput p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->moveToStart(F)V

    return-void
.end method

.method public static bridge synthetic j(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->notifyListener()V

    return-void
.end method

.method public static bridge synthetic k(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->setAnimationProgress(F)V

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private moveToStart(F)V
    .locals 2

    iget v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mFrom:I

    iget v1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mOriginalOffsetTop:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    return-void
.end method

.method private notifyListener()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mNotify:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mListener:Lcom/sec/terrace/browser/TinSwipeRefreshLayout$OnRefreshListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$OnRefreshListener;->onRefresh()V

    :cond_0
    return-void
.end method

.method private setAnimationProgress(F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private setRefreshing(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mRefreshing:Z

    if-eq v0, p1, :cond_1

    iput-boolean p2, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mNotify:Z

    iput-boolean p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mRefreshing:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->animateOffsetToCorrectPosition(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setTargetOffsetTopAndBottom(IZ)V
    .locals 0

    iget-object p2, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p2}, Landroid/view/View;->bringToFront()V

    iget-object p2, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    return-void
.end method

.method private startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$5;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$5;-><init>(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    iput p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mFrom:I

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    iput p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mStartingScale:F

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$8;

    invoke-direct {p1, p0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$8;-><init>(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;)V

    iput-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1, p2}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$4;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$4;-><init>(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mMediumAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public bringChildToFront(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method public getChildDrawingOrder(II)I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleViewIndex:I

    if-gez p0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_1

    return p0

    :cond_1
    if-lt p2, p0, :cond_2

    add-int/lit8 p2, p2, 0x1

    :cond_2
    return p2
.end method

.method public isRefreshing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mRefreshing:Z

    return p0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p2, p2, 0x2

    sub-int p5, p1, p2

    iget p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    add-int/2addr p1, p2

    add-int/2addr p3, p0

    invoke-virtual {p4, p5, p0, p1, p3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    iget p2, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleWidth:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleHeight:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    iget-boolean p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    const p2, 0x3f866666    # 1.05f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mOriginalOffsetTop:I

    iput p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleViewIndex:I

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    if-ne p2, v0, :cond_1

    iput p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleViewIndex:I

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public pull(F)V
    .locals 10

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mTotalDragDistance:F

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    neg-float v1, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mTotalMotionY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mTotalMotionY:F

    iget p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mTotalDragDistance:F

    div-float p1, v0, p1

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mTotalDragDistance:F

    sub-float/2addr v3, v4

    iget-boolean v4, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mSpinnerFinalOffset:F

    iget v5, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mOriginalOffsetTop:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mSpinnerFinalOffset:F

    :goto_0
    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v4, v5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v3, v6

    float-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sub-double/2addr v6, v8

    double-to-float v3, v6

    mul-float/2addr v3, v5

    mul-float/2addr v3, v4

    mul-float/2addr v3, v5

    iget v5, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mOriginalOffsetTop:I

    mul-float/2addr v4, p1

    add-float/2addr v4, v3

    float-to-int p1, v4

    add-int/2addr v5, p1

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-boolean p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mScale:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    :cond_5
    iget p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mTotalDragDistance:F

    cmpg-float p1, v0, p1

    const/4 v4, 0x1

    if-gez p1, :cond_8

    iput-boolean v3, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mHapticFeedbackSent:Z

    iget-boolean p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mScale:Z

    if-eqz p1, :cond_9

    const/high16 p1, 0x42480000    # 50.0f

    cmpg-float v3, v0, p1

    if-gtz v3, :cond_6

    cmpl-float v1, v0, v1

    if-lez v1, :cond_6

    div-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->setAnimationProgress(F)V

    goto :goto_1

    :cond_6
    cmpl-float p1, v0, p1

    if-lez p1, :cond_7

    const p1, 0x3d962fc9

    mul-float/2addr p1, v0

    const v0, 0x40155555

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    :cond_8
    iget-boolean p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mHapticFeedbackSent:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->runPulltoRefreshVibrate(Landroid/view/View;)V

    iput-boolean v4, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mHapticFeedbackSent:Z

    :cond_9
    :goto_1
    iget p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v5, p1

    invoke-direct {p0, v5, v4}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    return-void
.end method

.method public release(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mHapticFeedbackSent:Z

    iput-boolean v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mIsBeingDragged:Z

    iget v1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mTotalMotionY:F

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mTotalDragDistance:F

    cmpl-float p1, v1, p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->setRefreshing(ZZ)V

    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mRefreshing:Z

    iget-boolean p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mScale:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCancelAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-nez p1, :cond_2

    new-instance p1, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$6;

    invoke-direct {p1, p0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$6;-><init>(Lcom/sec/terrace/browser/TinSwipeRefreshLayout;)V

    iput-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCancelAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    :cond_2
    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCancelAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    invoke-direct {p0, v0, p1}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mIsBeingDragged:Z

    invoke-direct {p0, v0, v0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->setRefreshing(ZZ)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->setAnimationProgress(F)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mOriginalOffsetTop:I

    iget v1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    :goto_0
    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mResetListener:Lcom/sec/terrace/browser/TinSwipeRefreshLayout$OnResetListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout$OnResetListener;->onReset()V

    :cond_1
    return-void
.end method

.method public runPulltoRefreshVibrate(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getListenerCallback()Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceContentViewCallback;->runHapticFeedbackEffectForPullToRefresh(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mTotalDragDistance:F

    return-void
.end method

.method public setOnRefreshListener(Lcom/sec/terrace/browser/TinSwipeRefreshLayout$OnRefreshListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mListener:Lcom/sec/terrace/browser/TinSwipeRefreshLayout$OnRefreshListener;

    return-void
.end method

.method public setOnResetListener(Lcom/sec/terrace/browser/TinSwipeRefreshLayout$OnResetListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mResetListener:Lcom/sec/terrace/browser/TinSwipeRefreshLayout$OnResetListener;

    return-void
.end method

.method public setProgressViewOffset(ZII)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mScale:Z

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iput p2, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iput p2, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mOriginalOffsetTop:I

    int-to-float p1, p3

    iput p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mSpinnerFinalOffset:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mUsingCustomStart:Z

    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRefreshing(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mRefreshing:Z

    if-eq v1, p1, :cond_1

    iput-boolean p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mRefreshing:Z

    iget-boolean p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mSpinnerFinalOffset:F

    iget v1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mOriginalOffsetTop:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    :goto_0
    float-to-int p1, p1

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mSpinnerFinalOffset:F

    goto :goto_0

    :goto_1
    iget v1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr p1, v1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    iput-boolean v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mNotify:Z

    iget-object p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_2

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->setRefreshing(ZZ)V

    :goto_2
    return-void
.end method

.method public setSize(I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isWearOs()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 p1, 0x42000000    # 32.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleWidth:I

    iput p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleHeight:I

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/high16 p1, 0x42600000    # 56.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleWidth:I

    iput p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleHeight:I

    goto :goto_0

    :cond_2
    const/high16 p1, 0x42200000    # 40.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleWidth:I

    iput p1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleHeight:I

    :goto_0
    iget-object p0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    sget p1, Lcom/sec/terrace/R$drawable;->pull_to_refresh:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public start()Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mRefreshing:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    sget v2, Lcom/sec/terrace/R$drawable;->pull_to_refresh:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isWearOs()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    sget v2, Lcom/sec/terrace/R$color;->swipe_refresh_background_color_wearos:I

    invoke-virtual {v1, v2}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setBackgroundColorRes(I)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->isHighContrastModeEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->isNightModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    sget v2, Lcom/sec/terrace/R$color;->swipe_refresh_background_color:I

    goto :goto_1

    :cond_4
    :goto_0
    sget v2, Lcom/sec/terrace/R$color;->swipe_refresh_background_color_dark:I

    :goto_1
    invoke-virtual {v1, v2}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setBackgroundColorRes(I)V

    :goto_2
    iget-object v1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mOriginalOffsetTop:I

    iget-object v1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mTotalMotionY:F

    iput-boolean v1, p0, Lcom/sec/terrace/browser/TinSwipeRefreshLayout;->mIsBeingDragged:Z

    return v1
.end method
