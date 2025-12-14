.class public Lorg/chromium/shape_detection/FaceDetectionProviderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/shape_detection/mojom/FaceDetectionProvider;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public createFaceDetection(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/shape_detection/mojom/FaceDetectorOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/shape_detection/mojom/FaceDetection;",
            ">;",
            "Lorg/chromium/shape_detection/mojom/FaceDetectorOptions;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/gms/ChromiumPlayServicesAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/chromium/shape_detection/mojom/FaceDetection;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v0, Lorg/chromium/shape_detection/FaceDetectionImplGmsCore;

    invoke-direct {v0, p2}, Lorg/chromium/shape_detection/FaceDetectionImplGmsCore;-><init>(Lorg/chromium/shape_detection/mojom/FaceDetectorOptions;)V

    invoke-virtual {p0, v0, p1}, Lorg/chromium/mojo/bindings/Interface$Manager;->bind(Lorg/chromium/mojo/bindings/Interface;Lorg/chromium/mojo/bindings/InterfaceRequest;)Lorg/chromium/mojo/bindings/Router;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/chromium/shape_detection/mojom/FaceDetection;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v0, Lorg/chromium/shape_detection/FaceDetectionImpl;

    invoke-direct {v0, p2}, Lorg/chromium/shape_detection/FaceDetectionImpl;-><init>(Lorg/chromium/shape_detection/mojom/FaceDetectorOptions;)V

    invoke-virtual {p0, v0, p1}, Lorg/chromium/mojo/bindings/Interface$Manager;->bind(Lorg/chromium/mojo/bindings/Interface;Lorg/chromium/mojo/bindings/InterfaceRequest;)Lorg/chromium/mojo/bindings/Router;

    :goto_0
    return-void
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0

    return-void
.end method
