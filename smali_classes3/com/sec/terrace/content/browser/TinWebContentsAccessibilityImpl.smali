.class public Lcom/sec/terrace/content/browser/TinWebContentsAccessibilityImpl;
.super Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/content/browser/TinWebContentsAccessibilityImpl$UserDataFactoryLazyHolder;,
        Lcom/sec/terrace/content/browser/TinWebContentsAccessibilityImpl$Factory;
    }
.end annotation


# direct methods
.method public static createForDelegate(Lorg/chromium/content/browser/accessibility/AccessibilityDelegate;)Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->createForDelegate(Lorg/chromium/content/browser/accessibility/AccessibilityDelegate;)Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    move-result-object p0

    return-object p0
.end method
