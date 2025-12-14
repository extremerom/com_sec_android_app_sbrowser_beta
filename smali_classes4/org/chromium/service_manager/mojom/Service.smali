.class public interface abstract Lorg/chromium/service_manager/mojom/Service;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/service_manager/mojom/Service$OnBindInterface_Response;,
        Lorg/chromium/service_manager/mojom/Service$OnStart_Response;,
        Lorg/chromium/service_manager/mojom/Service$Proxy;
    }
.end annotation


# virtual methods
.method public abstract createPackagedServiceInstance(Lorg/chromium/service_manager/mojom/Identity;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/service_manager/mojom/ProcessMetadata;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/service_manager/mojom/Identity;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/service_manager/mojom/Service;",
            ">;",
            "Lorg/chromium/service_manager/mojom/ProcessMetadata;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onBindInterface(Lorg/chromium/service_manager/mojom/BindSourceInfo;Ljava/lang/String;Lorg/chromium/mojo/system/MessagePipeHandle;Lorg/chromium/service_manager/mojom/Service$OnBindInterface_Response;)V
.end method

.method public abstract onStart(Lorg/chromium/service_manager/mojom/Identity;Lorg/chromium/service_manager/mojom/Service$OnStart_Response;)V
.end method
