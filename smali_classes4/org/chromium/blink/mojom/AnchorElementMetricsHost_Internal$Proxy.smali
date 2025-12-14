.class final Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/AnchorElementMetricsHost$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal;
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
.method public processPointerEventUsingMlModel(Lorg/chromium/blink/mojom/AnchorElementPointerEventForMlModel;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostProcessPointerEventUsingMlModelParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostProcessPointerEventUsingMlModelParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostProcessPointerEventUsingMlModelParams;->pointerEvent:Lorg/chromium/blink/mojom/AnchorElementPointerEventForMlModel;

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

.method public reportAnchorElementClick(Lorg/chromium/blink/mojom/AnchorElementClick;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementClickParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementClickParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementClickParams;->clicked:Lorg/chromium/blink/mojom/AnchorElementClick;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public reportAnchorElementPointerDataOnHoverTimerFired(Lorg/chromium/blink/mojom/AnchorElementPointerDataOnHoverTimerFired;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementPointerDataOnHoverTimerFiredParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementPointerDataOnHoverTimerFiredParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementPointerDataOnHoverTimerFiredParams;->pointerData:Lorg/chromium/blink/mojom/AnchorElementPointerDataOnHoverTimerFired;

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

.method public reportAnchorElementPointerDown(Lorg/chromium/blink/mojom/AnchorElementPointerDown;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementPointerDownParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementPointerDownParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementPointerDownParams;->pointerDownEvent:Lorg/chromium/blink/mojom/AnchorElementPointerDown;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public reportAnchorElementPointerOut(Lorg/chromium/blink/mojom/AnchorElementPointerOut;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementPointerOutParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementPointerOutParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementPointerOutParams;->hoverEvent:Lorg/chromium/blink/mojom/AnchorElementPointerOut;

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

.method public reportAnchorElementPointerOver(Lorg/chromium/blink/mojom/AnchorElementPointerOver;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementPointerOverParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementPointerOverParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementPointerOverParams;->pointerOverEvent:Lorg/chromium/blink/mojom/AnchorElementPointerOver;

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

.method public reportAnchorElementsEnteredViewport([Lorg/chromium/blink/mojom/AnchorElementEnteredViewport;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementsEnteredViewportParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementsEnteredViewportParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementsEnteredViewportParams;->elements:[Lorg/chromium/blink/mojom/AnchorElementEnteredViewport;

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

.method public reportAnchorElementsLeftViewport([Lorg/chromium/blink/mojom/AnchorElementLeftViewport;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementsLeftViewportParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementsLeftViewportParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementsLeftViewportParams;->elements:[Lorg/chromium/blink/mojom/AnchorElementLeftViewport;

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

.method public reportAnchorElementsPositionUpdate([Lorg/chromium/blink/mojom/AnchorElementPositionUpdate;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementsPositionUpdateParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementsPositionUpdateParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportAnchorElementsPositionUpdateParams;->elements:[Lorg/chromium/blink/mojom/AnchorElementPositionUpdate;

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

.method public reportNewAnchorElements([Lorg/chromium/blink/mojom/AnchorElementMetrics;[I)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportNewAnchorElementsParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportNewAnchorElementsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportNewAnchorElementsParams;->metrics:[Lorg/chromium/blink/mojom/AnchorElementMetrics;

    iput-object p2, v0, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostReportNewAnchorElementsParams;->removedElements:[I

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

.method public shouldSkipUpdateDelays(Lorg/chromium/blink/mojom/AnchorElementMetricsHost$ShouldSkipUpdateDelays_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostShouldSkipUpdateDelaysParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostShouldSkipUpdateDelaysParams;-><init>()V

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

    const/16 v6, 0xa

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostShouldSkipUpdateDelaysResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/blink/mojom/AnchorElementMetricsHost_Internal$AnchorElementMetricsHostShouldSkipUpdateDelaysResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/AnchorElementMetricsHost$ShouldSkipUpdateDelays_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
