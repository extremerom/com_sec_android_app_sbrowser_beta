.class Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchDelegate;

.field private final mDragHandler:Landroid/os/Handler;

.field private mIsDragStarted:Z

.field private mIsLongClicked:Z

.field private final mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchListener;

.field private final mLongPressHandler:Landroid/os/Handler;

.field private mPendingCheckForDrag:Ljava/lang/Runnable;

.field private mPendingCheckForLongPress:Ljava/lang/Runnable;

.field private mPressDownX:F


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchDelegate;Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchListener;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchDelegate;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchListener;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->mLongPressHandler:Landroid/os/Handler;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->mDragHandler:Landroid/os/Handler;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchDelegate;->getTargetView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/tab_bar/ui/e;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->handleOnTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->lambda$postCheckForDrag$1(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->lambda$postCheckForLongClick$0(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private handleActionCancel()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->removeLongClickCallback()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->removeDragCallback()V

    const/4 p0, 0x0

    return p0
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchDelegate;->isDesktopMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->isMousePrimaryButton(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->isMouseSecondaryButton(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->performLongClick(Landroid/view/MotionEvent;)V

    return v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->isMouseTertiaryButton(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->performClose(Landroid/view/MotionEvent;)V

    return v2

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->postCheckForLongClick(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->postCheckForDrag(Landroid/view/MotionEvent;)V

    return v1
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchDelegate;->isDesktopMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->isMousePrimaryButton(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->performDrag(Landroid/view/MotionEvent;)V

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->isMovedBeforeLongPress(F)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->performDrag(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private handleOnTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->handleActionMove(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->handleActionCancel()Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->mPressDownX:F

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->handleActionDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private isMousePrimaryButton(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isMouseSecondaryButton(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMouseTertiaryButton(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMovedBeforeLongPress(F)Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->mIsLongClicked:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->mIsDragStarted:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->mPressDownX:F

    sub-float/2addr v0, p1

    float-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchDelegate;->getTouchSlop()I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3f4ccccd    # 0.8f

    mul-float/2addr p0, v0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private synthetic lambda$postCheckForDrag$1(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->performDrag(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private synthetic lambda$postCheckForLongClick$0(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->performLongClick(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private performClose(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchListener;->onClose(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private performDrag(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->removeDragCallback()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->mIsDragStarted:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchListener;->onDrag(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private performLongClick(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->removeLongClickCallback()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->mIsLongClicked:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchListener;->onLongClick(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private postCheckForDrag(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->removeDragCallback()V

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/g;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/g;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;Landroid/view/MotionEvent;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->mPendingCheckForDrag:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->mDragHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x514

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postCheckForLongClick(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->removeLongClickCallback()V

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/g;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;Landroid/view/MotionEvent;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->mPendingCheckForLongPress:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->mLongPressHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removeDragCallback()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->mIsDragStarted:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->mDragHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->mPendingCheckForDrag:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeLongClickCallback()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->mIsLongClicked:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->mLongPressHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;->mPendingCheckForLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
