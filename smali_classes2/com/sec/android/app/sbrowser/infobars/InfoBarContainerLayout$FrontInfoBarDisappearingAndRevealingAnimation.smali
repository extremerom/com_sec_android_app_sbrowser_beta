.class Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;
.super Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FrontInfoBarDisappearingAndRevealingAnimation"
.end annotation


# instance fields
.field private mNewFrontContents:Landroid/view/View;

.field private mNewFrontWrapper:Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

.field private mOldFrontWrapper:Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;-><init>(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;I)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mNewFrontContents:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public createAnimator()Landroid/animation/Animator;
    .locals 10

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mNewFrontWrapper:Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->b(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mOldFrontWrapper:Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    const-string v1, "FrontInfoBarDisappearing in tablet: Delta Height: "

    const-string v2, "InfoBarContainerLayout"

    invoke-static {v0, v1, v2}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mNewFrontWrapper:Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->f(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    neg-int v0, v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mOldFrontWrapper:Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    int-to-float v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mOldFrontWrapper:Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v1, v6

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;->createTranslationYAnimator(Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v6, 0xfa

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/4 v1, 0x1

    move v4, v1

    :goto_0
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-static {v8}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->e(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-static {v8}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->e(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    invoke-virtual {v8, v5}, Landroid/view/View;->setTranslationY(F)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-static {v8}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->e(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    int-to-float v9, v0

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;->createTranslationYAnimator(Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;F)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/2addr v4, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mNewFrontContents:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mNewFrontContents:Landroid/view/View;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v6, v7}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    return-object v2
.end method

.method public getAnimationType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public onAnimationEnd()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mOldFrontWrapper:Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mOldFrontWrapper:Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->k(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->e(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->e(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->d(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;->getAccessibilityText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public prepareAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->e(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mOldFrontWrapper:Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->e(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mNewFrontWrapper:Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarDisappearingAndRevealingAnimation;->mNewFrontContents:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
