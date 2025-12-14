.class Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;
.super Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FrontInfoBarSwapContentsAnimation"
.end annotation


# instance fields
.field private mFrontWrapper:Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

.field private mNewContents:Landroid/view/View;

.field private mOldContents:Landroid/view/View;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;-><init>(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;I)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->mNewContents:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public createAnimator()Landroid/animation/Animator;
    .locals 11

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->mNewContents:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->mOldContents:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->mNewContents:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->mOldContents:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v7, v6, [F

    aput v3, v7, v2

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v7, 0xc8

    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    neg-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    new-array v10, v6, [F

    aput v0, v10, v2

    invoke-static {v4, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v9, 0xfa

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->mNewContents:Landroid/view/View;

    new-array v4, v6, [F

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v4, v2

    invoke-static {p0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v3, v4, v2

    aput-object v0, v4, v6

    const/4 v0, 0x2

    aput-object p0, v4, v0

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-object v1
.end method

.method public getAnimationType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onAnimationEnd()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->mFrontWrapper:Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->d(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;->setControlsEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->d(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;->getAccessibilityText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public prepareAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->e(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->mFrontWrapper:Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->mOldContents:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->mFrontWrapper:Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarSwapContentsAnimation;->mNewContents:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
