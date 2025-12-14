.class public final Lcom/google/ar/core/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/hardware/camera2/CameraDevice;

.field public final b:Ljava/util/HashMap;

.field public c:Landroid/graphics/SurfaceTexture;

.field public d:Landroid/view/Surface;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ar/core/k;->a:Landroid/hardware/camera2/CameraDevice;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/ar/core/k;->b:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/google/ar/core/k;->c:Landroid/graphics/SurfaceTexture;

    iput-object v0, p0, Lcom/google/ar/core/k;->d:Landroid/view/Surface;

    return-void
.end method
