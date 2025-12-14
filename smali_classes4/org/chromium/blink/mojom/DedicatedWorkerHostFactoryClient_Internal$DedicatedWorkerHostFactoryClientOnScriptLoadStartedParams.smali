.class final Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public backForwardCacheControllerHost:Lorg/chromium/blink/mojom/BackForwardCacheControllerHost;

.field public coepReportingObserverReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/ReportingObserver;",
            ">;"
        }
    .end annotation
.end field

.field public controllerInfo:Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;

.field public dipReportingObserverReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/ReportingObserver;",
            ">;"
        }
    .end annotation
.end field

.field public mainScriptLoadParams:Lorg/chromium/blink/mojom/WorkerMainScriptLoadParams;

.field public serviceWorkerContainerInfo:Lorg/chromium/blink/mojom/ServiceWorkerContainerInfoForClient;

.field public subresourceLoaderFactories:Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;

.field public subresourceLoaderUpdater:Lorg/chromium/mojo/bindings/InterfaceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/SubresourceLoaderUpdater;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/ServiceWorkerContainerInfoForClient;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ServiceWorkerContainerInfoForClient;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->serviceWorkerContainerInfo:Lorg/chromium/blink/mojom/ServiceWorkerContainerInfoForClient;

    const/16 v0, 0x10

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/WorkerMainScriptLoadParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/WorkerMainScriptLoadParams;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->mainScriptLoadParams:Lorg/chromium/blink/mojom/WorkerMainScriptLoadParams;

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->subresourceLoaderFactories:Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->subresourceLoaderUpdater:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v0, 0x24

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->coepReportingObserverReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->controllerInfo:Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;

    sget-object v0, Lorg/chromium/blink/mojom/BackForwardCacheControllerHost;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v4, 0x30

    invoke-virtual {p0, v4, v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/blink/mojom/BackForwardCacheControllerHost;

    iput-object v0, v1, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->backForwardCacheControllerHost:Lorg/chromium/blink/mojom/BackForwardCacheControllerHost;

    const/16 v0, 0x38

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->dipReportingObserverReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    sget-object v0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->serviceWorkerContainerInfo:Lorg/chromium/blink/mojom/ServiceWorkerContainerInfoForClient;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->mainScriptLoadParams:Lorg/chromium/blink/mojom/WorkerMainScriptLoadParams;

    const/16 v1, 0x10

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->subresourceLoaderFactories:Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->subresourceLoaderUpdater:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->coepReportingObserverReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->controllerInfo:Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->backForwardCacheControllerHost:Lorg/chromium/blink/mojom/BackForwardCacheControllerHost;

    const/16 v1, 0x30

    sget-object v4, Lorg/chromium/blink/mojom/BackForwardCacheControllerHost;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/DedicatedWorkerHostFactoryClient_Internal$DedicatedWorkerHostFactoryClientOnScriptLoadStartedParams;->dipReportingObserverReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v0, 0x38

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    return-void
.end method
