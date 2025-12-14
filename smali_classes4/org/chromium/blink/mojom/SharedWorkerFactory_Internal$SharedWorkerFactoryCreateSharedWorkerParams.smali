.class final Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharedWorkerFactoryCreateSharedWorkerParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public browserInterfaceBroker:Lorg/chromium/blink/mojom/BrowserInterfaceBroker;

.field public coepReportingObserverReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/ReportingObserver;",
            ">;"
        }
    .end annotation
.end field

.field public constructorKey:Lorg/chromium/blink/mojom/StorageKey;

.field public contentSettings:Lorg/chromium/blink/mojom/WorkerContentSettingsProxy;

.field public controllerInfo:Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;

.field public devtoolsWorkerToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

.field public dipReportingObserverReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/ReportingObserver;",
            ">;"
        }
    .end annotation
.end field

.field public host:Lorg/chromium/blink/mojom/SharedWorkerHost;

.field public info:Lorg/chromium/blink/mojom/SharedWorkerInfo;

.field public isConstructorSecureContext:Z

.field public mainScriptLoadParams:Lorg/chromium/blink/mojom/WorkerMainScriptLoadParams;

.field public origin:Lorg/chromium/url/internal/mojom/Origin;

.field public pauseOnStart:Z

.field public policyContainer:Lorg/chromium/blink/mojom/PolicyContainer;

.field public preferenceWatcherReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/RendererPreferenceWatcher;",
            ">;"
        }
    .end annotation
.end field

.field public rendererPreferences:Lorg/chromium/blink/mojom/RendererPreferences;

.field public requireCrossSiteRequestForCookies:Z

.field public serviceWorkerContainerInfo:Lorg/chromium/blink/mojom/ServiceWorkerContainerInfoForClient;

.field public sharedWorker:Lorg/chromium/mojo/bindings/InterfaceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/SharedWorker;",
            ">;"
        }
    .end annotation
.end field

.field public subresourceLoaderFactories:Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;

.field public token:Lorg/chromium/blink/mojom/SharedWorkerToken;

.field public uaMetadata:Lorg/chromium/blink/mojom/UserAgentMetadata;

.field public ukmSourceId:J

.field public userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0xa8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0xa8

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/SharedWorkerInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/SharedWorkerInfo;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->info:Lorg/chromium/blink/mojom/SharedWorkerInfo;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/SharedWorkerToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/SharedWorkerToken;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->token:Lorg/chromium/blink/mojom/SharedWorkerToken;

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/StorageKey;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/StorageKey;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->constructorKey:Lorg/chromium/blink/mojom/StorageKey;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->isConstructorSecureContext:Z

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->pauseOnStart:Z

    const/4 v4, 0x2

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->requireCrossSiteRequestForCookies:Z

    const/16 v0, 0x2c

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->preferenceWatcherReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v0, 0x30

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->userAgent:Ljava/lang/String;

    const/16 v0, 0x38

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/UserAgentMetadata;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/UserAgentMetadata;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->uaMetadata:Lorg/chromium/blink/mojom/UserAgentMetadata;

    const/16 v0, 0x40

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/UnguessableToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/UnguessableToken;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->devtoolsWorkerToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v0, 0x48

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/RendererPreferences;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/RendererPreferences;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->rendererPreferences:Lorg/chromium/blink/mojom/RendererPreferences;

    sget-object v0, Lorg/chromium/blink/mojom/WorkerContentSettingsProxy;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v4, 0x50

    invoke-virtual {p0, v4, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/blink/mojom/WorkerContentSettingsProxy;

    iput-object v0, v1, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->contentSettings:Lorg/chromium/blink/mojom/WorkerContentSettingsProxy;

    const/16 v0, 0x58

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/ServiceWorkerContainerInfoForClient;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ServiceWorkerContainerInfoForClient;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->serviceWorkerContainerInfo:Lorg/chromium/blink/mojom/ServiceWorkerContainerInfoForClient;

    const/16 v0, 0x60

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/WorkerMainScriptLoadParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/WorkerMainScriptLoadParams;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->mainScriptLoadParams:Lorg/chromium/blink/mojom/WorkerMainScriptLoadParams;

    const/16 v0, 0x68

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->subresourceLoaderFactories:Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;

    const/16 v0, 0x70

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->controllerInfo:Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;

    const/16 v0, 0x78

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/PolicyContainer;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/PolicyContainer;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->policyContainer:Lorg/chromium/blink/mojom/PolicyContainer;

    sget-object v0, Lorg/chromium/blink/mojom/SharedWorkerHost;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v4, 0x80

    invoke-virtual {p0, v4, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/blink/mojom/SharedWorkerHost;

    iput-object v0, v1, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->host:Lorg/chromium/blink/mojom/SharedWorkerHost;

    const/16 v0, 0x88

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->sharedWorker:Lorg/chromium/mojo/bindings/InterfaceRequest;

    sget-object v0, Lorg/chromium/blink/mojom/BrowserInterfaceBroker;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v4, 0x8c

    invoke-virtual {p0, v4, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/blink/mojom/BrowserInterfaceBroker;

    iput-object v0, v1, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->browserInterfaceBroker:Lorg/chromium/blink/mojom/BrowserInterfaceBroker;

    const/16 v0, 0x94

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->coepReportingObserverReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->ukmSourceId:J

    const/16 v0, 0xa0

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->dipReportingObserverReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    sget-object v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->info:Lorg/chromium/blink/mojom/SharedWorkerInfo;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->token:Lorg/chromium/blink/mojom/SharedWorkerToken;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->constructorKey:Lorg/chromium/blink/mojom/StorageKey;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->isConstructorSecureContext:Z

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->pauseOnStart:Z

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->requireCrossSiteRequestForCookies:Z

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->preferenceWatcherReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v1, 0x2c

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->userAgent:Ljava/lang/String;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->uaMetadata:Lorg/chromium/blink/mojom/UserAgentMetadata;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->devtoolsWorkerToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->rendererPreferences:Lorg/chromium/blink/mojom/RendererPreferences;

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->contentSettings:Lorg/chromium/blink/mojom/WorkerContentSettingsProxy;

    const/16 v1, 0x50

    sget-object v4, Lorg/chromium/blink/mojom/WorkerContentSettingsProxy;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->serviceWorkerContainerInfo:Lorg/chromium/blink/mojom/ServiceWorkerContainerInfoForClient;

    const/16 v1, 0x58

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->mainScriptLoadParams:Lorg/chromium/blink/mojom/WorkerMainScriptLoadParams;

    const/16 v1, 0x60

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->subresourceLoaderFactories:Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;

    const/16 v1, 0x68

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->controllerInfo:Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;

    const/16 v1, 0x70

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->policyContainer:Lorg/chromium/blink/mojom/PolicyContainer;

    const/16 v1, 0x78

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->host:Lorg/chromium/blink/mojom/SharedWorkerHost;

    const/16 v1, 0x80

    sget-object v4, Lorg/chromium/blink/mojom/SharedWorkerHost;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->sharedWorker:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v1, 0x88

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->browserInterfaceBroker:Lorg/chromium/blink/mojom/BrowserInterfaceBroker;

    const/16 v1, 0x8c

    sget-object v4, Lorg/chromium/blink/mojom/BrowserInterfaceBroker;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->coepReportingObserverReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v1, 0x94

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    iget-wide v0, p0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->ukmSourceId:J

    const/16 v2, 0x98

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->dipReportingObserverReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v0, 0xa0

    invoke-virtual {p1, p0, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    return-void
.end method
