.class public interface abstract Lorg/chromium/blink/mojom/Blob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/Blob$GetInternalUuid_Response;,
        Lorg/chromium/blink/mojom/Blob$CaptureSnapshot_Response;,
        Lorg/chromium/blink/mojom/Blob$ReadSideData_Response;,
        Lorg/chromium/blink/mojom/Blob$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/Blob;",
            "Lorg/chromium/blink/mojom/Blob$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/chromium/blink/mojom/Blob_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/Blob;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract asDataPipeGetter(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/DataPipeGetter;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract captureSnapshot(Lorg/chromium/blink/mojom/Blob$CaptureSnapshot_Response;)V
.end method

.method public abstract clone(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/Blob;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getInternalUuid(Lorg/chromium/blink/mojom/Blob$GetInternalUuid_Response;)V
.end method

.method public abstract load(Lorg/chromium/mojo/bindings/InterfaceRequest;Ljava/lang/String;Lorg/chromium/network/mojom/HttpRequestHeaders;Lorg/chromium/network/mojom/UrlLoaderClient;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/UrlLoader;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/chromium/network/mojom/HttpRequestHeaders;",
            "Lorg/chromium/network/mojom/UrlLoaderClient;",
            ")V"
        }
    .end annotation
.end method

.method public abstract readAll(Lorg/chromium/mojo/system/DataPipe$ProducerHandle;Lorg/chromium/blink/mojom/BlobReaderClient;)V
.end method

.method public abstract readRange(JJLorg/chromium/mojo/system/DataPipe$ProducerHandle;Lorg/chromium/blink/mojom/BlobReaderClient;)V
.end method

.method public abstract readSideData(Lorg/chromium/blink/mojom/Blob$ReadSideData_Response;)V
.end method
