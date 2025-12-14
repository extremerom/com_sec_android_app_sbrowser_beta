.class public interface abstract Lorg/chromium/content/browser/accessibility/AccessibilityDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/accessibility/AccessibilityDelegate$AccessibilityCoordinates;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract getAccessibilityCoordinates()Lorg/chromium/content/browser/accessibility/AccessibilityDelegate$AccessibilityCoordinates;
.end method

.method public abstract getContainerView()Landroid/view/View;
.end method

.method public getNativeAXTree()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract getProductVersion()Ljava/lang/String;
.end method

.method public abstract getWebContents()Lorg/chromium/content_public/browser/WebContents;
.end method

.method public abstract isIncognito()Z
.end method

.method public performClick(Landroid/graphics/Rect;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract requestAccessibilitySnapshot(Landroid/view/ViewStructure;Ljava/lang/Runnable;)V
.end method

.method public scrollToMakeNodeVisible(Landroid/graphics/Rect;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setOnScrollPositionChangedCallback(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method
