.class public Lorg/chromium/shape_detection/BarcodeDetectionProviderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/shape_detection/mojom/BarcodeDetectionProvider;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lorg/chromium/shape_detection/mojom/BarcodeDetectionProvider;
    .locals 5

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gms/ChromiumPlayServicesAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Google Play Services not available"

    const-string v3, "BarcodeProviderImpl"

    if-nez v0, :cond_0

    invoke-static {v3, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v0, "com.google.android.gms"

    invoke-static {v0}, Lorg/chromium/base/PackageUtils;->getPackageVersion(Ljava/lang/String;)I

    move-result v0

    const v4, 0x12d3d30

    if-ge v0, v4, :cond_2

    if-gez v0, :cond_1

    invoke-static {v3, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Detection disabled (%d < 19.7.42)"

    invoke-static {v3, v2, v0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-object v1

    :cond_2
    new-instance v0, Lorg/chromium/shape_detection/BarcodeDetectionProviderImpl;

    invoke-direct {v0}, Lorg/chromium/shape_detection/BarcodeDetectionProviderImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public createBarcodeDetection(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/shape_detection/mojom/BarcodeDetectorOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/shape_detection/mojom/BarcodeDetection;",
            ">;",
            "Lorg/chromium/shape_detection/mojom/BarcodeDetectorOptions;",
            ")V"
        }
    .end annotation

    sget-object p0, Lorg/chromium/shape_detection/mojom/BarcodeDetection;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v0, Lorg/chromium/shape_detection/BarcodeDetectionImpl;

    invoke-direct {v0, p2}, Lorg/chromium/shape_detection/BarcodeDetectionImpl;-><init>(Lorg/chromium/shape_detection/mojom/BarcodeDetectorOptions;)V

    invoke-virtual {p0, v0, p1}, Lorg/chromium/mojo/bindings/Interface$Manager;->bind(Lorg/chromium/mojo/bindings/Interface;Lorg/chromium/mojo/bindings/InterfaceRequest;)Lorg/chromium/mojo/bindings/Router;

    return-void
.end method

.method public enumerateSupportedFormats(Lorg/chromium/shape_detection/mojom/BarcodeDetectionProvider$EnumerateSupportedFormats_Response;)V
    .locals 0

    const/16 p0, 0xd

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    invoke-interface {p1, p0}, Lorg/chromium/shape_detection/mojom/BarcodeDetectionProvider$EnumerateSupportedFormats_Response;->call([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xc
        0xd
    .end array-data
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0

    return-void
.end method
