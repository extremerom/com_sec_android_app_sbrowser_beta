.class interface abstract Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$ObjectCaptureViewDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ObjectCaptureViewDelegate"
.end annotation


# virtual methods
.method public abstract clearObjectCaptureInfo()V
.end method

.method public getCurrentViewRect()Landroid/graphics/Rect;
    .locals 0

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public abstract getObjBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract onMenuItemClicked(I)V
.end method

.method public abstract onPerformLongClickAtPoint(FF)Z
.end method
