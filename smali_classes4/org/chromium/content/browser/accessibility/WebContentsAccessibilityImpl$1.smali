.class Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder$BuilderDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;-><init>(Lorg/chromium/content/browser/accessibility/AccessibilityDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$1;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentAccessibilityFocusId()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$1;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-static {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->g(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)I

    move-result p0

    return p0
.end method

.method public currentRootId()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$1;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-static {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->j(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)I

    move-result p0

    return p0
.end method

.method public getAccessibilityCoordinates()Lorg/chromium/content/browser/accessibility/AccessibilityDelegate$AccessibilityCoordinates;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$1;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-static {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->k(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)Lorg/chromium/content/browser/accessibility/AccessibilityDelegate;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityDelegate;->getAccessibilityCoordinates()Lorg/chromium/content/browser/accessibility/AccessibilityDelegate$AccessibilityCoordinates;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$1;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getLanguageTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$1;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-static {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->r(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedHtmlTags()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$1;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-static {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->q(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$1;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->mView:Landroid/view/View;

    return-object p0
.end method
