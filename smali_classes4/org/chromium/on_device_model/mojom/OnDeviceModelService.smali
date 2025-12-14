.class public interface abstract Lorg/chromium/on_device_model/mojom/OnDeviceModelService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/on_device_model/mojom/OnDeviceModelService$GetEstimatedPerformanceClass_Response;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelService$GetCapabilities_Response;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelService$LoadModel_Response;,
        Lorg/chromium/on_device_model/mojom/OnDeviceModelService$Proxy;
    }
.end annotation


# virtual methods
.method public abstract getCapabilities(Lorg/chromium/on_device_model/mojom/ModelAssets;Lorg/chromium/on_device_model/mojom/OnDeviceModelService$GetCapabilities_Response;)V
.end method

.method public abstract getEstimatedPerformanceClass(Lorg/chromium/on_device_model/mojom/OnDeviceModelService$GetEstimatedPerformanceClass_Response;)V
.end method

.method public abstract loadModel(Lorg/chromium/on_device_model/mojom/LoadModelParams;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/on_device_model/mojom/OnDeviceModelService$LoadModel_Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/on_device_model/mojom/LoadModelParams;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/on_device_model/mojom/OnDeviceModel;",
            ">;",
            "Lorg/chromium/on_device_model/mojom/OnDeviceModelService$LoadModel_Response;",
            ")V"
        }
    .end annotation
.end method

.method public abstract loadTextSafetyModel(Lorg/chromium/on_device_model/mojom/TextSafetyModelParams;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/on_device_model/mojom/TextSafetyModelParams;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/on_device_model/mojom/TextSafetyModel;",
            ">;)V"
        }
    .end annotation
.end method
