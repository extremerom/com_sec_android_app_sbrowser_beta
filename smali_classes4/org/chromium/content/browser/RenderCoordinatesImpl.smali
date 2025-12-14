.class public Lorg/chromium/content/browser/RenderCoordinatesImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/RenderCoordinates;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static sInstanceForTesting:Lorg/chromium/content/browser/RenderCoordinatesImpl;


# instance fields
.field private mBottomShownPix:F

.field private mContentHeightCss:F

.field private mContentWidthCss:F

.field private mDeviceScaleFactor:F

.field private mLastFrameViewportHeightCss:F

.field private mLastFrameViewportWidthCss:F

.field private mMaxPageScaleFactor:F

.field private mMinPageScaleFactor:F

.field private mPageScaleFactor:F

.field private mScrollXCss:F

.field private mScrollYCss:F

.field private mTopContentOffsetYPix:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mPageScaleFactor:F

    iput v0, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mMinPageScaleFactor:F

    iput v0, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mMaxPageScaleFactor:F

    iput v0, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mDeviceScaleFactor:F

    return-void
.end method

.method public static fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/RenderCoordinatesImpl;
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->sInstanceForTesting:Lorg/chromium/content/browser/RenderCoordinatesImpl;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    check-cast p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    return-object p0
.end method

.method private getContentHeightPix()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mContentHeightCss:F

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->fromLocalCssToPix(F)F

    move-result p0

    return p0
.end method

.method private getContentWidthPix()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mContentWidthCss:F

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->fromLocalCssToPix(F)F

    move-result p0

    return p0
.end method

.method private getLastFrameViewportHeightPix()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mLastFrameViewportHeightCss:F

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->fromLocalCssToPix(F)F

    move-result p0

    return p0
.end method

.method private getLastFrameViewportWidthPix()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mLastFrameViewportWidthCss:F

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->fromLocalCssToPix(F)F

    move-result p0

    return p0
.end method


# virtual methods
.method public fromLocalCssToPix(F)F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mPageScaleFactor:F

    mul-float/2addr p1, v0

    iget p0, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mDeviceScaleFactor:F

    mul-float/2addr p1, p0

    return p1
.end method

.method public getBottomShownPix()F
    .locals 0

    iget p0, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mBottomShownPix:F

    return p0
.end method

.method public getContentHeightCss()F
    .locals 0

    iget p0, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mContentHeightCss:F

    return p0
.end method

.method public getContentHeightPixInt()I
    .locals 2

    invoke-direct {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentHeightPix()F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public getContentOffsetYPix()F
    .locals 0

    iget p0, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mTopContentOffsetYPix:F

    return p0
.end method

.method public getContentOffsetYPixInt()I
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public getContentWidthCss()F
    .locals 0

    iget p0, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mContentWidthCss:F

    return p0
.end method

.method public getContentWidthPixInt()I
    .locals 2

    invoke-direct {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentWidthPix()F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public getDeviceScaleFactor()F
    .locals 0

    iget p0, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mDeviceScaleFactor:F

    return p0
.end method

.method public getLastFrameViewportHeightPixInt()I
    .locals 2

    invoke-direct {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getLastFrameViewportHeightPix()F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public getLastFrameViewportWidthPixInt()I
    .locals 2

    invoke-direct {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getLastFrameViewportWidthPix()F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public getMaxPageScaleFactor()F
    .locals 0

    iget p0, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mMaxPageScaleFactor:F

    return p0
.end method

.method public getMinPageScaleFactor()F
    .locals 0

    iget p0, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mMinPageScaleFactor:F

    return p0
.end method

.method public getPageScaleFactor()F
    .locals 0

    iget p0, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mPageScaleFactor:F

    return p0
.end method

.method public getScrollX()F
    .locals 0

    iget p0, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mScrollXCss:F

    return p0
.end method

.method public getScrollXPix()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mScrollXCss:F

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->fromLocalCssToPix(F)F

    move-result p0

    return p0
.end method

.method public getScrollXPixInt()I
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getScrollXPix()F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public getScrollY()F
    .locals 0

    iget p0, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mScrollYCss:F

    return p0
.end method

.method public getScrollYPix()F
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mScrollYCss:F

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->fromLocalCssToPix(F)F

    move-result p0

    return p0
.end method

.method public getScrollYPixInt()I
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getScrollYPix()F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public setDeviceScaleFactor(F)V
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mDeviceScaleFactor:F

    return-void
.end method

.method public updateContentSizeCss(FF)V
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mContentWidthCss:F

    iput p2, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mContentHeightCss:F

    return-void
.end method

.method public updateFrameInfo(FFFFFFFF)V
    .locals 0

    iput p5, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mMinPageScaleFactor:F

    iput p6, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mMaxPageScaleFactor:F

    iput p7, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mTopContentOffsetYPix:F

    iput p8, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mBottomShownPix:F

    invoke-virtual {p0, p1, p2}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->updateContentSizeCss(FF)V

    iput p3, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mLastFrameViewportWidthCss:F

    iput p4, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mLastFrameViewportHeightCss:F

    return-void
.end method

.method public updateScrollInfo(FFF)V
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mPageScaleFactor:F

    iput p2, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mScrollXCss:F

    iput p3, p0, Lorg/chromium/content/browser/RenderCoordinatesImpl;->mScrollYCss:F

    return-void
.end method
