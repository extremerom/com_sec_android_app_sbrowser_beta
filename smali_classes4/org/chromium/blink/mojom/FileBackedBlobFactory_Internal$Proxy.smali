.class final Lorg/chromium/blink/mojom/FileBackedBlobFactory_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/FileBackedBlobFactory$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/FileBackedBlobFactory_Internal;
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
.method public registerBlob(Lorg/chromium/mojo/bindings/InterfaceRequest;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/blink/mojom/DataElementFile;)V
    .locals 1
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

    new-instance v0, Lorg/chromium/blink/mojom/FileBackedBlobFactory_Internal$FileBackedBlobFactoryRegisterBlobParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileBackedBlobFactory_Internal$FileBackedBlobFactoryRegisterBlobParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FileBackedBlobFactory_Internal$FileBackedBlobFactoryRegisterBlobParams;->blob:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p2, v0, Lorg/chromium/blink/mojom/FileBackedBlobFactory_Internal$FileBackedBlobFactoryRegisterBlobParams;->uuid:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/blink/mojom/FileBackedBlobFactory_Internal$FileBackedBlobFactoryRegisterBlobParams;->contentType:Ljava/lang/String;

    iput-object p4, v0, Lorg/chromium/blink/mojom/FileBackedBlobFactory_Internal$FileBackedBlobFactoryRegisterBlobParams;->file:Lorg/chromium/blink/mojom/DataElementFile;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public registerBlobSync(Lorg/chromium/mojo/bindings/InterfaceRequest;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/blink/mojom/DataElementFile;Lorg/chromium/blink/mojom/FileBackedBlobFactory$RegisterBlobSync_Response;)V
    .locals 3
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

    new-instance v0, Lorg/chromium/blink/mojom/FileBackedBlobFactory_Internal$FileBackedBlobFactoryRegisterBlobSyncParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileBackedBlobFactory_Internal$FileBackedBlobFactoryRegisterBlobSyncParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FileBackedBlobFactory_Internal$FileBackedBlobFactoryRegisterBlobSyncParams;->blob:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p2, v0, Lorg/chromium/blink/mojom/FileBackedBlobFactory_Internal$FileBackedBlobFactoryRegisterBlobSyncParams;->uuid:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/blink/mojom/FileBackedBlobFactory_Internal$FileBackedBlobFactoryRegisterBlobSyncParams;->contentType:Ljava/lang/String;

    iput-object p4, v0, Lorg/chromium/blink/mojom/FileBackedBlobFactory_Internal$FileBackedBlobFactoryRegisterBlobSyncParams;->file:Lorg/chromium/blink/mojom/DataElementFile;

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

    const-wide/16 v1, 0x0

    invoke-direct {p2, p3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/FileBackedBlobFactory_Internal$FileBackedBlobFactoryRegisterBlobSyncResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/blink/mojom/FileBackedBlobFactory_Internal$FileBackedBlobFactoryRegisterBlobSyncResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FileBackedBlobFactory$RegisterBlobSync_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
