.class Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener$GestureState;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategy$DragEventCallback;

.field private final mIsFullyExpanded:Ljava/util/function/BooleanSupplier;

.field private mState:I

.field private final mTab:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/sec/android/app/sbrowser/tab/Tab;",
            ">;"
        }
    .end annotation
.end field

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategy$DragEventCallback;Ljava/util/function/BooleanSupplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/sec/android/app/sbrowser/tab/Tab;",
            ">;",
            "Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategy$DragEventCallback;",
            "Ljava/util/function/BooleanSupplier;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;->mTab:Ljava/util/function/Supplier;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;->mCallback:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategy$DragEventCallback;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;->mIsFullyExpanded:Ljava/util/function/BooleanSupplier;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;->mState:I

    return-void
.end method

.method private getFlingDistance(F)I
    .locals 0

    const/high16 p0, 0x435a0000    # 218.0f

    mul-float/2addr p1, p0

    const/high16 p0, 0x44fa0000    # 2000.0f

    div-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private isContentScrolledToTop()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;->mTab:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isContentScrolledToTop()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private startContentScrolling(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;->mState:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;->mTab:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method private startTabDragging(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;->mCallback:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategy$DragEventCallback;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategy$DragEventCallback;->onDragStart(I)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;->mState:I

    return-void
.end method


# virtual methods
.method public getStateForTesting()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;->mState:I

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;->mState:I

    const/4 p0, 0x1

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;->mState:I

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;->mCallback:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategy$DragEventCallback;

    invoke-direct {p0, p4}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;->getFlingDistance(F)I

    move-result p4

    invoke-interface {p1, p4}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategy$DragEventCallback;->onDragEnd(I)Z

    iput p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;->mState:I

    return p3

    :cond_1
    :goto_0
    return p2
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;->mState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    if-ne p1, v2, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;->isContentScrolledToTop()Z

    move-result v4

    const/4 v5, 0x0

    cmpl-float v6, p4, v5

    if-lez v6, :cond_3

    move v6, v2

    goto :goto_2

    :cond_3
    move v6, v0

    :goto_2
    cmpg-float v7, p4, v5

    if-gez v7, :cond_4

    move v7, v2

    goto :goto_3

    :cond_4
    move v7, v0

    :goto_3
    if-eqz v3, :cond_5

    if-eqz v7, :cond_5

    if-eqz v4, :cond_5

    iput v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;->mState:I

    move p1, v0

    :cond_5
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    if-lez v3, :cond_6

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    div-float/2addr p4, p3

    goto :goto_4

    :cond_6
    move p4, v5

    :goto_4
    if-nez p1, :cond_7

    cmpg-float p3, p4, v5

    if-gez p3, :cond_7

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    return v0

    :cond_7
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p3, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;->mIsFullyExpanded:Ljava/util/function/BooleanSupplier;

    invoke-interface {p3}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p3

    if-eqz p3, :cond_9

    if-nez v6, :cond_8

    if-nez v4, :cond_a

    :cond_8
    if-eqz p1, :cond_a

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;->startContentScrolling(Landroid/view/MotionEvent;)V

    goto :goto_5

    :cond_9
    if-eqz v7, :cond_a

    iget p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;->mState:I

    if-nez p1, :cond_a

    iput v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;->mState:I

    :cond_a
    :goto_5
    iget p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;->mState:I

    if-eqz p1, :cond_c

    if-eq p1, v2, :cond_b

    goto :goto_6

    :cond_b
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;->mCallback:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategy$DragEventCallback;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategy$DragEventCallback;->onDragMove(I)V

    goto :goto_6

    :cond_c
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/ContentGestureListener;->startTabDragging(Landroid/view/MotionEvent;)V

    :goto_6
    return v2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method
