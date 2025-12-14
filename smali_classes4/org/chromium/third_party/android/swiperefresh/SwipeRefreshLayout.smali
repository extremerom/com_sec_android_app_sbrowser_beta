.class public Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnRefreshListener;,
        Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnResetListener;
    }
.end annotation


# static fields
.field public static final DEFAULT:I = 0x1

.field public static final LARGE:I

.field private static final LAYOUT_ATTRS:[I

.field private static MIN_PULLS_TO_ACTIVATE:I


# instance fields
.field private final mAnimateToCorrectPosition:Landroid/view/animation/Animation;

.field private final mAnimateToStartPosition:Landroid/view/animation/Animation;

.field private mCancelAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCircleHeight:I

.field private mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

.field private mCircleViewIndex:I

.field private mCircleWidth:I

.field private mCurrentTargetOffsetTop:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mFrom:I

.field private mIsBeingDragged:Z

.field private mListener:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnRefreshListener;

.field private mMediumAnimationDuration:I

.field private mNotify:Z

.field private mOriginalOffsetCalculated:Z

.field protected mOriginalOffsetTop:I

.field private mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

.field private mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

.field private mRefreshing:Z

.field private mResetListener:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnResetListener;

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

    sput-object v0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    const/4 v0, 0x3

    sput v0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->MIN_PULLS_TO_ACTIVATE:I

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Lorg/chromium/third_party/android/swiperefresh/CircleImageView;
    .locals 0

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    return-object p0
.end method

.method private animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    iput p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mFrom:I

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1, p2}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    iget-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mFrom:I

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1, p2}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public static bridge synthetic b(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnRefreshListener;
    .locals 0

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mListener:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnRefreshListener;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mNotify:Z

    return p0
.end method

.method public static bridge synthetic d(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;
    .locals 0

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    return-object p0
.end method

.method public static bridge synthetic e(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Landroid/view/animation/Animation$AnimationListener;
    .locals 0

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    return-object p0
.end method

.method public static bridge synthetic f(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mRefreshing:Z

    return p0
.end method

.method public static bridge synthetic g(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScale:Z

    return p0
.end method

.method public static bridge synthetic h(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)F
    .locals 0

    iget p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    return p0
.end method

.method public static bridge synthetic i(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)F
    .locals 0

    iget p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mStartingScale:F

    return p0
.end method

.method public static bridge synthetic j(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mUsingCustomStart:Z

    return p0
.end method

.method public static bridge synthetic k(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;I)V
    .locals 0

    iput p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    return-void
.end method

.method public static bridge synthetic l(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->moveToStart(F)V

    return-void
.end method

.method public static bridge synthetic m(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setAnimationProgress(F)V

    return-void
.end method

.method private moveToStart(F)V
    .locals 2

    iget v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mFrom:I

    iget v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-direct {p0, v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    return-void
.end method

.method public static bridge synthetic n(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    return-void
.end method

.method public static bridge synthetic o(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private setAnimationProgress(F)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private setColorViewAlpha(I)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setAlpha(I)V

    return-void
.end method

.method private setRefreshing(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mRefreshing:Z

    if-eq v0, p1, :cond_1

    iput-boolean p2, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mNotify:Z

    iput-boolean p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mRefreshing:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iget-object p2, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1, p2}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setTargetOffsetTopAndBottom(I)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    return-void
.end method

.method private startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$3;

    invoke-direct {v0, p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$3;-><init>(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)V

    iput-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_0
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    iput p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mFrom:I

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    iput p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mStartingScale:F

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    if-nez p1, :cond_0

    new-instance p1, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$7;

    invoke-direct {p1, p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$7;-><init>(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)V

    iput-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1, p2}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setAlpha(I)V

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$2;

    invoke-direct {v0, p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$2;-><init>(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)V

    iput-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mMediumAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

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

    iget p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleViewIndex:I

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

.method public onLayout(ZIIII)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p2, p2, 0x2

    sub-int p5, p1, p2

    iget p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    add-int/2addr p1, p2

    add-int/2addr p3, p0

    invoke-virtual {p4, p5, p0, p1, p3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    iget p2, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleWidth:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleHeight:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    iget-boolean p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    const p2, 0x3f866666    # 1.05f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iput p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleViewIndex:I

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    if-ne p2, v0, :cond_1

    iput p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleViewIndex:I

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public pull(F)V
    .locals 12

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    iget v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mTotalDragDistance:F

    sget v2, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->MIN_PULLS_TO_ACTIVATE:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    neg-float v2, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mTotalMotionY:F

    add-float/2addr v1, p1

    iput v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mTotalMotionY:F

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->showArrow(Z)V

    iget p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mTotalDragDistance:F

    div-float p1, v1, p1

    const/4 v2, 0x0

    cmpg-float v3, p1, v2

    if-gez v3, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-double v4, p1

    const-wide v6, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, 0x40a00000    # 5.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mTotalDragDistance:F

    sub-float/2addr v5, v6

    iget-boolean v6, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-eqz v6, :cond_3

    iget v6, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    iget v7, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    goto :goto_0

    :cond_3
    iget v6, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    :goto_0
    const/high16 v7, 0x40000000    # 2.0f

    mul-float v8, v6, v7

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    div-float/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/high16 v8, 0x40800000    # 4.0f

    div-float/2addr v5, v8

    float-to-double v8, v5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    sub-double/2addr v8, v10

    double-to-float v5, v8

    mul-float/2addr v5, v7

    mul-float v8, v6, v5

    mul-float/2addr v8, v7

    iget v9, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    mul-float/2addr v6, p1

    add-float/2addr v6, v8

    float-to-int v6, v6

    add-int/2addr v9, v6

    iget-object v6, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-boolean v6, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScale:Z

    if-nez v6, :cond_5

    iget-object v6, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v6, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v6, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v6, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_5
    iget v6, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mTotalDragDistance:F

    cmpg-float v8, v1, v6

    if-gez v8, :cond_6

    iget-boolean v8, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScale:Z

    if-eqz v8, :cond_6

    div-float/2addr v1, v6

    invoke-direct {p0, v1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setAnimationProgress(F)V

    :cond_6
    const v1, 0x3f4ccccd    # 0.8f

    mul-float v6, v4, v1

    iget-object v8, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v8, v2, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setStartEndTrim(FF)V

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-virtual {v1, v6}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setArrowScale(F)V

    const v1, 0x3f666666    # 0.9f

    sub-float/2addr p1, v1

    const v1, 0x3dcccccd    # 0.1f

    div-float/2addr p1, v1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v1, 0x43330000    # 179.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x4c

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v1, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setAlpha(I)V

    const p1, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, p1

    const/high16 p1, -0x41800000    # -0.25f

    add-float/2addr v4, p1

    mul-float/2addr v5, v7

    add-float/2addr v5, v4

    mul-float/2addr v5, v0

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {p1, v5}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setProgressRotation(F)V

    iget p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v9, p1

    invoke-direct {p0, v9}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    return-void
.end method

.method public release(Z)V
    .locals 3

    iget-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    iget v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mTotalMotionY:F

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mTotalDragDistance:F

    cmpl-float p1, v1, p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setRefreshing(ZZ)V

    return-void

    :cond_1
    iput-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mRefreshing:Z

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setStartEndTrim(FF)V

    iget-boolean p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScale:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCancelAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-nez p1, :cond_2

    new-instance p1, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$4;

    invoke-direct {p1, p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$4;-><init>(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;)V

    iput-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCancelAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    :cond_2
    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCancelAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iget v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    invoke-direct {p0, v1, p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {p0, v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->showArrow(Z)V

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    invoke-direct {p0, v0, v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setRefreshing(ZZ)V

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->stop()V

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setColorViewAlpha(I)V

    iget-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mScale:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setAnimationProgress(F)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    :goto_0
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mResetListener:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnResetListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnResetListener;->onReset()V

    :cond_1
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setColorSchemeColors([I)V

    return-void
.end method

.method public setOnRefreshListener(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnRefreshListener;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mListener:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnRefreshListener;

    return-void
.end method

.method public setOnResetListener(Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnResetListener;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mResetListener:Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout$OnResetListener;

    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/CircleImageView;->setBackgroundColor(I)V

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setBackgroundColor(I)V

    return-void
.end method

.method public setRefreshing(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mRefreshing:Z

    if-eq v1, p1, :cond_1

    iput-boolean p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mRefreshing:Z

    iget-boolean p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mUsingCustomStart:Z

    if-nez p1, :cond_0

    iget p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    iget v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    :goto_0
    float-to-int p1, p1

    goto :goto_1

    :cond_0
    iget p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    goto :goto_0

    :goto_1
    iget v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr p1, v1

    invoke-direct {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    iput-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mNotify:Z

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_2

    :cond_1
    invoke-direct {p0, p1, v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setRefreshing(ZZ)V

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

    if-nez p1, :cond_1

    const/high16 v1, 0x42600000    # 56.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleWidth:I

    iput v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleHeight:I

    goto :goto_0

    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleWidth:I

    iput v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleHeight:I

    :goto_0
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->updateSizes(I)V

    iget-object p1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public start()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mRefreshing:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    invoke-virtual {v0}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->stop()V

    iget v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    iget-object v1, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mCircleView:Lorg/chromium/third_party/android/swiperefresh/CircleImageView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mTotalMotionY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mIsBeingDragged:Z

    iget-object p0, p0, Lorg/chromium/third_party/android/swiperefresh/SwipeRefreshLayout;->mProgress:Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;

    const/16 v1, 0x4c

    invoke-virtual {p0, v1}, Lorg/chromium/third_party/android/swiperefresh/MaterialProgressDrawable;->setAlpha(I)V

    return v0
.end method
