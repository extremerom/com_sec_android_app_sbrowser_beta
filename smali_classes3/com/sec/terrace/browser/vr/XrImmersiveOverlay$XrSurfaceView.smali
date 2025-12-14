.class Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XrSurfaceView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView$XrSurfaceViewImpl;
    }
.end annotation


# instance fields
.field private mDestructionFromVisibilityChanged:Z

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mSurfaceViewNeedsDestruction:Z

.field private mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

.field final synthetic this$0:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->this$0:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->c(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;)Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;->prepareToCreateSurfaceView()V

    new-instance v0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView$XrSurfaceViewImpl;

    invoke-static {p1}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->a(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView$XrSurfaceViewImpl;-><init>(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-static {p1}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->c(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;)Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-interface {v0, v2}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;->configureSurfaceView(Landroid/view/SurfaceView;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    iget-object v0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {p1}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->c(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;)Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-interface {v0, v1}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;->parentAndShowSurfaceView(Landroid/view/SurfaceView;)V

    new-instance v0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView$1;

    invoke-static {p1}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->d(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView$1;-><init>(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;Lorg/chromium/content_public/browser/WebContents;Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->mSurfaceViewNeedsDestruction:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->mDestructionFromVisibilityChanged:Z

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->mSurfaceViewNeedsDestruction:Z

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->removeAndDestroySurfaceView()V

    return-void
.end method

.method private removeAndDestroySurfaceView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->this$0:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;

    invoke-static {v0}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->c(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;)Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-interface {v0, v1}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;->removeAndHideSurfaceView(Landroid/view/SurfaceView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->mSurfaceView:Landroid/view/SurfaceView;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/WebContentsObserver;->observe(Lorg/chromium/content_public/browser/WebContents;)V

    invoke-static {}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->mDestructionFromVisibilityChanged:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->mSurfaceViewNeedsDestruction:Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->removeAndDestroySurfaceView()V

    :goto_1
    iget-object p0, p0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$XrSurfaceView;->this$0:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;

    invoke-static {p0}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->c(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;)Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;->onStopUsingSurfaceView()V

    return-void
.end method
