.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController$1;
.super Lcom/sec/android/app/sbrowser/media/player/common/MPWindowCallbackWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->initializeWindowCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/media/player/common/MPWindowCallbackWrapper;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->i(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->g(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->e(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;)Landroid/view/Window$Callback;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->i(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->dispatchAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->i(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->k()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onWindowFocusChanged, there is no MPFullscreenMainView."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->j(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->g(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenKeyEventListener;->onWindowFocusChange(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->f(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->onWindowFocusChange(Z)V

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->i(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->updateRotationButton()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->i(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->updateVolumeButton()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->h(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;)Lcom/sec/android/app/sbrowser/media/common/IMPManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/common/IMPManager;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->h(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;)Lcom/sec/android/app/sbrowser/media/common/IMPManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/common/IMPManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->isLocked()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->setNavBarVisibility(Landroid/app/Activity;Z)V

    :cond_2
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->resetOrientation(Landroid/app/Activity;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->isInGestureMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->i(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->i(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hideVolumeView()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;->i(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenMainController;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenMainView;->hideGestureView()V

    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/common/MPWindowCallbackWrapper;->onWindowFocusChanged(Z)V

    return-void
.end method
