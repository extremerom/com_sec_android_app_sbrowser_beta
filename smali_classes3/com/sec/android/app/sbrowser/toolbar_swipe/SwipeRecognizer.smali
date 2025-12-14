.class public final Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer$Companion;,
        Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer$SwipeRecognizerHandler;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0007\u0018\u0000 <2\u00020\u0001:\u0002<=B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0015\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\r\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0015\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0015\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J1\u0010\u001e\u001a\u00020\u00102\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ1\u0010\"\u001a\u00020\u00102\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u001b\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u00082\u0006\u0010!\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\"\u0010\u001fJ\u0015\u0010$\u001a\u00020\u000b2\u0006\u0010#\u001a\u00020\u0008\u00a2\u0006\u0004\u0008$\u0010%J\r\u0010&\u001a\u00020\u0010\u00a2\u0006\u0004\u0008&\u0010\'R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010(R\u0014\u0010*\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0014\u0010-\u001a\u00020,8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0014\u00100\u001a\u00020/8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0016\u00102\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u001c\u00104\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u000c\n\u0004\u00084\u0010.\u0012\u0004\u00085\u0010\u0015R\u0016\u0010&\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u00103R\u0016\u00106\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00103R\u0016\u00107\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u0010.R\u0016\u00108\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0014\u0010:\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u00109R\u0016\u0010;\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010.\u00a8\u0006>"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "Landroid/content/Context;",
        "context",
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer$SwipeRecognizerHandler;",
        "handler",
        "<init>",
        "(Landroid/content/Context;Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer$SwipeRecognizerHandler;)V",
        "",
        "opposite",
        "adjacent",
        "",
        "calculateAngle",
        "(FF)D",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "dispatchTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "Ldb/r;",
        "reset",
        "()V",
        "enable",
        "setSwipeEnabled",
        "(Z)V",
        "setHighSensitivity",
        "e1",
        "e2",
        "distanceX",
        "distanceY",
        "onScroll",
        "(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z",
        "velocityX",
        "velocityY",
        "onFling",
        "velocity",
        "computeFlingDistance",
        "(F)D",
        "isSwipeStarted",
        "()Z",
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer$SwipeRecognizerHandler;",
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;",
        "flingDistance",
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;",
        "",
        "minimumVelocity",
        "I",
        "Landroid/view/GestureDetector;",
        "gestureDetector",
        "Landroid/view/GestureDetector;",
        "isEnabled",
        "Z",
        "swipeDirection",
        "getSwipeDirection$annotations",
        "isSwipePrepared",
        "lastEventAction",
        "threshold",
        "F",
        "pxToDp",
        "lastAction",
        "Companion",
        "SwipeRecognizerHandler",
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


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final flingDistance:Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final gestureDetector:Landroid/view/GestureDetector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final handler:Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer$SwipeRecognizerHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isEnabled:Z

.field private isSwipePrepared:Z

.field private isSwipeStarted:Z

.field private lastAction:I

.field private lastEventAction:I

.field private final minimumVelocity:I

.field private final pxToDp:F

.field private swipeDirection:I

.field private threshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->Companion:Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer$SwipeRecognizerHandler;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer$SwipeRecognizerHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->handler:Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer$SwipeRecognizerHandler;

    new-instance p2, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->flingDistance:Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->minimumVelocity:I

    new-instance p2, Landroid/view/GestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->gestureDetector:Landroid/view/GestureDetector;

    const/4 p2, -0x1

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->lastEventAction:I

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->threshold:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->pxToDp:F

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->lastAction:I

    return-void
.end method

.method private final calculateAngle(FF)D
    .locals 2

    div-float/2addr p1, p2

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final computeFlingDistance(F)D
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->flingDistance:Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/FlingDistance;->getFlingDistance(F)D

    move-result-wide p0

    return-wide p0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->isEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->lastAction:I

    if-eq v2, v0, :cond_1

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->lastAction:I

    const-string v2, "dispatchTouchEvent. action: "

    const-string v3, "SwipeRecognizer"

    invoke-static {v0, v2, v3}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez v0, :cond_2

    iget v2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->lastEventAction:I

    if-nez v2, :cond_2

    return v1

    :cond_2
    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->lastEventAction:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->isSwipeStarted:Z

    const/4 v3, 0x1

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    :goto_0
    if-eqz v2, :cond_5

    iget v2, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->swipeDirection:I

    if-eqz v2, :cond_5

    if-eq v0, v3, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->reset()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->handler:Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer$SwipeRecognizerHandler;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer$SwipeRecognizerHandler;->onSwipeEnd(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_5
    move v3, v1

    :goto_1
    return v3
.end method

.method public final isSwipeStarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->isSwipeStarted:Z

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e2"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->minimumVelocity:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->handler:Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer$SwipeRecognizerHandler;

    invoke-interface {v0, p3}, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer$SwipeRecognizerHandler;->onFlingOccurred(F)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p3, "e2"

    invoke-static {p2, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    iget p4, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->swipeDirection:I

    if-eqz p4, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    sub-float/2addr p4, v0

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->pxToDp:F

    mul-float/2addr p4, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->pxToDp:F

    mul-float/2addr v0, v1

    invoke-direct {p0, v0, p4}, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->calculateAngle(FF)D

    move-result-wide v0

    const-wide v2, 0x4041800000000000L    # 35.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    return p3

    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    const/4 v1, 0x1

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->isSwipePrepared:Z

    const-wide/16 v5, 0x118

    if-nez v4, :cond_3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v7, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->threshold:F

    const/high16 v8, 0x40a00000    # 5.0f

    div-float/2addr v7, v8

    cmpl-float v4, v4, v7

    if-lez v4, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-gez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->handler:Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer$SwipeRecognizerHandler;

    invoke-interface {v4, v0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer$SwipeRecognizerHandler;->onSwipePrepared(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->isSwipePrepared:Z

    :cond_3
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    iget v4, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->threshold:F

    cmpl-float p4, p4, v4

    if-lez p4, :cond_4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long p4, v2, v5

    if-gez p4, :cond_4

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->isSwipeStarted:Z

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->isSwipePrepared:Z

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->swipeDirection:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->handler:Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer$SwipeRecognizerHandler;

    invoke-interface {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer$SwipeRecognizerHandler;->onSwipeStarted(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    return v1

    :cond_4
    :goto_1
    return p3
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->isSwipeStarted:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->isSwipePrepared:Z

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->swipeDirection:I

    return-void
.end method

.method public final setHighSensitivity(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/high16 p1, 0x40a00000    # 5.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x41700000    # 15.0f

    :goto_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->threshold:F

    return-void
.end method

.method public final setSwipeEnabled(Z)V
    .locals 2

    const-string v0, "setSwipeEnabled: "

    const-string v1, "SwipeRecognizer"

    invoke-static {v0, v1, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar_swipe/SwipeRecognizer;->isEnabled:Z

    return-void
.end method
