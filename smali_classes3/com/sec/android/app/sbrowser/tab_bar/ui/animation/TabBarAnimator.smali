.class public Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mAnimationDuration:J

.field private final mAnimators:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;->mAnimators:Ljava/util/LinkedList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c00ba

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;->mAnimationDuration:J

    return-void
.end method

.method private createAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;I)Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;->getAnimationViewWidth()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;II)V

    return-object v0
.end method


# virtual methods
.method public abortAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;->mCurrentAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;->mCurrentAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;->mCurrentAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public addDeleteAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;)Z
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[addDeleteAnimation] : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabBarAnimator"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;->DELETE:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;->createAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;I)Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;->mAnimators:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addResizeAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;I)Z
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;->getAnimationViewWidth()I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[addResizeAnimation] : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | currentWidth : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;->getAnimationViewWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | targetWidth : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabBarAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;->RESIZE:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;->createAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;I)Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;->mAnimators:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public clearAnimations()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;->mAnimators:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public getAnimationCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;->mAnimators:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    return p0
.end method

.method public isAnimating()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;->mCurrentAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public startAnimations(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;->abortAnimations()V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;->mCurrentAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;->mAnimators:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;->mCurrentAnimatorSet:Landroid/animation/AnimatorSet;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;->mAnimationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;->mCurrentAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;->mCurrentAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimator;->clearAnimations()V

    return-void
.end method
