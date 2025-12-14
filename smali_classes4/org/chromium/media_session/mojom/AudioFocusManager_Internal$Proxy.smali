.class final Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/media_session/mojom/AudioFocusManager$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media_session/mojom/AudioFocusManager_Internal;
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
.method public addObserver(Lorg/chromium/media_session/mojom/AudioFocusObserver;)V
    .locals 3

    new-instance v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerAddObserverParams;

    invoke-direct {v0}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerAddObserverParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerAddObserverParams;->observer:Lorg/chromium/media_session/mojom/AudioFocusObserver;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public addSourceObserver(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media_session/mojom/AudioFocusObserver;)V
    .locals 2

    new-instance v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerAddSourceObserverParams;

    invoke-direct {v0}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerAddSourceObserverParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerAddSourceObserverParams;->sourceId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput-object p2, v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerAddSourceObserverParams;->observer:Lorg/chromium/media_session/mojom/AudioFocusObserver;

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

.method public flushForTesting(Lorg/chromium/media_session/mojom/AudioFocusManager$FlushForTesting_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerFlushForTestingParams;

    invoke-direct {v0}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerFlushForTestingParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/16 v6, 0xc

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerFlushForTestingResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerFlushForTestingResponseParamsForwardToCallback;-><init>(Lorg/chromium/media_session/mojom/AudioFocusManager$FlushForTesting_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getFocusRequests(Lorg/chromium/media_session/mojom/AudioFocusManager$GetFocusRequests_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerGetFocusRequestsParams;

    invoke-direct {v0}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerGetFocusRequestsParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerGetFocusRequestsResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerGetFocusRequestsResponseParamsForwardToCallback;-><init>(Lorg/chromium/media_session/mojom/AudioFocusManager$GetFocusRequests_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getSourceFocusRequests(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media_session/mojom/AudioFocusManager$GetSourceFocusRequests_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerGetSourceFocusRequestsParams;

    invoke-direct {v0}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerGetSourceFocusRequestsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerGetSourceFocusRequestsParams;->sourceId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

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

    const/16 v5, 0x8

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerGetSourceFocusRequestsResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerGetSourceFocusRequestsResponseParamsForwardToCallback;-><init>(Lorg/chromium/media_session/mojom/AudioFocusManager$GetSourceFocusRequests_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public requestAudioFocus(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/media_session/mojom/MediaSession;Lorg/chromium/media_session/mojom/MediaSessionInfo;ILorg/chromium/media_session/mojom/AudioFocusManager$RequestAudioFocus_Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media_session/mojom/AudioFocusRequestClient;",
            ">;",
            "Lorg/chromium/media_session/mojom/MediaSession;",
            "Lorg/chromium/media_session/mojom/MediaSessionInfo;",
            "I",
            "Lorg/chromium/media_session/mojom/AudioFocusManager$RequestAudioFocus_Response;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestAudioFocusParams;

    invoke-direct {v0}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestAudioFocusParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestAudioFocusParams;->client:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p2, v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestAudioFocusParams;->session:Lorg/chromium/media_session/mojom/MediaSession;

    iput-object p3, v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestAudioFocusParams;->sessionInfo:Lorg/chromium/media_session/mojom/MediaSessionInfo;

    iput p4, v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestAudioFocusParams;->type:I

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

    new-instance p2, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestAudioFocusResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestAudioFocusResponseParamsForwardToCallback;-><init>(Lorg/chromium/media_session/mojom/AudioFocusManager$RequestAudioFocus_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public requestGroupedAudioFocus(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/media_session/mojom/MediaSession;Lorg/chromium/media_session/mojom/MediaSessionInfo;ILorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media_session/mojom/AudioFocusManager$RequestGroupedAudioFocus_Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo_base/mojom/UnguessableToken;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media_session/mojom/AudioFocusRequestClient;",
            ">;",
            "Lorg/chromium/media_session/mojom/MediaSession;",
            "Lorg/chromium/media_session/mojom/MediaSessionInfo;",
            "I",
            "Lorg/chromium/mojo_base/mojom/UnguessableToken;",
            "Lorg/chromium/media_session/mojom/AudioFocusManager$RequestGroupedAudioFocus_Response;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestGroupedAudioFocusParams;

    invoke-direct {v0}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestGroupedAudioFocusParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestGroupedAudioFocusParams;->requestId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput-object p2, v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestGroupedAudioFocusParams;->client:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p3, v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestGroupedAudioFocusParams;->session:Lorg/chromium/media_session/mojom/MediaSession;

    iput-object p4, v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestGroupedAudioFocusParams;->sessionInfo:Lorg/chromium/media_session/mojom/MediaSessionInfo;

    iput p5, v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestGroupedAudioFocusParams;->type:I

    iput-object p6, v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestGroupedAudioFocusParams;->groupId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

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

    const/4 p6, 0x4

    invoke-direct {p2, p6, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestGroupedAudioFocusResponseParamsForwardToCallback;

    invoke-direct {p2, p7}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestGroupedAudioFocusResponseParamsForwardToCallback;-><init>(Lorg/chromium/media_session/mojom/AudioFocusManager$RequestGroupedAudioFocus_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public requestIdReleased(Lorg/chromium/mojo_base/mojom/UnguessableToken;)V
    .locals 3

    new-instance v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestIdReleasedParams;

    invoke-direct {v0}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestIdReleasedParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerRequestIdReleasedParams;->requestId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setEnforcementMode(I)V
    .locals 3

    new-instance v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerSetEnforcementModeParams;

    invoke-direct {v0}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerSetEnforcementModeParams;-><init>()V

    iput p1, v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerSetEnforcementModeParams;->mode:I

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

.method public setSource(Lorg/chromium/mojo_base/mojom/UnguessableToken;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerSetSourceParams;

    invoke-direct {v0}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerSetSourceParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerSetSourceParams;->identity:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput-object p2, v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerSetSourceParams;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x6

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public startDuckingAllAudio(Lorg/chromium/mojo_base/mojom/UnguessableToken;)V
    .locals 3

    new-instance v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerStartDuckingAllAudioParams;

    invoke-direct {v0}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerStartDuckingAllAudioParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerStartDuckingAllAudioParams;->exemptedRequestId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

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

.method public stopDuckingAllAudio()V
    .locals 4

    new-instance v0, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerStopDuckingAllAudioParams;

    invoke-direct {v0}, Lorg/chromium/media_session/mojom/AudioFocusManager_Internal$AudioFocusManagerStopDuckingAllAudioParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
