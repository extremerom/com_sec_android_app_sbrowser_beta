.class Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$ScaleGestureListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScaleGestureListener"
.end annotation


# instance fields
.field private mScaleFactor:F

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$ScaleGestureListener;->this$0:Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$ScaleGestureListener;->mScaleFactor:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$ScaleGestureListener;-><init>(Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$ScaleGestureListener;->mScaleFactor:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$ScaleGestureListener;->mScaleFactor:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3dcccccd    # 0.1f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$ScaleGestureListener;->this$0:Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;->a(Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;)Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$Delegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$Delegate;->hideVideoAssistant()V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$ScaleGestureListener;->mScaleFactor:F

    const/4 p0, 0x1

    return p0
.end method
