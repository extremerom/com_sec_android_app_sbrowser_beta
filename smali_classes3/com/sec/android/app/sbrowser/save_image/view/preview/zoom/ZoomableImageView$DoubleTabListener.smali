.class Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView$DoubleTabListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DoubleTabListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView$DoubleTabListener;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView$DoubleTabListener;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;)V

    return-void
.end method

.method private equals(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x38d1b717    # 1.0E-4f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView$DoubleTabListener;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->h(Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "ZoomableImageView"

    const-string v1, "onDoubleTap occurs"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView$DoubleTabListener;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->i(Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView$DoubleTabListener;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView$DoubleTabListener;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->g(Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;)F

    move-result v1

    const/high16 v2, 0x40200000    # 2.5f

    cmpl-float v1, v2, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView$DoubleTabListener;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->g(Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;)F

    move-result v2

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView$DoubleTabListener;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;

    invoke-static {p0, v2, v0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->k(Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;FFF)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView$DoubleTabListener;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->resetScale()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
