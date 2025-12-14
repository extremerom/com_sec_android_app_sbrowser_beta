.class public interface abstract Lorg/chromium/on_device_model/mojom/OnDeviceModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/on_device_model/mojom/OnDeviceModel$LoadAdaptation_Response;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModel$DetectLanguage_Response;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModel$ClassifyTextSafety_Response;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModel$Proxy;
    }
.end annotation


# virtual methods
.method public abstract classifyTextSafety(Ljava/lang/String;Lorg/chromium/on_device_model/mojom/OnDeviceModel$ClassifyTextSafety_Response;)V
.end method

.method public abstract detectLanguage(Ljava/lang/String;Lorg/chromium/on_device_model/mojom/OnDeviceModel$DetectLanguage_Response;)V
.end method

.method public abstract loadAdaptation(Lorg/chromium/on_device_model/mojom/LoadAdaptationParams;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/on_device_model/mojom/OnDeviceModel$LoadAdaptation_Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/on_device_model/mojom/LoadAdaptationParams;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/on_device_model/mojom/OnDeviceModel;",
            ">;",
            "Lorg/chromium/on_device_model/mojom/OnDeviceModel$LoadAdaptation_Response;",
            ")V"
        }
    .end annotation
.end method

.method public abstract startSession(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/on_device_model/mojom/SessionParams;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/on_device_model/mojom/Session;",
            ">;",
            "Lorg/chromium/on_device_model/mojom/SessionParams;",
            ")V"
        }
    .end annotation
.end method
