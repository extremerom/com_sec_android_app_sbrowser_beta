.class Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$1;
.super Lcom/sec/android/app/sbrowser/common/animation/AnimationListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorDelegate;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$1;->this$0:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$1;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$1;->this$0:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->e(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;)Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$1;->this$0:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->e(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;)Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorListener;->onAnimationEnd()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$1;->this$0:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->f(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$1;->this$0:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->removeAnimationLayout()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$1;->this$0:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->g(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/main_view/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/main_view/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$1;->this$0:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->e(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;)Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$1;->this$0:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->e(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;)Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorListener;->onAnimationStarted()V

    :cond_0
    return-void
.end method
