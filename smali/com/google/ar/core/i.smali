.class public final Lcom/google/ar/core/i;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field public final synthetic a:Landroid/os/Handler;

.field public final synthetic b:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field public final synthetic c:Lcom/google/ar/core/SharedCamera;


# direct methods
.method public constructor <init>(Lcom/google/ar/core/SharedCamera;Landroid/os/Handler;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .locals 0

    iput-object p2, p0, Lcom/google/ar/core/i;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/ar/core/i;->b:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iput-object p1, p0, Lcom/google/ar/core/i;->c:Lcom/google/ar/core/SharedCamera;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 7

    new-instance v6, LH/e;

    iget-object v2, p0, Lcom/google/ar/core/i;->b:Landroid/hardware/camera2/CameraDevice$StateCallback;

    const/4 v1, 0x3

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, LH/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object v0, p0, Lcom/google/ar/core/i;->a:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/google/ar/core/i;->c:Lcom/google/ar/core/SharedCamera;

    invoke-virtual {p0, p1}, Lcom/google/ar/core/SharedCamera;->e(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method public final onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 7

    new-instance v6, LH/e;

    iget-object v2, p0, Lcom/google/ar/core/i;->b:Landroid/hardware/camera2/CameraDevice$StateCallback;

    const/4 v1, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, LH/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object v0, p0, Lcom/google/ar/core/i;->a:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/google/ar/core/i;->c:Lcom/google/ar/core/SharedCamera;

    invoke-virtual {p0, p1}, Lcom/google/ar/core/SharedCamera;->f(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method public final onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 7

    new-instance v6, LH/e;

    iget-object v2, p0, Lcom/google/ar/core/i;->b:Landroid/hardware/camera2/CameraDevice$StateCallback;

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, LH/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object p1, p0, Lcom/google/ar/core/i;->a:Landroid/os/Handler;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/google/ar/core/i;->c:Lcom/google/ar/core/SharedCamera;

    invoke-virtual {p0}, Lcom/google/ar/core/SharedCamera;->b()V

    return-void
.end method

.method public final onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 8

    iget-object v0, p0, Lcom/google/ar/core/i;->c:Lcom/google/ar/core/SharedCamera;

    invoke-virtual {v0}, Lcom/google/ar/core/SharedCamera;->n()Lcom/google/ar/core/k;

    move-result-object v1

    iput-object p1, v1, Lcom/google/ar/core/k;->a:Landroid/hardware/camera2/CameraDevice;

    new-instance v1, LH/e;

    iget-object v4, p0, Lcom/google/ar/core/i;->b:Landroid/hardware/camera2/CameraDevice$StateCallback;

    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, v1

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, LH/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object p0, p0, Lcom/google/ar/core/i;->a:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0, p1}, Lcom/google/ar/core/SharedCamera;->d(Landroid/hardware/camera2/CameraDevice;)V

    invoke-virtual {v0}, Lcom/google/ar/core/SharedCamera;->n()Lcom/google/ar/core/k;

    move-result-object p0

    invoke-virtual {v0}, Lcom/google/ar/core/SharedCamera;->l()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ar/core/k;->c:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Lcom/google/ar/core/SharedCamera;->n()Lcom/google/ar/core/k;

    move-result-object p0

    invoke-virtual {v0}, Lcom/google/ar/core/SharedCamera;->m()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ar/core/k;->d:Landroid/view/Surface;

    return-void
.end method
