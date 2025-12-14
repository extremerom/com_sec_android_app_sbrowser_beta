.class public Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview$SurfaceCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraSourcePreview"


# instance fields
.field private cameraSource:Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;

.field private final context:Landroid/content/Context;

.field private startRequested:Z

.field private surfaceAvailable:Z

.field private final surfaceView:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->context:Landroid/content/Context;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->startRequested:Z

    iput-boolean p2, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->surfaceAvailable:Z

    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance v1, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview$SurfaceCallback;

    invoke-direct {v1, p0, p2}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview$SurfaceCallback;-><init>(Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;I)V

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->surfaceAvailable:Z

    return-void
.end method

.method public static bridge synthetic b(Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->startIfReady()V

    return-void
.end method

.method public static bridge synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private isPortraitMode()Z
    .locals 2

    iget-object p0, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    sget-object p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->TAG:Ljava/lang/String;

    const-string v0, "isPortraitMode returning false by default"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private startIfReady()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    iget-boolean v0, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->startRequested:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->surfaceAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->cameraSource:Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;

    iget-object v1, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;->start(Landroid/view/SurfaceHolder;)Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->startRequested:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .locals 3

    iget-object p1, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->cameraSource:Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;->getPreviewSize()Le5/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v0, p1, Le5/a;->a:I

    iget p1, p1, Le5/a;->b:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x140

    const/16 p1, 0xf0

    :goto_0
    invoke-direct {p0}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->isPortraitMode()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    move v0, p1

    move p1, v2

    :goto_1
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-direct {p0}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->isPortraitMode()Z

    move-result p2

    if-eqz p2, :cond_2

    int-to-float p2, p5

    int-to-float p3, v0

    div-float/2addr p2, p3

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p4, p2

    goto :goto_2

    :cond_2
    int-to-float p2, p4

    int-to-float p1, p1

    div-float/2addr p2, p1

    int-to-float p1, v0

    mul-float/2addr p2, p1

    float-to-int p5, p2

    :goto_2
    const/4 p1, 0x0

    move p2, p1

    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_3

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1, p1, p4, p5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->startIfReady()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    sget-object p1, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->TAG:Ljava/lang/String;

    const-string p2, "Could not start camera source."

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_1
    move-exception p0

    sget-object p1, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->TAG:Ljava/lang/String;

    const-string p2, "Do not have permission to start the camera"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->cameraSource:Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->cameraSource:Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;

    :cond_0
    return-void
.end method

.method public start(Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->stop()V

    :cond_0
    iput-object p1, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->cameraSource:Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->startRequested:Z

    invoke-direct {p0}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->startIfReady()V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 0

    iget-object p0, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->cameraSource:Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;->stop()V

    :cond_0
    return-void
.end method
