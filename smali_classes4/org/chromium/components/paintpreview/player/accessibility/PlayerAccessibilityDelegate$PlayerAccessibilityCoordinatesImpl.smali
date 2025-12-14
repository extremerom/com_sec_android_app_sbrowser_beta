.class Lorg/chromium/components/paintpreview/player/accessibility/PlayerAccessibilityDelegate$PlayerAccessibilityCoordinatesImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/accessibility/AccessibilityDelegate$AccessibilityCoordinates;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/paintpreview/player/accessibility/PlayerAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerAccessibilityCoordinatesImpl"
.end annotation


# instance fields
.field private final mConstantOffset:Landroid/util/Size;

.field private final mContentSize:Landroid/util/Size;

.field private final mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;


# virtual methods
.method public fromLocalCssToPix(F)F
    .locals 0

    return p1
.end method

.method public getContentHeightCss()F
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/accessibility/PlayerAccessibilityDelegate$PlayerAccessibilityCoordinatesImpl;->mContentSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public getContentOffsetYPix()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getContentWidthCss()F
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/accessibility/PlayerAccessibilityDelegate$PlayerAccessibilityCoordinatesImpl;->mContentSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public getLastFrameViewportHeightPixInt()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/accessibility/PlayerAccessibilityDelegate$PlayerAccessibilityCoordinatesImpl;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {p0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getHeight()I

    move-result p0

    return p0
.end method

.method public getLastFrameViewportWidthPixInt()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/accessibility/PlayerAccessibilityDelegate$PlayerAccessibilityCoordinatesImpl;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {p0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->getWidth()I

    move-result p0

    return p0
.end method

.method public getScrollX()F
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/accessibility/PlayerAccessibilityDelegate$PlayerAccessibilityCoordinatesImpl;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->asRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/accessibility/PlayerAccessibilityDelegate$PlayerAccessibilityCoordinatesImpl;->mConstantOffset:Landroid/util/Size;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method public getScrollY()F
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/accessibility/PlayerAccessibilityDelegate$PlayerAccessibilityCoordinatesImpl;->mViewport:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;

    invoke-virtual {v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameViewport;->asRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/accessibility/PlayerAccessibilityDelegate$PlayerAccessibilityCoordinatesImpl;->mConstantOffset:Landroid/util/Size;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method
