.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureDirection:Z

.field private mGestureMode:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

.field private mIsHorizontalGestureStarted:Z

.field private mIsTextSelected:Z

.field private mIsTouchActionDowned:Z

.field private mIsVerticalGestureStarted:Z

.field private mStatus:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;

.field private final mTouchPoint:Landroid/graphics/Point;

.field private mWasPlaying:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mTouchPoint:Landroid/graphics/Point;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mGestureDirection:Z

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;->UNDEFINED_MODE:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mGestureMode:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mWasPlaying:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mIsVerticalGestureStarted:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mIsHorizontalGestureStarted:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mIsTouchActionDowned:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mIsTextSelected:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mActivity:Landroid/app/Activity;

    new-instance p1, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->createGestureListener()Landroid/view/GestureDetector$SimpleOnGestureListener;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mGestureDetector:Landroid/view/GestureDetector;

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;->ACTIVE:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mStatus:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mIsTextSelected:Z

    return p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mIsTextSelected:Z

    return-void
.end method

.method private onActionCancelAndUp(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mIsTouchActionDowned:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    sget-object v3, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;->UNDEFINED_MODE:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->setGestureMode(Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;)V

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mIsVerticalGestureStarted:Z

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mIsVerticalGestureStarted:Z

    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mIsHorizontalGestureStarted:Z

    if-eqz v2, :cond_2

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mIsHorizontalGestureStarted:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mTouchPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr v2, p1

    int-to-float p1, v2

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr p1, v2

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mGestureMode:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    invoke-interface {v0, v2, p1, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->adjustGestureValue(Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;FZ)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mWasPlaying:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->startVideo()V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mWasPlaying:Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->startRecognizeWithDelay()V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->hideGestureView()V

    return-void
.end method

.method private onActionDown(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mIsTouchActionDowned:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mTouchPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method private onActionMove(Landroid/view/MotionEvent;)V
    .locals 10

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mIsTouchActionDowned:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mTouchPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mTouchPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mTouchPoint:Landroid/graphics/Point;

    iget v7, v6, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v2, 0x2

    if-le v7, v2, :cond_2

    sget-object v2, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;->VOLUME_MODE:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;->BRIGHTNESS_MODE:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    :goto_0
    iget-boolean v7, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mIsVerticalGestureStarted:Z

    const/4 v8, 0x1

    if-nez v7, :cond_5

    iget-boolean v9, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mIsHorizontalGestureStarted:Z

    if-nez v9, :cond_5

    div-int/lit8 v1, v1, 0x8

    iget v0, v6, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_3

    return-void

    :cond_3
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v3, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mTouchPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Point;->set(II)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mGestureMode:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p1, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->setGestureMode(Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mGestureMode:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->showGestureView(Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;)V

    iput-boolean v8, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mIsVerticalGestureStarted:Z

    goto/16 :goto_3

    :cond_4
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v3, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mTouchPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Point;->set(II)V

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;->SEEK_MODE:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mGestureMode:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->setGestureMode(Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mGestureMode:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->showGestureView(Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;)V

    iput-boolean v8, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mIsHorizontalGestureStarted:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isPlaying()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mWasPlaying:Z

    goto :goto_3

    :cond_5
    const/high16 v1, 0x3fc00000    # 1.5f

    if-eqz v7, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v6, v4, p1}, Landroid/graphics/Point;->set(II)V

    if-nez v5, :cond_6

    return-void

    :cond_6
    const/4 p1, 0x0

    if-lez v5, :cond_7

    move v4, p1

    goto :goto_1

    :cond_7
    move v4, v8

    :goto_1
    int-to-float v6, v5

    mul-float/2addr v6, v1

    div-float/2addr v6, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mGestureMode:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    if-ne v0, v2, :cond_9

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mGestureDirection:Z

    if-eq v0, v4, :cond_8

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v3, :cond_8

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mGestureMode:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    invoke-interface {p1, p0, v6, v8}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->adjustGestureValue(Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;FZ)V

    goto :goto_3

    :cond_9
    :goto_2
    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mGestureDirection:Z

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mIsVerticalGestureStarted:Z

    goto :goto_3

    :cond_a
    if-nez v4, :cond_b

    return-void

    :cond_b
    int-to-float p1, v4

    mul-float/2addr p1, v1

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mGestureMode:Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;

    invoke-interface {v0, p0, p1, v8}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->adjustGestureValue(Lcom/sec/android/app/sbrowser/media/player/common/MPConstants$GestureMode;FZ)V

    :cond_c
    :goto_3
    return-void
.end method


# virtual methods
.method public createGestureListener()Landroid/view/GestureDetector$SimpleOnGestureListener;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$1;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;)V

    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mStatus:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;

    sget-object v2, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;->INACTIVE:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;

    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isLiveTextViewVisible()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->onActionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->onActionCancelAndUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->onActionDown(Landroid/view/MotionEvent;)V

    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public enableGestureListener(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;->ACTIVE:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mStatus:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;->INACTIVE:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->mStatus:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener$Status;

    :goto_0
    return-void
.end method

.method public onWindowFocusChange(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenGestureListener;->enableGestureListener(Z)V

    return-void
.end method
