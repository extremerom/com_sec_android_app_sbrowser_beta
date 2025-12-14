.class final Lorg/chromium/blink/mojom/PageBroadcast_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/PageBroadcast$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/PageBroadcast_Internal;
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
.method public activatePrerenderedPage(Lorg/chromium/blink/mojom/PrerenderPageActivationParams;Lorg/chromium/blink/mojom/PageBroadcast$ActivatePrerenderedPage_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastActivatePrerenderedPageParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastActivatePrerenderedPageParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastActivatePrerenderedPageParams;->prerenderPageActivationParams:Lorg/chromium/blink/mojom/PrerenderPageActivationParams;

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

    new-instance v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastActivatePrerenderedPageResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastActivatePrerenderedPageResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/PageBroadcast$ActivatePrerenderedPage_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public adjustNightMode(Z)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastAdjustNightModeParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastAdjustNightModeParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastAdjustNightModeParams;->isNightMode:Z

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

.method public audioStateChanged(Z)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastAudioStateChangedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastAudioStateChangedParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastAudioStateChangedParams;->isAudioPlaying:Z

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

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public createRemoteMainFrame(Lorg/chromium/blink/mojom/RemoteFrameToken;Lorg/chromium/blink/mojom/FrameToken;Lorg/chromium/blink/mojom/FrameReplicationState;ZLorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/blink/mojom/RemoteFrameInterfacesFromBrowser;Lorg/chromium/blink/mojom/RemoteMainFrameInterfaces;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastCreateRemoteMainFrameParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastCreateRemoteMainFrameParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastCreateRemoteMainFrameParams;->token:Lorg/chromium/blink/mojom/RemoteFrameToken;

    iput-object p2, v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastCreateRemoteMainFrameParams;->openerFrameToken:Lorg/chromium/blink/mojom/FrameToken;

    iput-object p3, v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastCreateRemoteMainFrameParams;->replicationState:Lorg/chromium/blink/mojom/FrameReplicationState;

    iput-boolean p4, v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastCreateRemoteMainFrameParams;->isLoading:Z

    iput-object p5, v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastCreateRemoteMainFrameParams;->devtoolsFrameToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput-object p6, v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastCreateRemoteMainFrameParams;->remoteFrameInterfaces:Lorg/chromium/blink/mojom/RemoteFrameInterfacesFromBrowser;

    iput-object p7, v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastCreateRemoteMainFrameParams;->remoteMainFrameInterfaces:Lorg/chromium/blink/mojom/RemoteMainFrameInterfaces;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x9

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setBackgroundPlayEnabled(Z)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetBackgroundPlayEnabledParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetBackgroundPlayEnabledParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetBackgroundPlayEnabledParams;->enabled:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setHistoryIndexAndLength(II)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetHistoryIndexAndLengthParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetHistoryIndexAndLengthParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetHistoryIndexAndLengthParams;->index:I

    iput p2, v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetHistoryIndexAndLengthParams;->length:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x7

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setPageAttributionSupport(I)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageAttributionSupportParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageAttributionSupportParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageAttributionSupportParams;->support:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setPageBaseBackgroundColor(Lorg/chromium/skia/mojom/SkColor;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageBaseBackgroundColorParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageBaseBackgroundColorParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageBaseBackgroundColorParams;->color:Lorg/chromium/skia/mojom/SkColor;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setPageLifecycleState(Lorg/chromium/blink/mojom/PageLifecycleState;Lorg/chromium/blink/mojom/PageRestoreParams;Lorg/chromium/blink/mojom/PageBroadcast$SetPageLifecycleState_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageLifecycleStateParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageLifecycleStateParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageLifecycleStateParams;->state:Lorg/chromium/blink/mojom/PageLifecycleState;

    iput-object p2, v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageLifecycleStateParams;->pageRestoreParams:Lorg/chromium/blink/mojom/PageRestoreParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageLifecycleStateResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastSetPageLifecycleStateResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/PageBroadcast$SetPageLifecycleState_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public updateColorProviders(Lorg/chromium/blink/mojom/ColorProviderColorMaps;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastUpdateColorProvidersParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastUpdateColorProvidersParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastUpdateColorProvidersParams;->colorProviderColors:Lorg/chromium/blink/mojom/ColorProviderColorMaps;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public updatePageBrowsingContextGroup(Lorg/chromium/blink/mojom/BrowsingContextGroupInfo;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastUpdatePageBrowsingContextGroupParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastUpdatePageBrowsingContextGroupParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastUpdatePageBrowsingContextGroupParams;->browsingContextGroupInfo:Lorg/chromium/blink/mojom/BrowsingContextGroupInfo;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public updateRendererPreferences(Lorg/chromium/blink/mojom/RendererPreferences;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastUpdateRendererPreferencesParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastUpdateRendererPreferencesParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastUpdateRendererPreferencesParams;->preferences:Lorg/chromium/blink/mojom/RendererPreferences;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public updateWebPreferences(Lorg/chromium/blink/mojom/WebPreferences;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastUpdateWebPreferencesParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastUpdateWebPreferencesParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/PageBroadcast_Internal$PageBroadcastUpdateWebPreferencesParams;->preferences:Lorg/chromium/blink/mojom/WebPreferences;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
