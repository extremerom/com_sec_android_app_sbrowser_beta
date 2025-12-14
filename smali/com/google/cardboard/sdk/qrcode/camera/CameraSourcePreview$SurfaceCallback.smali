.class Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview$SurfaceCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SurfaceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;


# direct methods
.method private constructor <init>(Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;)V
    .locals 0

    iput-object p1, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview$SurfaceCallback;->this$0:Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview$SurfaceCallback;-><init>(Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p1, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview$SurfaceCallback;->this$0:Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->a(Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;Z)V

    :try_start_0
    iget-object p0, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview$SurfaceCallback;->this$0:Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;

    invoke-static {p0}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->b(Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-static {}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Could not start camera source."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Do not have permission to start the camera"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p0, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview$SurfaceCallback;->this$0:Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->a(Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;Z)V

    return-void
.end method
