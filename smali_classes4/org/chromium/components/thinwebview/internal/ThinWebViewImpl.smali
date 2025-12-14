.class public Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/thinwebview/ThinWebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected mCompositorView:Lorg/chromium/components/thinwebview/CompositorView;

.field private mContentView:Landroid/view/View;

.field protected mNativeThinWebViewImpl:J

.field private mWebContentsDelegate:Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid;
    .annotation build Lorg/chromium/build/annotations/DoNotInline;
    .end annotation
.end field

.field protected mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/ui/base/IntentRequestTracker;)V
    .locals 7

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lorg/chromium/base/ContextUtils;->activityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/chromium/ui/base/ActivityWindowAndroid;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/chromium/ui/base/ActivityWindowAndroid;-><init>(Landroid/content/Context;ZLorg/chromium/ui/base/IntentRequestTracker;Lorg/chromium/ui/InsetObserver;Z)V

    iput-object v0, p0, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/chromium/ui/base/WindowAndroid;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lorg/chromium/ui/base/WindowAndroid;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    :goto_0
    return-void
.end method

.method private setContentView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->mContentView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_1
    iput-object p1, p0, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public attachWebContents(Lorg/chromium/content_public/browser/WebContents;Landroid/view/View;Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid;)V
    .locals 7

    iget-wide v0, p0, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->mNativeThinWebViewImpl:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p3, p0, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->mWebContentsDelegate:Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid;

    invoke-direct {p0, p2}, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->setContentView(Landroid/view/View;)V

    invoke-static {}, Lorg/chromium/components/thinwebview/internal/ThinWebViewImplJni;->get()Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->mNativeThinWebViewImpl:J

    move-object v4, p0

    move-object v5, p1

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl$Natives;->setWebContents(JLorg/chromium/components/thinwebview/internal/ThinWebViewImpl;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid;)V

    const/4 p0, 0x2

    invoke-interface {p1, p0}, Lorg/chromium/content_public/browser/WebContents;->updateWebContentsVisibility(I)V

    return-void
.end method

.method public destroy()V
    .locals 6

    iget-wide v0, p0, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->mNativeThinWebViewImpl:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->mContentView:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->mCompositorView:Lorg/chromium/components/thinwebview/CompositorView;

    invoke-interface {v0}, Lorg/chromium/components/thinwebview/CompositorView;->destroy()V

    invoke-static {}, Lorg/chromium/components/thinwebview/internal/ThinWebViewImplJni;->get()Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl$Natives;

    move-result-object v0

    iget-wide v4, p0, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->mNativeThinWebViewImpl:J

    invoke-interface {v0, v4, v5, p0}, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl$Natives;->destroy(JLorg/chromium/components/thinwebview/internal/ThinWebViewImpl;)V

    iput-wide v2, p0, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->mNativeThinWebViewImpl:J

    iget-object p0, p0, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->destroy()V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onSizeChanged(IIII)V
    .locals 7

    iget-wide v0, p0, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->mNativeThinWebViewImpl:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ne p1, p3, :cond_1

    if-eq p2, p4, :cond_2

    :cond_1
    invoke-static {}, Lorg/chromium/components/thinwebview/internal/ThinWebViewImplJni;->get()Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->mNativeThinWebViewImpl:J

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl$Natives;->sizeChanged(JLorg/chromium/components/thinwebview/internal/ThinWebViewImpl;II)V

    :cond_2
    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl;->mCompositorView:Lorg/chromium/components/thinwebview/CompositorView;

    invoke-interface {p0, p1}, Lorg/chromium/components/thinwebview/CompositorView;->setAlpha(F)V

    return-void
.end method
