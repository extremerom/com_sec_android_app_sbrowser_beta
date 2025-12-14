.class public interface abstract Lorg/chromium/content_public/browser/RenderCoordinates;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public static fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/RenderCoordinates;
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getContentHeightPixInt()I
.end method

.method public abstract getContentOffsetYPix()F
.end method

.method public abstract getContentOffsetYPixInt()I
.end method

.method public abstract getContentWidthPixInt()I
.end method

.method public abstract getDeviceScaleFactor()F
.end method

.method public abstract getLastFrameViewportHeightPixInt()I
.end method

.method public abstract getLastFrameViewportWidthPixInt()I
.end method

.method public abstract getMinPageScaleFactor()F
.end method

.method public abstract getPageScaleFactor()F
.end method

.method public abstract getScrollXPixInt()I
.end method

.method public abstract getScrollYPixInt()I
.end method
