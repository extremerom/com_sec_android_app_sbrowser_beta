.class final Lorg/chromium/blink/mojom/LocalFrame_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/LocalFrame$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/LocalFrame_Internal;
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
.method public addMessageToConsole(ILjava/lang/String;Z)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddMessageToConsoleParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddMessageToConsoleParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddMessageToConsoleParams;->level:I

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddMessageToConsoleParams;->message:Ljava/lang/String;

    iput-boolean p3, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddMessageToConsoleParams;->discardDuplicates:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x6

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public addResourceTimingEntryForFailedSubframeNavigation(Lorg/chromium/blink/mojom/FrameToken;Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo_base/mojom/TimeTicks;Lorg/chromium/mojo_base/mojom/TimeTicks;Lorg/chromium/mojo_base/mojom/TimeTicks;Lorg/chromium/mojo_base/mojom/TimeTicks;ILjava/lang/String;Lorg/chromium/network/mojom/LoadTimingInfo;ILjava/lang/String;ZZLjava/lang/String;Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->subframeToken:Lorg/chromium/blink/mojom/FrameToken;

    move-object v1, p2

    iput-object v1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->initialUrl:Lorg/chromium/url/mojom/Url;

    move-object v1, p3

    iput-object v1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->startTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

    move-object v1, p4

    iput-object v1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->redirectTime:Lorg/chromium/mojo_base/mojom/TimeTicks;

    move-object v1, p5

    iput-object v1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->requestStart:Lorg/chromium/mojo_base/mojom/TimeTicks;

    move-object v1, p6

    iput-object v1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->responseStart:Lorg/chromium/mojo_base/mojom/TimeTicks;

    move v1, p7

    iput v1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->responseCode:I

    move-object v1, p8

    iput-object v1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->mimeType:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->loadTimingInfo:Lorg/chromium/network/mojom/LoadTimingInfo;

    move v1, p10

    iput v1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->connectionInfo:I

    move-object/from16 v1, p11

    iput-object v1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->alpnNegotiatedProtocol:Ljava/lang/String;

    move/from16 v1, p12

    iput-boolean v1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->isSecureTransport:Z

    move/from16 v1, p13

    iput-boolean v1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->isValidated:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->normalizedServerTiming:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAddResourceTimingEntryForFailedSubframeNavigationParams;->completionStatus:Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public advanceFocusForIme(I)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAdvanceFocusForImeParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAdvanceFocusForImeParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAdvanceFocusForImeParams;->focusType:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public advanceFocusInFrame(ILorg/chromium/blink/mojom/RemoteFrameToken;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAdvanceFocusInFrameParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAdvanceFocusInFrameParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAdvanceFocusInFrameParams;->focusType:I

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameAdvanceFocusInFrameParams;->sourceFrameToken:Lorg/chromium/blink/mojom/RemoteFrameToken;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x16

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public beforeUnload(ZLorg/chromium/blink/mojom/LocalFrame$BeforeUnload_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameBeforeUnloadParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameBeforeUnloadParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameBeforeUnloadParams;->isReload:Z

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

    const/16 v5, 0x12

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameBeforeUnloadResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameBeforeUnloadResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/LocalFrame$BeforeUnload_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public bindDevToolsAgent(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameBindDevToolsAgentParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameBindDevToolsAgentParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameBindDevToolsAgentParams;->agentHost:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameBindDevToolsAgentParams;->agent:Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x24

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public bindReportingObserver(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/ReportingObserver;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameBindReportingObserverParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameBindReportingObserverParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameBindReportingObserverParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public checkCompleted()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameCheckCompletedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameCheckCompletedParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public clearFocusedElement()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameClearFocusedElementParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameClearFocusedElementParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public collapse(Z)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameCollapseParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameCollapseParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameCollapseParams;->collapsed:Z

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

.method public copyImageAt(Lorg/chromium/gfx/mojom/Point;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameCopyImageAtParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameCopyImageAtParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameCopyImageAtParams;->windowPoint:Lorg/chromium/gfx/mojom/Point;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public didUpdateFramePolicy(Lorg/chromium/blink/mojom/FramePolicy;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameDidUpdateFramePolicyParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameDidUpdateFramePolicyParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameDidUpdateFramePolicyParams;->framePolicy:Lorg/chromium/blink/mojom/FramePolicy;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public dispatchNavigateEventForCrossDocumentTraversal(Lorg/chromium/url/mojom/Url;Lorg/chromium/mojo_base/mojom/ByteString;Z)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameDispatchNavigateEventForCrossDocumentTraversalParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameDispatchNavigateEventForCrossDocumentTraversalParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameDispatchNavigateEventForCrossDocumentTraversalParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameDispatchNavigateEventForCrossDocumentTraversalParams;->pageState:Lorg/chromium/mojo_base/mojom/ByteString;

    iput-boolean p3, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameDispatchNavigateEventForCrossDocumentTraversalParams;->isBrowserInitiated:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x2e

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public dispatchPageSwap(Lorg/chromium/blink/mojom/PageSwapEventParams;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameDispatchPageSwapParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameDispatchPageSwapParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameDispatchPageSwapParams;->pageSwapEventParams:Lorg/chromium/blink/mojom/PageSwapEventParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x31

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public enableViewSourceMode()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameEnableViewSourceModeParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameEnableViewSourceModeParams;-><init>()V

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

.method public extractSmartClipData(Lorg/chromium/gfx/mojom/Rect;Lorg/chromium/blink/mojom/LocalFrame$ExtractSmartClipData_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameExtractSmartClipDataParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameExtractSmartClipDataParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameExtractSmartClipDataParams;->rect:Lorg/chromium/gfx/mojom/Rect;

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

    const/16 v5, 0x25

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameExtractSmartClipDataResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameExtractSmartClipDataResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/LocalFrame$ExtractSmartClipData_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public extractSmartClipImageData(Lorg/chromium/blink/mojom/SmartClipImageExtractionParams;Lorg/chromium/blink/mojom/LocalFrame$ExtractSmartClipImageData_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameExtractSmartClipImageDataParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameExtractSmartClipImageDataParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameExtractSmartClipImageDataParams;->params:Lorg/chromium/blink/mojom/SmartClipImageExtractionParams;

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

    const/16 v5, 0x26

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameExtractSmartClipImageDataResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameExtractSmartClipImageDataResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/LocalFrame$ExtractSmartClipImageData_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public focus()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameFocusParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameFocusParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public getCanonicalUrlForSharing(Lorg/chromium/blink/mojom/LocalFrame$GetCanonicalUrlForSharing_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetCanonicalUrlForSharingParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetCanonicalUrlForSharingParams;-><init>()V

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

    const/16 v6, 0x28

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetCanonicalUrlForSharingResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetCanonicalUrlForSharingResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/LocalFrame$GetCanonicalUrlForSharing_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getOpenGraphMetadata(Lorg/chromium/blink/mojom/LocalFrame$GetOpenGraphMetadata_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetOpenGraphMetadataParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetOpenGraphMetadataParams;-><init>()V

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

    const/16 v6, 0x29

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetOpenGraphMetadataResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetOpenGraphMetadataResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/LocalFrame$GetOpenGraphMetadata_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getSavableResourceLinks(Lorg/chromium/blink/mojom/LocalFrame$GetSavableResourceLinks_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetSavableResourceLinksParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetSavableResourceLinksParams;-><init>()V

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

    const/16 v6, 0x22

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetSavableResourceLinksResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetSavableResourceLinksResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/LocalFrame$GetSavableResourceLinks_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getScrollPosition(Lorg/chromium/blink/mojom/LocalFrame$GetScrollPosition_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetScrollPositionParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetScrollPositionParams;-><init>()V

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

    const/16 v6, 0x33

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetScrollPositionResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetScrollPositionResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/LocalFrame$GetScrollPosition_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getTextSurroundingSelection(ILorg/chromium/blink/mojom/LocalFrame$GetTextSurroundingSelection_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetTextSurroundingSelectionParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetTextSurroundingSelectionParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetTextSurroundingSelectionParams;->maxLength:I

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

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetTextSurroundingSelectionResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameGetTextSurroundingSelectionResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/LocalFrame$GetTextSurroundingSelection_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public handleRendererDebugUrl(Lorg/chromium/url/mojom/Url;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameHandleRendererDebugUrlParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameHandleRendererDebugUrlParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameHandleRendererDebugUrlParams;->url:Lorg/chromium/url/mojom/Url;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x27

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public javaScriptExecuteRequest(Lorg/chromium/mojo_base/mojom/BigString16;ZLorg/chromium/blink/mojom/LocalFrame$JavaScriptExecuteRequest_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestParams;->javascript:Lorg/chromium/mojo_base/mojom/BigString16;

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestParams;->wantsResult:Z

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

    const/16 v4, 0x1d

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/LocalFrame$JavaScriptExecuteRequest_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public javaScriptExecuteRequestForTests(Lorg/chromium/mojo_base/mojom/BigString16;ZZZILorg/chromium/blink/mojom/LocalFrame$JavaScriptExecuteRequestForTests_Response;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestForTestsParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestForTestsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestForTestsParams;->javascript:Lorg/chromium/mojo_base/mojom/BigString16;

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestForTestsParams;->hasUserGesture:Z

    iput-boolean p3, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestForTestsParams;->resolvePromises:Z

    iput-boolean p4, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestForTestsParams;->honorJsContentSettings:Z

    iput p5, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestForTestsParams;->worldId:I

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

    const/16 v1, 0x1e

    invoke-direct {p2, v1, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestForTestsResponseParamsForwardToCallback;

    invoke-direct {p2, p6}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestForTestsResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/LocalFrame$JavaScriptExecuteRequestForTests_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public javaScriptExecuteRequestInIsolatedWorld(Lorg/chromium/mojo_base/mojom/BigString16;ZILorg/chromium/blink/mojom/LocalFrame$JavaScriptExecuteRequestInIsolatedWorld_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestInIsolatedWorldParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestInIsolatedWorldParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestInIsolatedWorldParams;->javascript:Lorg/chromium/mojo_base/mojom/BigString16;

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestInIsolatedWorldParams;->wantsResult:Z

    iput p3, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestInIsolatedWorldParams;->worldId:I

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

    const/16 v3, 0x1f

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestInIsolatedWorldResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptExecuteRequestInIsolatedWorldResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/LocalFrame$JavaScriptExecuteRequestInIsolatedWorld_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public javaScriptMethodExecuteRequest(Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/mojo_base/mojom/ListValue;ZLorg/chromium/blink/mojom/LocalFrame$JavaScriptMethodExecuteRequest_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptMethodExecuteRequestParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptMethodExecuteRequestParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptMethodExecuteRequestParams;->objectName:Lorg/chromium/mojo_base/mojom/String16;

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptMethodExecuteRequestParams;->methodName:Lorg/chromium/mojo_base/mojom/String16;

    iput-object p3, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptMethodExecuteRequestParams;->arguments:Lorg/chromium/mojo_base/mojom/ListValue;

    iput-boolean p4, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptMethodExecuteRequestParams;->wantsResult:Z

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

    const/16 p4, 0x1c

    invoke-direct {p2, p4, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptMethodExecuteRequestResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameJavaScriptMethodExecuteRequestResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/LocalFrame$JavaScriptMethodExecuteRequest_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public mediaPlayerActionAt(Lorg/chromium/gfx/mojom/Point;Lorg/chromium/blink/mojom/MediaPlayerAction;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameMediaPlayerActionAtParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameMediaPlayerActionAtParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameMediaPlayerActionAtParams;->location:Lorg/chromium/gfx/mojom/Point;

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameMediaPlayerActionAtParams;->action:Lorg/chromium/blink/mojom/MediaPlayerAction;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x13

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public mixedContentFound(Lorg/chromium/url/mojom/Url;Lorg/chromium/url/mojom/Url;IZLorg/chromium/url/mojom/Url;ZLorg/chromium/network/mojom/SourceLocation;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameMixedContentFoundParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameMixedContentFoundParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameMixedContentFoundParams;->mainResourceUrl:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameMixedContentFoundParams;->mixedContentUrl:Lorg/chromium/url/mojom/Url;

    iput p3, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameMixedContentFoundParams;->requestContext:I

    iput-boolean p4, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameMixedContentFoundParams;->wasAllowed:Z

    iput-object p5, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameMixedContentFoundParams;->urlBeforeRedirects:Lorg/chromium/url/mojom/Url;

    iput-boolean p6, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameMixedContentFoundParams;->hadRedirect:Z

    iput-object p7, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameMixedContentFoundParams;->sourceLocation:Lorg/chromium/network/mojom/SourceLocation;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x23

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public notifyContextMenuInsetsObservers(Lorg/chromium/gfx/mojom/Rect;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameNotifyContextMenuInsetsObserversParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameNotifyContextMenuInsetsObserversParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameNotifyContextMenuInsetsObserversParams;->safeArea:Lorg/chromium/gfx/mojom/Rect;

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

.method public notifyNavigationApiOfDisposedEntries([Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameNotifyNavigationApiOfDisposedEntriesParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameNotifyNavigationApiOfDisposedEntriesParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameNotifyNavigationApiOfDisposedEntriesParams;->keys:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public notifyUserActivation(I)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameNotifyUserActivationParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameNotifyUserActivationParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameNotifyUserActivationParams;->notificationType:I

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

.method public notifyViewTransitionAbortedToOldDocument()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameNotifyViewTransitionAbortedToOldDocumentParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameNotifyViewTransitionAbortedToOldDocumentParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v3, 0x30

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public notifyVirtualKeyboardOverlayRect(Lorg/chromium/gfx/mojom/Rect;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameNotifyVirtualKeyboardOverlayRectParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameNotifyVirtualKeyboardOverlayRectParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameNotifyVirtualKeyboardOverlayRectParams;->keyboardRect:Lorg/chromium/gfx/mojom/Rect;

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

.method public onFrameVisibilityChanged(I)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameOnFrameVisibilityChangedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameOnFrameVisibilityChangedParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameOnFrameVisibilityChangedParams;->visibility:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public pluginActionAt(Lorg/chromium/gfx/mojom/Point;I)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFramePluginActionAtParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFramePluginActionAtParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFramePluginActionAtParams;->location:Lorg/chromium/gfx/mojom/Point;

    iput p2, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFramePluginActionAtParams;->action:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x15

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public postMessageEvent(Lorg/chromium/blink/mojom/RemoteFrameToken;Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/blink/mojom/TransferableMessage;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFramePostMessageEventParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFramePostMessageEventParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFramePostMessageEventParams;->sourceFrameToken:Lorg/chromium/blink/mojom/RemoteFrameToken;

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFramePostMessageEventParams;->sourceOrigin:Lorg/chromium/mojo_base/mojom/String16;

    iput-object p3, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFramePostMessageEventParams;->targetOrigin:Lorg/chromium/mojo_base/mojom/String16;

    iput-object p4, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFramePostMessageEventParams;->message:Lorg/chromium/blink/mojom/TransferableMessage;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x1b

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public renderFallbackContent()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameRenderFallbackContentParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameRenderFallbackContentParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public reportBlinkFeatureUsage([I)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameReportBlinkFeatureUsageParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameReportBlinkFeatureUsageParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameReportBlinkFeatureUsageParams;->features:[I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public reportContentSecurityPolicyViolation(Lorg/chromium/network/mojom/CspViolation;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameReportContentSecurityPolicyViolationParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameReportContentSecurityPolicyViolationParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameReportContentSecurityPolicyViolationParams;->violation:Lorg/chromium/network/mojom/CspViolation;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public requestVideoFrameAtWithBoundsHint(Lorg/chromium/gfx/mojom/Point;Lorg/chromium/gfx/mojom/Size;ILorg/chromium/blink/mojom/LocalFrame$RequestVideoFrameAtWithBoundsHint_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameRequestVideoFrameAtWithBoundsHintParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameRequestVideoFrameAtWithBoundsHintParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameRequestVideoFrameAtWithBoundsHintParams;->location:Lorg/chromium/gfx/mojom/Point;

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameRequestVideoFrameAtWithBoundsHintParams;->maxSize:Lorg/chromium/gfx/mojom/Size;

    iput p3, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameRequestVideoFrameAtWithBoundsHintParams;->maxArea:I

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

    const/16 v3, 0x14

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameRequestVideoFrameAtWithBoundsHintResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameRequestVideoFrameAtWithBoundsHintResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/LocalFrame$RequestVideoFrameAtWithBoundsHint_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public saveImageAt(Lorg/chromium/gfx/mojom/Point;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSaveImageAtParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSaveImageAtParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSaveImageAtParams;->windowPoint:Lorg/chromium/gfx/mojom/Point;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public sendInterventionReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSendInterventionReportParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSendInterventionReportParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSendInterventionReportParams;->id:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSendInterventionReportParams;->message:Ljava/lang/String;

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

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setFrameOwnerProperties(Lorg/chromium/blink/mojom/FrameOwnerProperties;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSetFrameOwnerPropertiesParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSetFrameOwnerPropertiesParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSetFrameOwnerPropertiesParams;->properties:Lorg/chromium/blink/mojom/FrameOwnerProperties;

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

.method public setNavigationApiHistoryEntriesForRestore(Lorg/chromium/blink/mojom/NavigationApiHistoryEntryArrays;I)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSetNavigationApiHistoryEntriesForRestoreParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSetNavigationApiHistoryEntriesForRestoreParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSetNavigationApiHistoryEntriesForRestoreParams;->entryArrays:Lorg/chromium/blink/mojom/NavigationApiHistoryEntryArrays;

    iput p2, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSetNavigationApiHistoryEntriesForRestoreParams;->restoreReason:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x2a

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public snapshotDocumentForViewTransition(Lorg/chromium/blink/mojom/ViewTransitionToken;Lorg/chromium/blink/mojom/PageSwapEventParams;Lorg/chromium/blink/mojom/LocalFrame$SnapshotDocumentForViewTransition_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSnapshotDocumentForViewTransitionParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSnapshotDocumentForViewTransitionParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSnapshotDocumentForViewTransitionParams;->transitionToken:Lorg/chromium/blink/mojom/ViewTransitionToken;

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSnapshotDocumentForViewTransitionParams;->pageSwapEventParams:Lorg/chromium/blink/mojom/PageSwapEventParams;

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

    const/16 v4, 0x2f

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSnapshotDocumentForViewTransitionResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSnapshotDocumentForViewTransitionResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/LocalFrame$SnapshotDocumentForViewTransition_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public stopLoading()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameStopLoadingParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameStopLoadingParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public swapInImmediately()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSwapInImmediatelyParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameSwapInImmediatelyParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public traverseCancelled(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameTraverseCancelledParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameTraverseCancelledParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameTraverseCancelledParams;->navigationApiKey:Ljava/lang/String;

    iput p2, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameTraverseCancelledParams;->reason:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x2d

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public updateOpener(Lorg/chromium/blink/mojom/FrameToken;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameUpdateOpenerParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameUpdateOpenerParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameUpdateOpenerParams;->openerFrameToken:Lorg/chromium/blink/mojom/FrameToken;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public updatePrerenderUrl(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/LocalFrame$UpdatePrerenderUrl_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameUpdatePrerenderUrlParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameUpdatePrerenderUrlParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameUpdatePrerenderUrlParams;->matchedUrl:Lorg/chromium/url/mojom/Url;

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

    const/16 v5, 0x2b

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameUpdatePrerenderUrlResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/LocalFrame_Internal$LocalFrameUpdatePrerenderUrlResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/LocalFrame$UpdatePrerenderUrl_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
