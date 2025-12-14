.class interface abstract Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BuilderDelegate"
.end annotation


# virtual methods
.method public abstract currentAccessibilityFocusId()I
.end method

.method public abstract currentRootId()I
.end method

.method public abstract getAccessibilityCoordinates()Lorg/chromium/content/browser/accessibility/AccessibilityDelegate$AccessibilityCoordinates;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getLanguageTag()Ljava/lang/String;
.end method

.method public abstract getSupportedHtmlTags()Ljava/lang/String;
.end method

.method public abstract getView()Landroid/view/View;
.end method
