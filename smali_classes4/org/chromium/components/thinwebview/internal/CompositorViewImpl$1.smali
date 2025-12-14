.class Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->createSurfaceView()Landroid/view/SurfaceView;
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

    iput-object p1, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$1;->this$0:Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 10

    iget-object v0, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$1;->this$0:Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;

    iget-wide v0, v0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mNativeCompositorViewImpl:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/components/thinwebview/internal/CompositorViewImplJni;->get()Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$Natives;

    move-result-object v1

    iget-object v4, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$1;->this$0:Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;

    iget-wide v2, v4, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mNativeCompositorViewImpl:J

    const/4 v8, 0x1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v9

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v1 .. v9}, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$Natives;->surfaceChanged(JLorg/chromium/components/thinwebview/internal/CompositorViewImpl;IIIZLandroid/view/Surface;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    iget-object p1, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$1;->this$0:Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;

    iget-wide v0, p1, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mNativeCompositorViewImpl:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/components/thinwebview/internal/CompositorViewImplJni;->get()Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$Natives;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$1;->this$0:Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;

    iget-wide v0, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mNativeCompositorViewImpl:J

    invoke-interface {p1, v0, v1, p0}, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$Natives;->surfaceCreated(JLorg/chromium/components/thinwebview/internal/CompositorViewImpl;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    iget-object p1, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$1;->this$0:Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;

    iget-wide v0, p1, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mNativeCompositorViewImpl:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/components/thinwebview/internal/CompositorViewImplJni;->get()Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$Natives;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$1;->this$0:Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;

    iget-wide v0, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mNativeCompositorViewImpl:J

    invoke-interface {p1, v0, v1, p0}, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$Natives;->surfaceDestroyed(JLorg/chromium/components/thinwebview/internal/CompositorViewImpl;)V

    return-void
.end method
