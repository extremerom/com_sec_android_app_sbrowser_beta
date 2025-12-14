.class public interface abstract Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate$CompositorListener;,
        Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate$Factory;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract cancelAllBitmapRequests()V
.end method

.method public abstract cancelBitmapRequest(I)Z
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public abstract onClick(Lorg/chromium/base/UnguessableToken;II)Lorg/chromium/url/GURL;
.end method

.method public abstract requestBitmap(Landroid/graphics/Rect;FLorg/chromium/base/Callback;Ljava/lang/Runnable;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "F",
            "Lorg/chromium/base/Callback<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/Runnable;",
            ")I"
        }
    .end annotation
.end method

.method public abstract requestBitmap(Lorg/chromium/base/UnguessableToken;Landroid/graphics/Rect;FLorg/chromium/base/Callback;Ljava/lang/Runnable;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/UnguessableToken;",
            "Landroid/graphics/Rect;",
            "F",
            "Lorg/chromium/base/Callback<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/Runnable;",
            ")I"
        }
    .end annotation
.end method
