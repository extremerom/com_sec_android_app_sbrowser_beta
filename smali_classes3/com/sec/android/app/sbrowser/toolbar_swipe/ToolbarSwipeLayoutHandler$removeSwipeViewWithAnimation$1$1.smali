.class public final Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler$removeSwipeViewWithAnimation$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->removeSwipeViewWithAnimation(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "com/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler$removeSwipeViewWithAnimation$1$1",
        "Landroid/animation/Animator$AnimatorListener;",
        "Landroid/animation/Animator;",
        "animation",
        "Ldb/r;",
        "onAnimationStart",
        "(Landroid/animation/Animator;)V",
        "onAnimationEnd",
        "onAnimationCancel",
        "onAnimationRepeat",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $endAction:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler$removeSwipeViewWithAnimation$1$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler$removeSwipeViewWithAnimation$1$1;->$endAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler$removeSwipeViewWithAnimation$1$1;->onAnimationEnd$lambda$0(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final onAnimationEnd$lambda$0(Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;->removeSwipeView()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "animation"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler$removeSwipeViewWithAnimation$1$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeLayoutHandler$removeSwipeViewWithAnimation$1$1;->$endAction:Ljava/lang/Runnable;

    new-instance v1, LGa/d;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, p0}, LGa/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "animation"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "animation"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
