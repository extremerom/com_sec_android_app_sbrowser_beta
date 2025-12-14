.class public interface abstract Lorg/chromium/content_public/browser/WebContentsAccessibility;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public static fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/WebContentsAccessibility;
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
.end method

.method public abstract getAccessibilityNodeProviderChecked()Z
.end method

.method public abstract onAutofillPopupAccessibilityFocusCleared()V
.end method

.method public abstract onAutofillPopupDismissed()V
.end method

.method public abstract onAutofillPopupDisplayed(Landroid/view/View;)V
.end method

.method public abstract onHoverEventNoRenderer(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onProvideVirtualStructure(Landroid/view/ViewStructure;Z)V
.end method

.method public abstract setAccessibilityNodeProviderChecked(Z)V
.end method

.method public abstract setObscuredByAnotherView(Z)V
.end method

.method public abstract setShouldFocusOnPageLoad(Z)V
.end method
