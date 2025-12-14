.class public interface abstract Lorg/chromium/blink/mojom/BlobRegistry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/BlobRegistry$RegisterFromStream_Response;,
        Lorg/chromium/blink/mojom/BlobRegistry$Register_Response;,
        Lorg/chromium/blink/mojom/BlobRegistry$Proxy;
    }
.end annotation


# virtual methods
.method public abstract register(Lorg/chromium/mojo/bindings/InterfaceRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/chromium/blink/mojom/DataElement;Lorg/chromium/blink/mojom/BlobRegistry$Register_Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/Blob;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Lorg/chromium/blink/mojom/DataElement;",
            "Lorg/chromium/blink/mojom/BlobRegistry$Register_Response;",
            ")V"
        }
    .end annotation
.end method

.method public abstract registerFromStream(Ljava/lang/String;Ljava/lang/String;JLorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/blink/mojom/BlobRegistry$RegisterFromStream_Response;)V
.end method
