.class public Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;
.super Landroid/animation/ValueAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;
    }
.end annotation


# instance fields
.field private final mListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mStartWidth:I

.field private final mTargetView:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;

.field private final mTargetWidth:I

.field private final mType:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;II)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;->mTargetView:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;->mType:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;

    iput p3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;->mStartWidth:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;->mTargetWidth:I

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$1;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;->mListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;->initializeAnimation()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;->lambda$initializeAnimation$0(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;)Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;->mTargetView:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;)Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;->mType:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;

    return-object p0
.end method

.method private initializeAnimation()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;->mTargetWidth:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;->mStartWidth:I

    sub-int/2addr v0, v1

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/a;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/a;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;I)V

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut70()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;->mListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$initializeAnimation$0(ILandroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;->mTargetView:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;->mType:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;

    iget v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;->mStartWidth:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    add-int/2addr v2, p1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;->onAnimationUpdate(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;->mTargetView:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;->mType:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;

    invoke-interface {p1, p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;->onAnimationUpdate(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;F)V

    return-void
.end method
