.class public interface abstract Lorg/chromium/on_device_model/mojom/Session;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/on_device_model/mojom/Session$Score_Response;,
        Lorg/chromium/on_device_model/mojom/Session$GetSizeInTokens_Response;,
        Lorg/chromium/on_device_model/mojom/Session$Proxy;
    }
.end annotation


# virtual methods
.method public abstract append(Lorg/chromium/on_device_model/mojom/AppendOptions;Lorg/chromium/on_device_model/mojom/ContextClient;)V
.end method

.method public abstract clone(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/on_device_model/mojom/Session;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract generate(Lorg/chromium/on_device_model/mojom/GenerateOptions;Lorg/chromium/on_device_model/mojom/StreamingResponder;)V
.end method

.method public abstract getSizeInTokens(Lorg/chromium/on_device_model/mojom/Input;Lorg/chromium/on_device_model/mojom/Session$GetSizeInTokens_Response;)V
.end method

.method public abstract score(Ljava/lang/String;Lorg/chromium/on_device_model/mojom/Session$Score_Response;)V
.end method
