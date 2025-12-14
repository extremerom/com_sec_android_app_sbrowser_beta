.class Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->createTextureView()Landroid/view/TextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$2;->this$0:Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$2;->this$0:Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;

    iget-wide v1, v1, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mNativeCompositorViewImpl:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/components/thinwebview/internal/CompositorViewImplJni;->get()Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$Natives;

    move-result-object v1

    iget-object v2, v0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$2;->this$0:Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;

    iget-wide v3, v2, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mNativeCompositorViewImpl:J

    invoke-interface {v1, v3, v4, v2}, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$Natives;->surfaceCreated(JLorg/chromium/components/thinwebview/internal/CompositorViewImpl;)V

    invoke-static {}, Lorg/chromium/components/thinwebview/internal/CompositorViewImplJni;->get()Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$Natives;

    move-result-object v5

    iget-object v8, v0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$2;->this$0:Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;

    iget-wide v6, v8, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mNativeCompositorViewImpl:J

    new-instance v13, Landroid/view/Surface;

    move-object v0, p1

    invoke-direct {v13, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v9, -0x1

    const/4 v12, 0x0

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-interface/range {v5 .. v13}, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$Natives;->surfaceChanged(JLorg/chromium/components/thinwebview/internal/CompositorViewImpl;IIIZLandroid/view/Surface;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 4

    iget-object p1, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$2;->this$0:Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;

    iget-wide v0, p1, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mNativeCompositorViewImpl:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lorg/chromium/components/thinwebview/internal/CompositorViewImplJni;->get()Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$Natives;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$2;->this$0:Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;

    iget-wide v1, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mNativeCompositorViewImpl:J

    invoke-interface {p1, v1, v2, p0}, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$Natives;->surfaceDestroyed(JLorg/chromium/components/thinwebview/internal/CompositorViewImpl;)V

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 10

    iget-object v0, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$2;->this$0:Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;

    iget-wide v0, v0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mNativeCompositorViewImpl:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/components/thinwebview/internal/CompositorViewImplJni;->get()Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$Natives;

    move-result-object v1

    iget-object v4, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$2;->this$0:Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;

    iget-wide v2, v4, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mNativeCompositorViewImpl:J

    new-instance v9, Landroid/view/Surface;

    invoke-direct {v9, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v5, -0x1

    const/4 v8, 0x0

    move v6, p2

    move v7, p3

    invoke-interface/range {v1 .. v9}, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$Natives;->surfaceChanged(JLorg/chromium/components/thinwebview/internal/CompositorViewImpl;IIIZLandroid/view/Surface;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
