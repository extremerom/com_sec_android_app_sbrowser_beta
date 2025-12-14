.class Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarDisappearingAnimation;
.super Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InfoBarDisappearingAnimation"
.end annotation


# instance fields
.field private mDisappearingWrapper:Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarDisappearingAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;-><init>(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarDisappearingAnimation;-><init>(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)V

    return-void
.end method


# virtual methods
.method public createAnimator()Landroid/animation/Animator;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarDisappearingAnimation;->mDisappearingWrapper:Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;->createTranslationYAnimator(Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;F)Landroid/animation/ValueAnimator;

    move-result-object p0

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public getAnimationType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public onAnimationEnd()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarDisappearingAnimation;->mDisappearingWrapper:Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarDisappearingAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarDisappearingAnimation;->mDisappearingWrapper:Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->k(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;)V

    return-void
.end method

.method public prepareAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarDisappearingAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->e(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarDisappearingAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->e(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarDisappearingAnimation;->mDisappearingWrapper:Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    return-void
.end method
