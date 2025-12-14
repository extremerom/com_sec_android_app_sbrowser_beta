.class final Lorg/chromium/blink/mojom/BlobRegistry_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/BlobRegistry$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/BlobRegistry_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    return-void
.end method


# virtual methods
.method public register(Lorg/chromium/mojo/bindings/InterfaceRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/chromium/blink/mojom/DataElement;Lorg/chromium/blink/mojom/BlobRegistry$Register_Response;)V
    .locals 2
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

    new-instance v0, Lorg/chromium/blink/mojom/BlobRegistry_Internal$BlobRegistryRegisterParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/BlobRegistry_Internal$BlobRegistryRegisterParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/BlobRegistry_Internal$BlobRegistryRegisterParams;->blob:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p2, v0, Lorg/chromium/blink/mojom/BlobRegistry_Internal$BlobRegistryRegisterParams;->uuid:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/blink/mojom/BlobRegistry_Internal$BlobRegistryRegisterParams;->contentType:Ljava/lang/String;

    iput-object p4, v0, Lorg/chromium/blink/mojom/BlobRegistry_Internal$BlobRegistryRegisterParams;->contentDisposition:Ljava/lang/String;

    iput-object p5, v0, Lorg/chromium/blink/mojom/BlobRegistry_Internal$BlobRegistryRegisterParams;->elements:[Lorg/chromium/blink/mojom/DataElement;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x1

    const-wide/16 p4, 0x0

    const/4 v1, 0x0

    invoke-direct {p2, v1, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/BlobRegistry_Internal$BlobRegistryRegisterResponseParamsForwardToCallback;

    invoke-direct {p2, p6}, Lorg/chromium/blink/mojom/BlobRegistry_Internal$BlobRegistryRegisterResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/BlobRegistry$Register_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public registerFromStream(Ljava/lang/String;Ljava/lang/String;JLorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/blink/mojom/BlobRegistry$RegisterFromStream_Response;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/BlobRegistry_Internal$BlobRegistryRegisterFromStreamParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/BlobRegistry_Internal$BlobRegistryRegisterFromStreamParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/BlobRegistry_Internal$BlobRegistryRegisterFromStreamParams;->contentType:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/blink/mojom/BlobRegistry_Internal$BlobRegistryRegisterFromStreamParams;->contentDisposition:Ljava/lang/String;

    iput-wide p3, v0, Lorg/chromium/blink/mojom/BlobRegistry_Internal$BlobRegistryRegisterFromStreamParams;->lengthHint:J

    iput-object p5, v0, Lorg/chromium/blink/mojom/BlobRegistry_Internal$BlobRegistryRegisterFromStreamParams;->data:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iput-object p6, v0, Lorg/chromium/blink/mojom/BlobRegistry_Internal$BlobRegistryRegisterFromStreamParams;->progressClient:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x1

    const-wide/16 p4, 0x0

    invoke-direct {p2, p3, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/BlobRegistry_Internal$BlobRegistryRegisterFromStreamResponseParamsForwardToCallback;

    invoke-direct {p2, p7}, Lorg/chromium/blink/mojom/BlobRegistry_Internal$BlobRegistryRegisterFromStreamResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/BlobRegistry$RegisterFromStream_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
