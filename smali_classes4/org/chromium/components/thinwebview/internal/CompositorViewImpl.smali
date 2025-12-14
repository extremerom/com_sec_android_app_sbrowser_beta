.class public Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/thinwebview/CompositorView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field protected mNativeCompositorViewImpl:J

.field private final mView:Landroid/view/View;

.field private final mViewConstraints:Lorg/chromium/components/thinwebview/ThinWebViewConstraints;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/components/thinwebview/ThinWebViewConstraints;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lorg/chromium/components/thinwebview/ThinWebViewConstraints;->clone()Lorg/chromium/components/thinwebview/ThinWebViewConstraints;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mViewConstraints:Lorg/chromium/components/thinwebview/ThinWebViewConstraints;

    invoke-direct {p0}, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->createSurfaceView()Landroid/view/SurfaceView;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/components/thinwebview/ThinWebViewConstraints;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Lorg/chromium/components/thinwebview/ThinWebViewConstraints;->clone()Lorg/chromium/components/thinwebview/ThinWebViewConstraints;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mViewConstraints:Lorg/chromium/components/thinwebview/ThinWebViewConstraints;

    invoke-direct {p0}, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->useSurfaceView()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->createSurfaceView()Landroid/view/SurfaceView;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->createTextureView()Landroid/view/TextureView;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mView:Landroid/view/View;

    invoke-static {}, Lorg/chromium/components/thinwebview/internal/CompositorViewImplJni;->get()Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$Natives;

    move-result-object p1

    iget p3, p3, Lorg/chromium/components/thinwebview/ThinWebViewConstraints;->backgroundColor:I

    invoke-interface {p1, p0, p2, p3}, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$Natives;->init(Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;Lorg/chromium/ui/base/WindowAndroid;I)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mNativeCompositorViewImpl:J

    return-void
.end method

.method private createSurfaceView()Landroid/view/SurfaceView;
    .locals 3

    new-instance v0, Landroid/view/SurfaceView;

    iget-object v1, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    new-instance v2, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$1;

    invoke-direct {v2, p0}, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$1;-><init>(Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-object v0
.end method

.method private createTextureView()Landroid/view/TextureView;
    .locals 2

    new-instance v0, Landroid/view/TextureView;

    iget-object v1, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$2;

    invoke-direct {v1, p0}, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$2;-><init>(Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-object v0
.end method

.method private getNativePtr()J
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mNativeCompositorViewImpl:J

    return-wide v0
.end method

.method private onCompositorLayout()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method private recreateSurface()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method private useSurfaceView()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mViewConstraints:Lorg/chromium/components/thinwebview/ThinWebViewConstraints;

    iget-boolean p0, p0, Lorg/chromium/components/thinwebview/ThinWebViewConstraints;->supportsOpacity:Z

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public destroy()V
    .locals 6

    iget-wide v0, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mNativeCompositorViewImpl:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/components/thinwebview/internal/CompositorViewImplJni;->get()Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$Natives;

    move-result-object v0

    iget-wide v4, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mNativeCompositorViewImpl:J

    invoke-interface {v0, v4, v5, p0}, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$Natives;->destroy(JLorg/chromium/components/thinwebview/internal/CompositorViewImpl;)V

    iput-wide v2, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mNativeCompositorViewImpl:J

    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mView:Landroid/view/View;

    return-object p0
.end method

.method public setAlpha(F)V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mNativeCompositorViewImpl:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
