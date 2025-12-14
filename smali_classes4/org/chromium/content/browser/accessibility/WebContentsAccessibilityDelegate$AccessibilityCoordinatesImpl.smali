.class Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate$AccessibilityCoordinatesImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/accessibility/AccessibilityDelegate$AccessibilityCoordinates;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibilityCoordinatesImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate$AccessibilityCoordinatesImpl;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate$AccessibilityCoordinatesImpl;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate;

    invoke-static {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate;->a(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate;)Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public fromLocalCssToPix(F)F
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate$AccessibilityCoordinatesImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->fromLocalCssToPix(F)F

    move-result p0

    return p0
.end method

.method public getContentHeightCss()F
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate$AccessibilityCoordinatesImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentHeightCss()F

    move-result p0

    return p0
.end method

.method public getContentOffsetYPix()F
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate$AccessibilityCoordinatesImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result p0

    return p0
.end method

.method public getContentWidthCss()F
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate$AccessibilityCoordinatesImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentWidthCss()F

    move-result p0

    return p0
.end method

.method public getLastFrameViewportHeightPixInt()I
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate$AccessibilityCoordinatesImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getLastFrameViewportHeightPixInt()I

    move-result p0

    return p0
.end method

.method public getLastFrameViewportWidthPixInt()I
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate$AccessibilityCoordinatesImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getLastFrameViewportWidthPixInt()I

    move-result p0

    return p0
.end method

.method public getScrollX()F
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate$AccessibilityCoordinatesImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getScrollX()F

    move-result p0

    return p0
.end method

.method public getScrollY()F
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate$AccessibilityCoordinatesImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getScrollY()F

    move-result p0

    return p0
.end method
