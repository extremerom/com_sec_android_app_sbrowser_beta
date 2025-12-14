.class Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$Delegate;,
        Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$ScaleGestureListener;,
        Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$GestureListener;
    }
.end annotation


# instance fields
.field private final mDelegate:Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$Delegate;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$Delegate;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;->mDelegate:Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$Delegate;

    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$ScaleGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$ScaleGestureListener;-><init>(Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;I)V

    invoke-direct {p2, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$GestureListener;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$GestureListener;-><init>(Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;I)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;)Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;->mDelegate:Lcom/sec/android/app/sbrowser/media/MediaGestureDetector$Delegate;

    return-object p0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/MediaGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method
