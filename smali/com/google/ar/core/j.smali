.class public final Lcom/google/ar/core/j;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field public final synthetic a:Landroid/os/Handler;

.field public final synthetic b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field public final synthetic c:Lcom/google/ar/core/SharedCamera;


# direct methods
.method public constructor <init>(Lcom/google/ar/core/SharedCamera;Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 0

    iput-object p2, p0, Lcom/google/ar/core/j;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/ar/core/j;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iput-object p1, p0, Lcom/google/ar/core/j;->c:Lcom/google/ar/core/SharedCamera;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 7

    new-instance v6, LH/e;

    iget-object v2, p0, Lcom/google/ar/core/j;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    const/4 v1, 0x7

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, LH/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object v0, p0, Lcom/google/ar/core/j;->a:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/google/ar/core/j;->c:Lcom/google/ar/core/SharedCamera;

    invoke-virtual {p0, p1}, Lcom/google/ar/core/SharedCamera;->g(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public final onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 7

    new-instance v6, LH/e;

    iget-object v2, p0, Lcom/google/ar/core/j;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    const/16 v1, 0x8

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, LH/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object v0, p0, Lcom/google/ar/core/j;->a:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/google/ar/core/j;->c:Lcom/google/ar/core/SharedCamera;

    invoke-virtual {p0, p1}, Lcom/google/ar/core/SharedCamera;->h(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public final onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 7

    new-instance v6, LH/e;

    iget-object v2, p0, Lcom/google/ar/core/j;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    const/4 v1, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, LH/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object v0, p0, Lcom/google/ar/core/j;->a:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/google/ar/core/j;->c:Lcom/google/ar/core/SharedCamera;

    invoke-virtual {p0, p1}, Lcom/google/ar/core/SharedCamera;->i(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public final onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 7

    new-instance v6, LH/e;

    iget-object v2, p0, Lcom/google/ar/core/j;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    const/4 v1, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, LH/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object v0, p0, Lcom/google/ar/core/j;->a:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/google/ar/core/j;->c:Lcom/google/ar/core/SharedCamera;

    invoke-virtual {p0, p1}, Lcom/google/ar/core/SharedCamera;->j(Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-virtual {p0}, Lcom/google/ar/core/SharedCamera;->n()Lcom/google/ar/core/k;

    move-result-object p1

    iget-object p1, p1, Lcom/google/ar/core/k;->a:Landroid/hardware/camera2/CameraDevice;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/ar/core/SharedCamera;->c()V

    :cond_0
    return-void
.end method

.method public final onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 7

    new-instance v6, LH/e;

    iget-object v2, p0, Lcom/google/ar/core/j;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    const/4 v1, 0x6

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, LH/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object v0, p0, Lcom/google/ar/core/j;->a:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/google/ar/core/j;->c:Lcom/google/ar/core/SharedCamera;

    invoke-virtual {p0, p1}, Lcom/google/ar/core/SharedCamera;->k(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method
