.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudGestureDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudGestureDetector$Delegate;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudGestureDetector$GestureListener;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudGestureDetector$ScaleGestureListener;
    }
.end annotation


# instance fields
.field private final mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudGestureDetector$Delegate;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudGestureDetector$Delegate;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudGestureDetector;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudGestureDetector$Delegate;

    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudGestureDetector$GestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudGestureDetector$GestureListener;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudGestureDetector;I)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudGestureDetector$ScaleGestureListener;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudGestureDetector$ScaleGestureListener;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudGestureDetector;I)V

    invoke-direct {p2, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudGestureDetector;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudGestureDetector;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudGestureDetector$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudGestureDetector;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudGestureDetector$Delegate;

    return-object p0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudGestureDetector;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method
