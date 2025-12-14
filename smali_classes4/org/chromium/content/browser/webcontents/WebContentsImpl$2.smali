.class Lorg/chromium/content/browser/webcontents/WebContentsImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/base/EventForwarder$StylusWritingDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getEventForwarder()Lorg/chromium/ui/base/EventForwarder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/webcontents/WebContentsImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/webcontents/WebContentsImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl$2;->this$0:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleHoverEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl$2;->this$0:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->a(Lorg/chromium/content/browser/webcontents/WebContentsImpl;)Lorg/chromium/content_public/browser/StylusWritingHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl$2;->this$0:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->a(Lorg/chromium/content/browser/webcontents/WebContentsImpl;)Lorg/chromium/content_public/browser/StylusWritingHandler;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl$2;->this$0:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/ui/base/ViewAndroidDelegate;

    invoke-virtual {p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/View;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lorg/chromium/content_public/browser/StylusWritingHandler;->handleHoverEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl$2;->this$0:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->a(Lorg/chromium/content/browser/webcontents/WebContentsImpl;)Lorg/chromium/content_public/browser/StylusWritingHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl$2;->this$0:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->a(Lorg/chromium/content/browser/webcontents/WebContentsImpl;)Lorg/chromium/content_public/browser/StylusWritingHandler;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl$2;->this$0:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/ui/base/ViewAndroidDelegate;

    invoke-virtual {p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/View;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lorg/chromium/content_public/browser/StylusWritingHandler;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
