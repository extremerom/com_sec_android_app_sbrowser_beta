.class public Lorg/chromium/components/paintpreview/player/frame/PlayerFrameView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mBitmapPainter:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;

.field private mDelegate:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewDelegate;

.field private mGestureDetector:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;

.field private mOffset:Landroid/graphics/Matrix;

.field private mScaleMatrix:Landroid/graphics/Matrix;

.field protected mWebContentsAccessibility:Lorg/chromium/content_public/browser/WebContentsAccessibility;


# virtual methods
.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameView;->mWebContentsAccessibility:Lorg/chromium/content_public/browser/WebContentsAccessibility;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContentsAccessibility;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-super {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getGestureDetector()Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameView;->mGestureDetector:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;

    return-object p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameView;->mOffset:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameView;->mBitmapPainter:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;

    invoke-virtual {p0, p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapPainter;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameView;->mWebContentsAccessibility:Lorg/chromium/content_public/browser/WebContentsAccessibility;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameView;->mWebContentsAccessibility:Lorg/chromium/content_public/browser/WebContentsAccessibility;

    invoke-interface {p0, p1}, Lorg/chromium/content_public/browser/WebContentsAccessibility;->onHoverEventNoRenderer(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameView;->mDelegate:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewDelegate;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-interface {p1, p2, p0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewDelegate;->setLayoutDimensions(II)V

    return-void
.end method

.method public onProvideVirtualStructure(Landroid/view/ViewStructure;)V
    .locals 1

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameView;->mWebContentsAccessibility:Lorg/chromium/content_public/browser/WebContentsAccessibility;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lorg/chromium/content_public/browser/WebContentsAccessibility;->onProvideVirtualStructure(Landroid/view/ViewStructure;Z)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameView;->mGestureDetector:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;

    invoke-virtual {p0, p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setWebContentsAccessibility(Lorg/chromium/content_public/browser/WebContentsAccessibility;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameView;->mWebContentsAccessibility:Lorg/chromium/content_public/browser/WebContentsAccessibility;

    return-void
.end method
