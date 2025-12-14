.class public Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mFocusedChild:Landroid/view/View;

.field private final mInitialNumberOfChildren:I

.field private final mInitialTops:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->mLayout:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->mFocusedChild:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->mInitialNumberOfChildren:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->calculateChildTops()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->mInitialTops:Ljava/util/ArrayList;

    new-instance p2, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$1;

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$1;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->mLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->finishAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->requestChildFocus()V

    return-void
.end method

.method private calculateChildTops()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->startAnimator(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finishAnimation(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->requestChildFocus()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private requestChildFocus()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->mFocusedChild:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    sub-int/2addr p0, v1

    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-le v1, p0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/View;->setScrollY(I)V

    :cond_2
    return-void
.end method

.method private startAnimator(Ljava/lang/Runnable;)V
    .locals 14

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->mInitialNumberOfChildren:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->finishAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->calculateChildTops()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    if-nez v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->mInitialTops:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v5

    if-eqz v5, :cond_1

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    or-int/2addr v4, v5

    add-int/2addr v3, v0

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->finishAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->mInitialTops:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->mInitialTops:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->mInitialTops:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int v9, v6, v7

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->mInitialTops:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->mInitialTops:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int v10, v6, v8

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int v12, v6, v7

    new-instance v13, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$2;

    move-object v6, v13

    move-object v7, p0

    move-object v8, v5

    move v11, v12

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$2;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;Landroid/view/View;III)V

    invoke-virtual {v4, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v6, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$3;

    invoke-direct {v6, p0, v5, v12}, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$3;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;Landroid/view/View;I)V

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_3
    add-int/2addr v2, v0

    goto/16 :goto_2

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;->mInitialTops:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->g(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->g(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    filled-new-array {v2, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$4;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lh2/c;

    invoke-direct {v1}, Lh2/c;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$5;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator$5;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/animation/FocusAnimator;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
