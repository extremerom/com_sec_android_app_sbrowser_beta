.class final Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/SharedWorkerFactory$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal;
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
.method public createSharedWorker(Lorg/chromium/blink/mojom/SharedWorkerInfo;Lorg/chromium/blink/mojom/SharedWorkerToken;Lorg/chromium/blink/mojom/StorageKey;Lorg/chromium/url/internal/mojom/Origin;ZLjava/lang/String;Lorg/chromium/blink/mojom/UserAgentMetadata;ZLorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/blink/mojom/RendererPreferences;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/blink/mojom/WorkerContentSettingsProxy;Lorg/chromium/blink/mojom/ServiceWorkerContainerInfoForClient;Lorg/chromium/blink/mojom/WorkerMainScriptLoadParams;Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;Lorg/chromium/blink/mojom/PolicyContainer;Lorg/chromium/blink/mojom/SharedWorkerHost;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/blink/mojom/BrowserInterfaceBroker;JZLorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/blink/mojom/SharedWorkerInfo;",
            "Lorg/chromium/blink/mojom/SharedWorkerToken;",
            "Lorg/chromium/blink/mojom/StorageKey;",
            "Lorg/chromium/url/internal/mojom/Origin;",
            "Z",
            "Ljava/lang/String;",
            "Lorg/chromium/blink/mojom/UserAgentMetadata;",
            "Z",
            "Lorg/chromium/mojo_base/mojom/UnguessableToken;",
            "Lorg/chromium/blink/mojom/RendererPreferences;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/RendererPreferenceWatcher;",
            ">;",
            "Lorg/chromium/blink/mojom/WorkerContentSettingsProxy;",
            "Lorg/chromium/blink/mojom/ServiceWorkerContainerInfoForClient;",
            "Lorg/chromium/blink/mojom/WorkerMainScriptLoadParams;",
            "Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;",
            "Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;",
            "Lorg/chromium/blink/mojom/PolicyContainer;",
            "Lorg/chromium/blink/mojom/SharedWorkerHost;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/SharedWorker;",
            ">;",
            "Lorg/chromium/blink/mojom/BrowserInterfaceBroker;",
            "JZ",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/ReportingObserver;",
            ">;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/ReportingObserver;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->info:Lorg/chromium/blink/mojom/SharedWorkerInfo;

    move-object v1, p2

    iput-object v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->token:Lorg/chromium/blink/mojom/SharedWorkerToken;

    move-object v1, p3

    iput-object v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->constructorKey:Lorg/chromium/blink/mojom/StorageKey;

    move-object v1, p4

    iput-object v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

    move v1, p5

    iput-boolean v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->isConstructorSecureContext:Z

    move-object v1, p6

    iput-object v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->userAgent:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->uaMetadata:Lorg/chromium/blink/mojom/UserAgentMetadata;

    move v1, p8

    iput-boolean v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->pauseOnStart:Z

    move-object v1, p9

    iput-object v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->devtoolsWorkerToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    move-object v1, p10

    iput-object v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->rendererPreferences:Lorg/chromium/blink/mojom/RendererPreferences;

    move-object/from16 v1, p11

    iput-object v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->preferenceWatcherReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-object/from16 v1, p12

    iput-object v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->contentSettings:Lorg/chromium/blink/mojom/WorkerContentSettingsProxy;

    move-object/from16 v1, p13

    iput-object v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->serviceWorkerContainerInfo:Lorg/chromium/blink/mojom/ServiceWorkerContainerInfoForClient;

    move-object/from16 v1, p14

    iput-object v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->mainScriptLoadParams:Lorg/chromium/blink/mojom/WorkerMainScriptLoadParams;

    move-object/from16 v1, p15

    iput-object v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->subresourceLoaderFactories:Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;

    move-object/from16 v1, p16

    iput-object v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->controllerInfo:Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;

    move-object/from16 v1, p17

    iput-object v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->policyContainer:Lorg/chromium/blink/mojom/PolicyContainer;

    move-object/from16 v1, p18

    iput-object v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->host:Lorg/chromium/blink/mojom/SharedWorkerHost;

    move-object/from16 v1, p19

    iput-object v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->sharedWorker:Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-object/from16 v1, p20

    iput-object v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->browserInterfaceBroker:Lorg/chromium/blink/mojom/BrowserInterfaceBroker;

    move-wide/from16 v1, p21

    iput-wide v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->ukmSourceId:J

    move/from16 v1, p23

    iput-boolean v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->requireCrossSiteRequestForCookies:Z

    move-object/from16 v1, p24

    iput-object v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->coepReportingObserverReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-object/from16 v1, p25

    iput-object v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->dipReportingObserverReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
