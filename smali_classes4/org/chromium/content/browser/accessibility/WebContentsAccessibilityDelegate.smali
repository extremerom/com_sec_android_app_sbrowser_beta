.class public Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/accessibility/AccessibilityDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate$AccessibilityCoordinatesImpl;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAccessibilityCoordinatesImpl:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate$AccessibilityCoordinatesImpl;

.field private final mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    new-instance p1, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate$AccessibilityCoordinatesImpl;

    invoke-direct {p1, p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate$AccessibilityCoordinatesImpl;-><init>(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate;)V

    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate;->mAccessibilityCoordinatesImpl:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate$AccessibilityCoordinatesImpl;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate;)Lorg/chromium/content/browser/webcontents/WebContentsImpl;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    return-object p0
.end method


# virtual methods
.method public getAccessibilityCoordinates()Lorg/chromium/content/browser/accessibility/AccessibilityDelegate$AccessibilityCoordinates;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate;->mAccessibilityCoordinatesImpl:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate$AccessibilityCoordinatesImpl;

    return-object p0
.end method

.method public getContainerView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/ui/base/ViewAndroidDelegate;

    invoke-virtual {p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getProductVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWebContents()Lorg/chromium/content_public/browser/WebContents;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    return-object p0
.end method

.method public isIncognito()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->isIncognito()Z

    move-result p0

    return p0
.end method

.method public requestAccessibilitySnapshot(Landroid/view/ViewStructure;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityDelegate;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->requestAccessibilitySnapshot(Landroid/view/ViewStructure;Ljava/lang/Runnable;)V

    return-void
.end method
