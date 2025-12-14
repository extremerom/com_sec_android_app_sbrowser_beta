.class public Lcom/google/cardboard/sdk/QrCodeCaptureActivity;
.super Lm/n;
.source "SourceFile"

# interfaces
.implements Lcom/google/cardboard/sdk/qrcode/QrCodeTracker$Listener;
.implements Lcom/google/cardboard/sdk/qrcode/QrCodeContentProcessor$Listener;


# static fields
.field private static final MIN_SDK_VERSION:I = 0x17

.field private static final PERMISSIONS_REQUEST_CODE:I = 0x2

.field private static final RC_HANDLE_GMS:I = 0x2329

.field private static final TAG:Ljava/lang/String; = "QrCodeCaptureActivity"

.field private static qrCodeSaved:Z = false


# instance fields
.field private cameraSource:Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;

.field private cameraSourcePreview:Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lm/n;-><init>()V

    return-void
.end method

.method private createCameraSource()V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/motionphoto/utils/ex/e;

    const/4 v2, 0x6

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->n()V

    invoke-virtual {v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->b()LT5/a;

    move-result-object v0

    new-instance v1, Lcom/google/cardboard/sdk/qrcode/QrCodeTrackerFactory;

    invoke-direct {v1, p0}, Lcom/google/cardboard/sdk/qrcode/QrCodeTrackerFactory;-><init>(Lcom/google/cardboard/sdk/qrcode/QrCodeTracker$Listener;)V

    new-instance v2, LJ7/c;

    invoke-direct {v2, v1}, LJ7/c;-><init>(Lcom/google/cardboard/sdk/qrcode/QrCodeTrackerFactory;)V

    invoke-virtual {v2}, LJ7/c;->f()LG5/g4;

    move-result-object v1

    invoke-virtual {v0, v1}, LS5/b;->e(LG5/g4;)V

    invoke-virtual {v0}, LT5/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/google/cardboard/sdk/R$string;->missing_dependencies:I

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    sget-object v1, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->TAG:Ljava/lang/String;

    const-string v2, "QR Code detector is not operational. Try connecting to WiFi and updating Google Play Services or checking that the device storage isn\'t low."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;-><init>(Landroid/content/Context;LS5/b;)V

    iput-object v1, p0, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->cameraSource:Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;

    return-void
.end method

.method private isCameraEnabled()Z
    .locals 1

    const-string v0, "android.permission.CAMERA"

    invoke-static {p0, v0}, LV0/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isWriteExternalStoragePermissionsEnabled()Z
    .locals 1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, LV0/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private launchPermissionsSettings()V
    .locals 4

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-static {v0}, LB/e;->i(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private native nativeIncrementDeviceParamsChangedCount()V
.end method

.method private requestPermissions()V
    .locals 2

    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, LU0/b;->d(Landroidx/fragment/app/J;[Ljava/lang/String;I)V

    return-void
.end method

.method private startCameraSource()V
    .locals 6

    sget-object v0, La5/b;->d:La5/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, La5/c;->b(ILandroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v3, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isGooglePlayServicesAvailable() returned: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v5, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x2329

    invoke-virtual {v0, p0, v1, v3, v2}, La5/b;->c(Landroid/app/Activity;IILcom/google/android/gms/common/api/GoogleApiActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    iget-object v0, p0, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->cameraSource:Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->cameraSourcePreview:Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;

    invoke-virtual {v1, v0}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->start(Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->TAG:Ljava/lang/String;

    const-string v1, "Security exception: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :goto_1
    sget-object v1, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->TAG:Ljava/lang/String;

    const-string v3, "Unable to start camera source."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->cameraSource:Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;

    invoke-virtual {v0}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;->release()V

    iput-object v2, p0, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->cameraSource:Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;

    :goto_2
    sget-object p0, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->TAG:Ljava/lang/String;

    const-string v0, "cameraSourcePreview successfully started."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/J;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/google/cardboard/sdk/R$layout;->qr_code_capture:I

    invoke-virtual {p0, p1}, Lm/n;->setContentView(I)V

    sget p1, Lcom/google/cardboard/sdk/R$id;->preview:I

    invoke-virtual {p0, p1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;

    iput-object p1, p0, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->cameraSourcePreview:Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/J;->onPause()V

    iget-object v0, p0, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->cameraSourcePreview:Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->stop()V

    iget-object p0, p0, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->cameraSourcePreview:Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;

    invoke-virtual {p0}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->release()V

    :cond_0
    return-void
.end method

.method public onQrCodeDetected(Lcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->qrCodeSaved:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->qrCodeSaved:Z

    new-instance v0, Lcom/google/cardboard/sdk/qrcode/QrCodeContentProcessor;

    invoke-direct {v0, p0}, Lcom/google/cardboard/sdk/qrcode/QrCodeContentProcessor;-><init>(Lcom/google/cardboard/sdk/qrcode/QrCodeContentProcessor$Listener;)V

    invoke-virtual {v0, p1, p0}, Lcom/google/cardboard/sdk/qrcode/QrCodeContentProcessor;->processAndSaveQrCode(Lcom/google/android/gms/vision/barcode/Barcode;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onQrCodeSaved(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->TAG:Ljava/lang/String;

    const-string v0, "Device parameters saved in external storage."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->cameraSourcePreview:Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;

    invoke-virtual {p1}, Lcom/google/cardboard/sdk/qrcode/camera/CameraSourcePreview;->stop()V

    invoke-direct {p0}, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->nativeIncrementDeviceParamsChangedCount()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->TAG:Ljava/lang/String;

    const-string p1, "Device parameters not saved in external storage."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    sput-boolean p0, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->qrCodeSaved:Z

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/J;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    invoke-direct {p0}, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->isCameraEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->TAG:Ljava/lang/String;

    sget p2, Lcom/google/cardboard/sdk/R$string;->no_camera_permission:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget p2, Lcom/google/cardboard/sdk/R$string;->no_camera_permission:I

    const/4 p3, 0x1

    invoke-static {p0, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    const-string p2, "android.permission.CAMERA"

    invoke-static {p0, p2}, LU0/b;->e(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Permission denied with checking \"Do not ask again\"."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->launchPermissionsSettings()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/J;->onResume()V

    invoke-direct {p0}, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->isCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->createCameraSource()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->qrCodeSaved:Z

    invoke-direct {p0}, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->startCameraSource()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->requestPermissions()V

    return-void
.end method

.method public skipQrCodeCapture(Landroid/view/View;)V
    .locals 1

    sget-object p1, Lcom/google/cardboard/sdk/QrCodeCaptureActivity;->TAG:Ljava/lang/String;

    const-string v0, "QR code capture skipped"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->readDeviceParams(Landroid/content/Context;)[B

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->saveCardboardV1DeviceParams(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
