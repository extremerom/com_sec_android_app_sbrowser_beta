.class Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView$ScaleListener;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView$ScaleListener;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView$ScaleListener;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-static {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->k(Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;FFF)V

    const/4 p0, 0x1

    return p0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView$ScaleListener;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;->j(Lcom/sec/android/app/sbrowser/save_image/view/preview/zoom/ZoomableImageView;)V

    const/4 p0, 0x1

    return p0
.end method
