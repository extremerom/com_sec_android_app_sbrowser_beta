.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController$RecognitionObj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecognitionObj"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mContentRect:Landroid/graphics/Rect;

.field mIsScale:Z


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController$RecognitionObj;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController$RecognitionObj;->mContentRect:Landroid/graphics/Rect;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController$RecognitionObj;->mIsScale:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController$RecognitionObj;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)V

    return-void
.end method
