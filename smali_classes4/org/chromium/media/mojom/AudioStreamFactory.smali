.class public interface abstract Lorg/chromium/media/mojom/AudioStreamFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/AudioStreamFactory$CreateLoopbackStream_Response;,
        Lorg/chromium/media/mojom/AudioStreamFactory$CreateSwitchableOutputStream_Response;,
        Lorg/chromium/media/mojom/AudioStreamFactory$CreateOutputStream_Response;,
        Lorg/chromium/media/mojom/AudioStreamFactory$CreateInputStream_Response;,
        Lorg/chromium/media/mojom/AudioStreamFactory$Proxy;
    }
.end annotation


# virtual methods
.method public abstract associateInputAndOutputForAec(Lorg/chromium/mojo_base/mojom/UnguessableToken;Ljava/lang/String;)V
.end method

.method public abstract bindMuter(Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;Lorg/chromium/mojo_base/mojom/UnguessableToken;)V
.end method

.method public abstract createInputStream(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/media/mojom/AudioInputStreamClient;Lorg/chromium/media/mojom/AudioInputStreamObserver;Lorg/chromium/media/mojom/AudioLog;Ljava/lang/String;Lorg/chromium/media/mojom/AudioParameters;IZLorg/chromium/media/mojom/AudioProcessingConfig;Lorg/chromium/media/mojom/AudioStreamFactory$CreateInputStream_Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/AudioInputStream;",
            ">;",
            "Lorg/chromium/media/mojom/AudioInputStreamClient;",
            "Lorg/chromium/media/mojom/AudioInputStreamObserver;",
            "Lorg/chromium/media/mojom/AudioLog;",
            "Ljava/lang/String;",
            "Lorg/chromium/media/mojom/AudioParameters;",
            "IZ",
            "Lorg/chromium/media/mojom/AudioProcessingConfig;",
            "Lorg/chromium/media/mojom/AudioStreamFactory$CreateInputStream_Response;",
            ")V"
        }
    .end annotation
.end method

.method public abstract createLoopbackStream(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/media/mojom/AudioInputStreamClient;Lorg/chromium/media/mojom/AudioInputStreamObserver;Lorg/chromium/media/mojom/AudioParameters;ILorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media/mojom/AudioStreamFactory$CreateLoopbackStream_Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/AudioInputStream;",
            ">;",
            "Lorg/chromium/media/mojom/AudioInputStreamClient;",
            "Lorg/chromium/media/mojom/AudioInputStreamObserver;",
            "Lorg/chromium/media/mojom/AudioParameters;",
            "I",
            "Lorg/chromium/mojo_base/mojom/UnguessableToken;",
            "Lorg/chromium/media/mojom/AudioStreamFactory$CreateLoopbackStream_Response;",
            ")V"
        }
    .end annotation
.end method

.method public abstract createOutputStream(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/media/mojom/AudioLog;Ljava/lang/String;Lorg/chromium/media/mojom/AudioParameters;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media/mojom/AudioStreamFactory$CreateOutputStream_Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/AudioOutputStream;",
            ">;",
            "Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;",
            "Lorg/chromium/media/mojom/AudioLog;",
            "Ljava/lang/String;",
            "Lorg/chromium/media/mojom/AudioParameters;",
            "Lorg/chromium/mojo_base/mojom/UnguessableToken;",
            "Lorg/chromium/media/mojom/AudioStreamFactory$CreateOutputStream_Response;",
            ")V"
        }
    .end annotation
.end method

.method public abstract createSwitchableOutputStream(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/media/mojom/AudioLog;Ljava/lang/String;Lorg/chromium/media/mojom/AudioParameters;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media/mojom/AudioStreamFactory$CreateSwitchableOutputStream_Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/AudioOutputStream;",
            ">;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/DeviceSwitchInterface;",
            ">;",
            "Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;",
            "Lorg/chromium/media/mojom/AudioLog;",
            "Ljava/lang/String;",
            "Lorg/chromium/media/mojom/AudioParameters;",
            "Lorg/chromium/mojo_base/mojom/UnguessableToken;",
            "Lorg/chromium/media/mojom/AudioStreamFactory$CreateSwitchableOutputStream_Response;",
            ")V"
        }
    .end annotation
.end method
