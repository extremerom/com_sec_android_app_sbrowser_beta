.class final Lorg/chromium/service_manager/mojom/Connector_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/service_manager/mojom/Connector$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/service_manager/mojom/Connector_Internal;
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
.method public bindInterface(Lorg/chromium/service_manager/mojom/ServiceFilter;Ljava/lang/String;Lorg/chromium/mojo/system/MessagePipeHandle;ILorg/chromium/service_manager/mojom/Connector$BindInterface_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/service_manager/mojom/Connector_Internal$ConnectorBindInterfaceParams;

    invoke-direct {v0}, Lorg/chromium/service_manager/mojom/Connector_Internal$ConnectorBindInterfaceParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/service_manager/mojom/Connector_Internal$ConnectorBindInterfaceParams;->filter:Lorg/chromium/service_manager/mojom/ServiceFilter;

    iput-object p2, v0, Lorg/chromium/service_manager/mojom/Connector_Internal$ConnectorBindInterfaceParams;->interfaceName:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/service_manager/mojom/Connector_Internal$ConnectorBindInterfaceParams;->interfacePipe:Lorg/chromium/mojo/system/MessagePipeHandle;

    iput p4, v0, Lorg/chromium/service_manager/mojom/Connector_Internal$ConnectorBindInterfaceParams;->priority:I

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

    const/4 p4, 0x0

    invoke-direct {p2, p4, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/service_manager/mojom/Connector_Internal$ConnectorBindInterfaceResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/service_manager/mojom/Connector_Internal$ConnectorBindInterfaceResponseParamsForwardToCallback;-><init>(Lorg/chromium/service_manager/mojom/Connector$BindInterface_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public clone(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/service_manager/mojom/Connector;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/service_manager/mojom/Connector_Internal$ConnectorCloneParams;

    invoke-direct {v0}, Lorg/chromium/service_manager/mojom/Connector_Internal$ConnectorCloneParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/service_manager/mojom/Connector_Internal$ConnectorCloneParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public queryService(Ljava/lang/String;Lorg/chromium/service_manager/mojom/Connector$QueryService_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/service_manager/mojom/Connector_Internal$ConnectorQueryServiceParams;

    invoke-direct {v0}, Lorg/chromium/service_manager/mojom/Connector_Internal$ConnectorQueryServiceParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/service_manager/mojom/Connector_Internal$ConnectorQueryServiceParams;->serviceName:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/service_manager/mojom/Connector_Internal$ConnectorQueryServiceResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/service_manager/mojom/Connector_Internal$ConnectorQueryServiceResponseParamsForwardToCallback;-><init>(Lorg/chromium/service_manager/mojom/Connector$QueryService_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public registerServiceInstance(Lorg/chromium/service_manager/mojom/Identity;Lorg/chromium/mojo/system/MessagePipeHandle;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/service_manager/mojom/Connector$RegisterServiceInstance_Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/service_manager/mojom/Identity;",
            "Lorg/chromium/mojo/system/MessagePipeHandle;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/service_manager/mojom/ProcessMetadata;",
            ">;",
            "Lorg/chromium/service_manager/mojom/Connector$RegisterServiceInstance_Response;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/service_manager/mojom/Connector_Internal$ConnectorRegisterServiceInstanceParams;

    invoke-direct {v0}, Lorg/chromium/service_manager/mojom/Connector_Internal$ConnectorRegisterServiceInstanceParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/service_manager/mojom/Connector_Internal$ConnectorRegisterServiceInstanceParams;->identity:Lorg/chromium/service_manager/mojom/Identity;

    iput-object p2, v0, Lorg/chromium/service_manager/mojom/Connector_Internal$ConnectorRegisterServiceInstanceParams;->service:Lorg/chromium/mojo/system/MessagePipeHandle;

    iput-object p3, v0, Lorg/chromium/service_manager/mojom/Connector_Internal$ConnectorRegisterServiceInstanceParams;->metadataReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

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

    const/4 v3, 0x3

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/service_manager/mojom/Connector_Internal$ConnectorRegisterServiceInstanceResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/service_manager/mojom/Connector_Internal$ConnectorRegisterServiceInstanceResponseParamsForwardToCallback;-><init>(Lorg/chromium/service_manager/mojom/Connector$RegisterServiceInstance_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public warmService(Lorg/chromium/service_manager/mojom/ServiceFilter;Lorg/chromium/service_manager/mojom/Connector$WarmService_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/service_manager/mojom/Connector_Internal$ConnectorWarmServiceParams;

    invoke-direct {v0}, Lorg/chromium/service_manager/mojom/Connector_Internal$ConnectorWarmServiceParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/service_manager/mojom/Connector_Internal$ConnectorWarmServiceParams;->filter:Lorg/chromium/service_manager/mojom/ServiceFilter;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/service_manager/mojom/Connector_Internal$ConnectorWarmServiceResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/service_manager/mojom/Connector_Internal$ConnectorWarmServiceResponseParamsForwardToCallback;-><init>(Lorg/chromium/service_manager/mojom/Connector$WarmService_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
