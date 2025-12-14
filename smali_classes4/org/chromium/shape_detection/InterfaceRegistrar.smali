.class Lorg/chromium/shape_detection/InterfaceRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# direct methods
.method public static bindBarcodeDetectionProvider(J)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {p0, p1}, Lorg/chromium/shape_detection/InterfaceRegistrar;->messagePipeHandleFromNative(J)Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object p0

    invoke-static {}, Lorg/chromium/shape_detection/BarcodeDetectionProviderImpl;->create()Lorg/chromium/shape_detection/mojom/BarcodeDetectionProvider;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-interface {p0}, Lorg/chromium/mojo/system/Handle;->close()V

    return-void

    :cond_0
    sget-object v0, Lorg/chromium/shape_detection/mojom/BarcodeDetectionProvider;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {v0, p1, p0}, Lorg/chromium/mojo/bindings/Interface$Manager;->bind(Lorg/chromium/mojo/bindings/Interface;Lorg/chromium/mojo/system/MessagePipeHandle;)Lorg/chromium/mojo/bindings/Router;

    return-void
.end method

.method public static bindFaceDetectionProvider(J)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/shape_detection/mojom/FaceDetectionProvider;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v1, Lorg/chromium/shape_detection/FaceDetectionProviderImpl;

    invoke-direct {v1}, Lorg/chromium/shape_detection/FaceDetectionProviderImpl;-><init>()V

    invoke-static {p0, p1}, Lorg/chromium/shape_detection/InterfaceRegistrar;->messagePipeHandleFromNative(J)Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/chromium/mojo/bindings/Interface$Manager;->bind(Lorg/chromium/mojo/bindings/Interface;Lorg/chromium/mojo/system/MessagePipeHandle;)Lorg/chromium/mojo/bindings/Router;

    return-void
.end method

.method public static bindTextDetection(J)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {p0, p1}, Lorg/chromium/shape_detection/InterfaceRegistrar;->messagePipeHandleFromNative(J)Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object p0

    invoke-static {}, Lorg/chromium/shape_detection/TextDetectionImpl;->create()Lorg/chromium/shape_detection/mojom/TextDetection;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-interface {p0}, Lorg/chromium/mojo/system/Handle;->close()V

    return-void

    :cond_0
    sget-object v0, Lorg/chromium/shape_detection/mojom/TextDetection;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {v0, p1, p0}, Lorg/chromium/mojo/bindings/Interface$Manager;->bind(Lorg/chromium/mojo/bindings/Interface;Lorg/chromium/mojo/system/MessagePipeHandle;)Lorg/chromium/mojo/bindings/Router;

    return-void
.end method

.method public static messagePipeHandleFromNative(J)Lorg/chromium/mojo/system/MessagePipeHandle;
    .locals 1

    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImpl;->getInstance()Lorg/chromium/mojo/system/Core;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/mojo/system/Core;->acquireNativeHandle(J)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/mojo/system/UntypedHandle;->toMessagePipeHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object p0

    return-object p0
.end method
