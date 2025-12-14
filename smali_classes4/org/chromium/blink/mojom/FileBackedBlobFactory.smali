.class public interface abstract Lorg/chromium/blink/mojom/FileBackedBlobFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FileBackedBlobFactory$RegisterBlobSync_Response;,
        Lorg/chromium/blink/mojom/FileBackedBlobFactory$Proxy;
    }
.end annotation


# virtual methods
.method public abstract registerBlob(Lorg/chromium/mojo/bindings/InterfaceRequest;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/blink/mojom/DataElementFile;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/Blob;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/chromium/blink/mojom/DataElementFile;",
            ")V"
        }
    .end annotation
.end method

.method public abstract registerBlobSync(Lorg/chromium/mojo/bindings/InterfaceRequest;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/blink/mojom/DataElementFile;Lorg/chromium/blink/mojom/FileBackedBlobFactory$RegisterBlobSync_Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/Blob;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/chromium/blink/mojom/DataElementFile;",
            "Lorg/chromium/blink/mojom/FileBackedBlobFactory$RegisterBlobSync_Response;",
            ")V"
        }
    .end annotation
.end method
