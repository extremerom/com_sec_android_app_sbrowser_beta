.class Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/accessibility/AutoDisableAccessibilityHandler$Client;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;-><init>(Lorg/chromium/content/browser/accessibility/AccessibilityDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$2;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$2;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->mView:Landroid/view/View;

    return-object p0
.end method

.method public onDisabled()V
    .locals 4

    const-string v0, "WebContentsAccessibilityImpl.AutoDisableAccessibilityHandler.onDisabled"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$2;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-static {v1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->m(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$2;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-static {v2}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->i(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/accessibility/AccessibilityHistogramRecorder;->onDisableCalled(Z)V

    invoke-static {}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImplJni;->get()Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$Natives;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$2;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    iget-wide v2, v2, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->mNativeObj:J

    invoke-interface {v1, v2, v3}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$Natives;->disableRendererAccessibility(J)V

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$2;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-static {v1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->l(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)Lorg/chromium/content/browser/accessibility/AccessibilityEventDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/accessibility/AccessibilityEventDispatcher;->clearQueue()V

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$2;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-static {v1}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->p(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$2;->this$0:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    invoke-static {p0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;->s(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;)V

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return-void
.end method
