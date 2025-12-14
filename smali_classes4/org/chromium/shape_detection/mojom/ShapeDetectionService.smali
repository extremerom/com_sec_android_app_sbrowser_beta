.class public interface abstract Lorg/chromium/shape_detection/mojom/ShapeDetectionService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/shape_detection/mojom/ShapeDetectionService$Proxy;
    }
.end annotation


# virtual methods
.method public abstract bindBarcodeDetectionProvider(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/shape_detection/mojom/BarcodeDetectionProvider;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindFaceDetectionProvider(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/shape_detection/mojom/FaceDetectionProvider;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindTextDetection(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/shape_detection/mojom/TextDetection;",
            ">;)V"
        }
    .end annotation
.end method
