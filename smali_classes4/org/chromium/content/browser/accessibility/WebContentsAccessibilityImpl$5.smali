.class Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$5;
.super Lorg/chromium/content_public/browser/WebContentsObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->registerWebContentsObserver(Lorg/chromium/content_public/browser/WebContents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$5;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-direct {p0, p2}, Lorg/chromium/content_public/browser/WebContentsObserver;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$5;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-static {p1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->m(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->updateTimeOfFirstShown()V

    iget-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$5;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-static {p1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->w(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)V

    iget-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$5;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->isNativeInitialized()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$5;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-static {p1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->n(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$5;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-static {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->m(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->showAutoDisabledInstance()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$5;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-static {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->m(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->updateTimeOfNativeInitialization()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$5;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-static {p1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->m(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->recordAccessibilityUsageHistograms()V

    iget-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$5;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->isNativeInitialized()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$5;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-static {p1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->m(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->recordAccessibilityPerformanceHistograms()V

    iget-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$5;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-static {p1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->n(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$5;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-static {p1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->m(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->hideAutoDisabledInstance()V

    :cond_2
    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$5;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-static {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->h(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler;->cancelDisableTimer()V

    :cond_3
    :goto_0
    return-void
.end method
