.class public Lorg/chromium/ui/resources/dynamics/CaptureUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public static captureCommon(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Rect;FZLorg/chromium/ui/resources/dynamics/CaptureObserver;)Z
    .locals 0

    if-nez p4, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_2

    const/4 p4, 0x0

    goto :goto_1

    :cond_2
    move-object p4, p2

    :goto_1
    invoke-interface {p5, p0, p4}, Lorg/chromium/ui/resources/dynamics/CaptureObserver;->onCaptureStart(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_3

    invoke-virtual {p0, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0, p3, p3}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p1, p0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    invoke-interface {p5}, Lorg/chromium/ui/resources/dynamics/CaptureObserver;->onCaptureEnd()V

    const/4 p0, 0x1

    return p0
.end method

.method public static createBitmap(II)Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
