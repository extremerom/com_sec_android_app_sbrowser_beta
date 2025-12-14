.class final Lorg/chromium/blink/mojom/DedicatedWorkerHostFactory_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/DedicatedWorkerHostFactory$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/DedicatedWorkerHostFactory_Internal;
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
.method public createWorkerHostAndStartScriptLoad(Lorg/chromium/blink/mojom/DedicatedWorkerToken;Lorg/chromium/url/mojom/Url;ILorg/chromium/blink/mojom/FetchClientSettingsObject;Lorg/chromium/blink/mojom/BlobUrlToken;Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient;I)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactory_Internal$DedicatedWorkerHostFactoryCreateWorkerHostAndStartScriptLoadParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactory_Internal$DedicatedWorkerHostFactoryCreateWorkerHostAndStartScriptLoadParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactory_Internal$DedicatedWorkerHostFactoryCreateWorkerHostAndStartScriptLoadParams;->token:Lorg/chromium/blink/mojom/DedicatedWorkerToken;

    iput-object p2, v0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactory_Internal$DedicatedWorkerHostFactoryCreateWorkerHostAndStartScriptLoadParams;->scriptUrl:Lorg/chromium/url/mojom/Url;

    iput p3, v0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactory_Internal$DedicatedWorkerHostFactoryCreateWorkerHostAndStartScriptLoadParams;->credentialsMode:I

    iput-object p4, v0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactory_Internal$DedicatedWorkerHostFactoryCreateWorkerHostAndStartScriptLoadParams;->outsideFetchClientSettingsObject:Lorg/chromium/blink/mojom/FetchClientSettingsObject;

    iput-object p5, v0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactory_Internal$DedicatedWorkerHostFactoryCreateWorkerHostAndStartScriptLoadParams;->blobUrlToken:Lorg/chromium/blink/mojom/BlobUrlToken;

    iput-object p6, v0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactory_Internal$DedicatedWorkerHostFactoryCreateWorkerHostAndStartScriptLoadParams;->client:Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient;

    iput p7, v0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactory_Internal$DedicatedWorkerHostFactoryCreateWorkerHostAndStartScriptLoadParams;->storageAccessApiStatus:I

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
