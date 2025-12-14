.class public interface abstract Lorg/chromium/service_manager/mojom/Connector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/service_manager/mojom/Connector$RegisterServiceInstance_Response;,
        Lorg/chromium/service_manager/mojom/Connector$WarmService_Response;,
        Lorg/chromium/service_manager/mojom/Connector$QueryService_Response;,
        Lorg/chromium/service_manager/mojom/Connector$BindInterface_Response;,
        Lorg/chromium/service_manager/mojom/Connector$Proxy;
    }
.end annotation


# virtual methods
.method public abstract bindInterface(Lorg/chromium/service_manager/mojom/ServiceFilter;Ljava/lang/String;Lorg/chromium/mojo/system/MessagePipeHandle;ILorg/chromium/service_manager/mojom/Connector$BindInterface_Response;)V
.end method

.method public abstract clone(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/service_manager/mojom/Connector;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryService(Ljava/lang/String;Lorg/chromium/service_manager/mojom/Connector$QueryService_Response;)V
.end method

.method public abstract registerServiceInstance(Lorg/chromium/service_manager/mojom/Identity;Lorg/chromium/mojo/system/MessagePipeHandle;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/service_manager/mojom/Connector$RegisterServiceInstance_Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/service_manager/mojom/Identity;",
            "Lorg/chromium/mojo/system/MessagePipeHandle;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/service_manager/mojom/ProcessMetadata;",
            ">;",
            "Lorg/chromium/service_manager/mojom/Connector$RegisterServiceInstance_Response;",
            ")V"
        }
    .end annotation
.end method

.method public abstract warmService(Lorg/chromium/service_manager/mojom/ServiceFilter;Lorg/chromium/service_manager/mojom/Connector$WarmService_Response;)V
.end method
