.class abstract Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "InfoBarAnimation"
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;-><init>(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;->lambda$createTranslationYAnimator$0(Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private synthetic lambda$createTranslationYAnimator$0(Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;->c(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout;)Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$FloatingBehavior;->updateShadowPosition()V

    return-void
.end method


# virtual methods
.method public abstract createAnimator()Landroid/animation/Animator;
.end method

.method public createTranslationYAnimator(Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;F)Landroid/animation/ValueAnimator;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/infobars/c;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/infobars/c;-><init>(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p2
.end method

.method public abstract getAnimationType()I
.end method

.method public final isStarted()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;->mAnimator:Landroid/animation/Animator;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAnimationEnd()V
    .locals 0

    return-void
.end method

.method public prepareAnimation()V
    .locals 0

    return-void
.end method

.method public final start()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation$1;-><init>(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;->createAnimator()Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method
