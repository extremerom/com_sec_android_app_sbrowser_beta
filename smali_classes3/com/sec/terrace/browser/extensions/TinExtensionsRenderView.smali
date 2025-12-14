.class public Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$TinExtensionsTextureView;,
        Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$Natives;
    }
.end annotation


# instance fields
.field private mFirstFrame:Z

.field private mHeight:I

.field protected mNativeTinExtensionsRenderView:J

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTinExtensionsTextureView:Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$TinExtensionsTextureView;

.field protected mWebContents:Lorg/chromium/content_public/browser/WebContents;

.field private mWidth:I

.field private mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/ui/base/WindowAndroid;II)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mFirstFrame:Z

    iput p3, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mWidth:I

    iput p4, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mHeight:I

    invoke-virtual {p0, p2}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->init(Lorg/chromium/ui/base/WindowAndroid;)V

    new-instance p2, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$TinExtensionsTextureView;

    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, p0, v0}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$TinExtensionsTextureView;-><init>(Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;Landroid/view/TextureView;)V

    iput-object p2, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mTinExtensionsTextureView:Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$TinExtensionsTextureView;

    invoke-virtual {p2}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$TinExtensionsTextureView;->getTextureView()Landroid/view/TextureView;

    move-result-object p1

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mTinExtensionsTextureView:Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$TinExtensionsTextureView;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$TinExtensionsTextureView;->getTextureView()Landroid/view/TextureView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->setSurfaceTexture()V

    return-void
.end method

.method private setSurfaceTexture()V
    .locals 9

    const-string v0, "TinExtensionsRenderView"

    const-string v1, "setSurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/SurfaceTexture;-><init>(IZ)V

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mWidth:I

    iget v2, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v1, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$1;

    invoke-direct {v1, p0}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$1;-><init>(Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mTinExtensionsTextureView:Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$TinExtensionsTextureView;

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$TinExtensionsTextureView;->setExtensionsSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    new-instance v8, Landroid/view/Surface;

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v8, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderViewJni;->get()Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$Natives;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mNativeTinExtensionsRenderView:J

    iget v6, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mWidth:I

    iget v7, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mHeight:I

    move-object v5, p0

    invoke-interface/range {v2 .. v8}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$Natives;->setSurface(JLcom/sec/terrace/browser/extensions/TinExtensionsRenderView;IILandroid/view/Surface;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 6

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mNativeTinExtensionsRenderView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TinExtensionsRenderView"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderViewJni;->get()Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$Natives;

    move-result-object v1

    iget-wide v4, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mNativeTinExtensionsRenderView:J

    invoke-interface {v1, v4, v5, p0}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$Natives;->destroy(JLcom/sec/terrace/browser/extensions/TinExtensionsRenderView;)V

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mTinExtensionsTextureView:Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$TinExtensionsTextureView;

    iput-wide v2, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mNativeTinExtensionsRenderView:J

    return-void
.end method

.method public didSwapFrame()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mFirstFrame:Z

    return-void
.end method

.method public init(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderViewJni;->get()Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$Natives;->init(Ljava/lang/Object;Lorg/chromium/ui/base/WindowAndroid;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mNativeTinExtensionsRenderView:J

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderViewJni;->get()Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mNativeTinExtensionsRenderView:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$Natives;->initCompositor(JLcom/sec/terrace/browser/extensions/TinExtensionsRenderView;)V

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    iput p1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mWidth:I

    iput p2, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mHeight:I

    iget-object p3, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lorg/chromium/content_public/browser/WebContents;->isDestroyed()Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {p0, p1, p2}, Lorg/chromium/content_public/browser/WebContents;->setSize(II)V

    :cond_0
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/WindowAndroid;->onVisibilityChanged(Z)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/WindowAndroid;->onVisibilityChanged(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public resizeDueToAutoResize(II)V
    .locals 8

    const-string v0, "resizeDueToAutoResize width : "

    const-string v1, " height : "

    const-string v2, "TinExtensionsRenderView"

    invoke-static {p1, p2, v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mWidth:I

    iput p2, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mHeight:I

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mTinExtensionsTextureView:Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$TinExtensionsTextureView;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$TinExtensionsTextureView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->setCurrentWebContents(Lorg/chromium/content_public/browser/WebContents;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    iget p2, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mWidth:I

    iget v0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mHeight:I

    invoke-interface {p1, p2, v0}, Lorg/chromium/content_public/browser/WebContents;->setSize(II)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderViewJni;->get()Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mNativeTinExtensionsRenderView:J

    iget-object v5, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    iget v6, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mWidth:I

    iget v7, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mHeight:I

    move-object v4, p0

    invoke-interface/range {v1 .. v7}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$Natives;->onPhysicalBackingSizeChanged(JLcom/sec/terrace/browser/extensions/TinExtensionsRenderView;Lorg/chromium/content_public/browser/WebContents;II)V

    :cond_0
    return-void
.end method

.method public setCurrentWebContents(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 9

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mWidth:I

    iget v1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mHeight:I

    invoke-interface {p1, v0, v1}, Lorg/chromium/content_public/browser/WebContents;->setSize(II)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderViewJni;->get()Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$Natives;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mNativeTinExtensionsRenderView:J

    iget v7, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mWidth:I

    iget v8, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mHeight:I

    move-object v5, p0

    move-object v6, p1

    invoke-interface/range {v2 .. v8}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$Natives;->onPhysicalBackingSizeChanged(JLcom/sec/terrace/browser/extensions/TinExtensionsRenderView;Lorg/chromium/content_public/browser/WebContents;II)V

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderViewJni;->get()Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->mNativeTinExtensionsRenderView:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView$Natives;->setCurrentWebContents(JLcom/sec/terrace/browser/extensions/TinExtensionsRenderView;Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method
