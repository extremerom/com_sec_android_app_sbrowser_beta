.class Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;
.super Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FrontInfoBarAppearingAnimation"
.end annotation


# instance fields
.field private mFrontContents:Landroid/view/View;

.field private mFrontWrapper:Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;-><init>(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;I)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->mFrontContents:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public createAnimator()Landroid/animation/Animator;
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->mFrontWrapper:Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->mFrontContents:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->mFrontWrapper:Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;->createTranslationYAnimator(Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->mFrontContents:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v4, 0x64

    invoke-virtual {p0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v1, v2, v6

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-object v0
.end method

.method public getAnimationType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAnimationEnd()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->d(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;->getAccessibilityText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public prepareAnimation()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->mFrontWrapper:Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->mFrontContents:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FrontInfoBarAppearingAnimation;->mFrontWrapper:Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->h(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;)V

    return-void
.end method
