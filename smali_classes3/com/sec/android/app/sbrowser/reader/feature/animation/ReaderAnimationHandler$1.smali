.class Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler$1;
.super Lcom/sec/android/app/sbrowser/common/animation/AnimationListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->createAnimation()Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler$1;->this$0:Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler$1;->lambda$onAnimationStart$0()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler$1;->lambda$onAnimationEnd$1()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$1()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler$1;->this$0:Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->a(Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;)Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationListener;->onAnimationEnd()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler$1;->this$0:Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->b(Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;)Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;->end()V

    return-void
.end method

.method private synthetic lambda$onAnimationStart$0()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler$1;->this$0:Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->a(Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;)Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationListener;->onAnimationStart()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler$1;->this$0:Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;->b(Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler;)Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/TouchLockupDetector;->start()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/reader/feature/animation/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/reader/feature/animation/a;-><init>(Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler$1;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/reader/feature/animation/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/reader/feature/animation/a;-><init>(Lcom/sec/android/app/sbrowser/reader/feature/animation/ReaderAnimationHandler$1;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
