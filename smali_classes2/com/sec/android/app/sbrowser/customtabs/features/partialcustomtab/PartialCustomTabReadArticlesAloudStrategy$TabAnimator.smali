.class Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy$TabAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabAnimator"
.end annotation


# instance fields
.field private final mAnimator:Landroid/animation/ValueAnimator;

.field private mTargetStatus:I


# direct methods
.method private constructor <init>(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILjava/lang/Runnable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy$TabAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy$TabAnimator$1;

    invoke-direct {v1, p0, p3}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy$TabAnimator$1;-><init>(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy$TabAnimator;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p0, p2

    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy;ILcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/l;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy$TabAnimator;-><init>(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILjava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy$TabAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy$TabAnimator;->cancel()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy$TabAnimator;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy$TabAnimator;->getTargetStatus()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy$TabAnimator;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy$TabAnimator;->start(III)V

    return-void
.end method

.method private cancel()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy$TabAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method private getTargetStatus()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy$TabAnimator;->mTargetStatus:I

    return p0
.end method

.method private start(III)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy$TabAnimator;->mTargetStatus:I

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy$TabAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    filled-new-array {p1, p2}, [I

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabReadArticlesAloudStrategy$TabAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
