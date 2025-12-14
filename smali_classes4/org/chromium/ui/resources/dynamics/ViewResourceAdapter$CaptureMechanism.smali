.class public interface abstract Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter$CaptureMechanism;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureMechanism"
.end annotation


# virtual methods
.method public onViewSizeChange(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public abstract startBitmapCapture(Landroid/view/View;Landroid/graphics/Rect;FLorg/chromium/ui/resources/dynamics/CaptureObserver;Lorg/chromium/base/Callback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "F",
            "Lorg/chromium/ui/resources/dynamics/CaptureObserver;",
            "Lorg/chromium/base/Callback<",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation
.end method
