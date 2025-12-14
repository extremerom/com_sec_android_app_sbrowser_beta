.class Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$GestureListener;->this$0:Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$GestureListener;-><init>(Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$GestureListener;->this$0:Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;->a(Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;)Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$Delegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$Delegate;->hideVideoAssistant()V

    const/4 p0, 0x1

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p4, v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float p4, p4, v0

    if-gtz p4, :cond_2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    return p3

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$GestureListener;->this$0:Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;->a(Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;)Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$Delegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$Delegate;->hideVideoAssistant()V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return p3
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$GestureListener;->this$0:Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;->a(Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;)Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$Delegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$Delegate;->showVideoAssistant()V

    const/4 p0, 0x1

    return p0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$GestureListener;->this$0:Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;->a(Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;)Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$Delegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$Delegate;->hideVideoAssistant()V

    const/4 p0, 0x1

    return p0
.end method
