.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->createGestureListener()Landroid/view/GestureDetector$SimpleOnGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final mDoubleTapHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->mDoubleTapHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->lambda$onDoubleTap$0()V

    return-void
.end method

.method private synthetic lambda$onDoubleTap$0()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isPlaying()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->togglePlayback(Z)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isLiveTextViewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    div-int/lit8 v2, v0, 0x3

    if-le p1, v2, :cond_4

    mul-int/lit8 v2, v0, 0x2

    div-int/lit8 v2, v2, 0x3

    if-ge p1, v2, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f140d08

    goto :goto_0

    :cond_2
    const p1, 0x7f140d09

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->fullscreen(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isShowingMainView()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->showMainView(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->mDoubleTapHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->mDoubleTapHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/b;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/b;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x32

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isPlaying()Z

    move-result p0

    xor-int/2addr p0, v1

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->togglePlayback(Z)V

    :goto_1
    return v1

    :cond_4
    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_5

    move p1, v1

    goto :goto_2

    :cond_5
    const/4 p1, -0x1

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getCurrentPosition()I

    move-result v2

    mul-int/lit16 v3, p1, 0x2710

    add-int/2addr v3, v2

    invoke-interface {v0, v3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->seekTo(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->showDoubleTapAnimation(I)V

    if-lez p1, :cond_6

    const p1, 0x7f140d07

    goto :goto_3

    :cond_6
    const p1, 0x7f140d06

    :goto_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->fullscreen(Ljava/lang/String;)V

    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isLiveTextViewVisible()Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->startTextSelectionByLongClick(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Landroid/app/Activity;

    move-result-object p0

    const p1, 0x7f140d03

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->fullscreen(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->c(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->d(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Landroid/app/Activity;

    move-result-object p0

    const p1, 0x7f140d04

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->fullscreen(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->toggleMainView()V

    :goto_0
    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isLiveTextViewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->shouldAddLiveText()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->d(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;Z)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
