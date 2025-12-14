.class final Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/WidgetInputHandler$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/WidgetInputHandler_Internal;
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
.method public attachSynchronousCompositor(Lorg/chromium/blink/mojom/SynchronousCompositorControlHost;Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerAttachSynchronousCompositorParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerAttachSynchronousCompositorParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerAttachSynchronousCompositorParams;->controlHost:Lorg/chromium/blink/mojom/SynchronousCompositorControlHost;

    iput-object p2, v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerAttachSynchronousCompositorParams;->host:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    iput-object p3, v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerAttachSynchronousCompositorParams;->compositorRequest:Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0xc

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public cursorVisibilityChanged(Z)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerCursorVisibilityChangedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerCursorVisibilityChangedParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerCursorVisibilityChangedParams;->visible:Z

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

.method public dispatchEvent(Lorg/chromium/blink/mojom/Event;Lorg/chromium/blink/mojom/WidgetInputHandler$DispatchEvent_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchEventParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchEventParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchEventParams;->event:Lorg/chromium/blink/mojom/Event;

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

    const/16 v5, 0x9

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchEventResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchEventResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/WidgetInputHandler$DispatchEvent_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public dispatchNonBlockingEvent(Lorg/chromium/blink/mojom/Event;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchNonBlockingEventParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchNonBlockingEventParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerDispatchNonBlockingEventParams;->event:Lorg/chromium/blink/mojom/Event;

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

.method public getFrameWidgetInputHandler(Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerGetFrameWidgetInputHandlerParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerGetFrameWidgetInputHandlerParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerGetFrameWidgetInputHandlerParams;->interfaceRequest:Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public imeCommitText(Lorg/chromium/mojo_base/mojom/String16;[Lorg/chromium/ui/mojom/ImeTextSpan;Lorg/chromium/gfx/mojom/Range;ILorg/chromium/blink/mojom/WidgetInputHandler$ImeCommitText_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeCommitTextParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeCommitTextParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeCommitTextParams;->text:Lorg/chromium/mojo_base/mojom/String16;

    iput-object p2, v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeCommitTextParams;->imeTextSpans:[Lorg/chromium/ui/mojom/ImeTextSpan;

    iput-object p3, v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeCommitTextParams;->range:Lorg/chromium/gfx/mojom/Range;

    iput p4, v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeCommitTextParams;->relativeCursorPosition:I

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

    const/4 p4, 0x5

    invoke-direct {p2, p4, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeCommitTextResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeCommitTextResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/WidgetInputHandler$ImeCommitText_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public imeFinishComposingText(Z)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeFinishComposingTextParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeFinishComposingTextParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeFinishComposingTextParams;->keepSelection:Z

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

.method public imeSetComposition(Lorg/chromium/mojo_base/mojom/String16;[Lorg/chromium/ui/mojom/ImeTextSpan;Lorg/chromium/gfx/mojom/Range;IILorg/chromium/blink/mojom/WidgetInputHandler$ImeSetComposition_Response;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeSetCompositionParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeSetCompositionParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeSetCompositionParams;->text:Lorg/chromium/mojo_base/mojom/String16;

    iput-object p2, v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeSetCompositionParams;->imeTextSpans:[Lorg/chromium/ui/mojom/ImeTextSpan;

    iput-object p3, v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeSetCompositionParams;->range:Lorg/chromium/gfx/mojom/Range;

    iput p4, v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeSetCompositionParams;->start:I

    iput p5, v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeSetCompositionParams;->end:I

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

    const/4 v1, 0x4

    invoke-direct {p2, v1, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeSetCompositionResponseParamsForwardToCallback;

    invoke-direct {p2, p6}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerImeSetCompositionResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/WidgetInputHandler$ImeSetComposition_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public mouseCaptureLost()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerMouseCaptureLostParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerMouseCaptureLostParams;-><init>()V

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

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public requestCompositionUpdates(ZZ)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerRequestCompositionUpdatesParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerRequestCompositionUpdatesParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerRequestCompositionUpdatesParams;->immediateRequest:Z

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerRequestCompositionUpdatesParams;->monitorRequest:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x8

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public requestTextInputStateUpdate()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerRequestTextInputStateUpdateParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerRequestTextInputStateUpdateParams;-><init>()V

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

.method public setEditCommandsForNextKeyEvent([Lorg/chromium/blink/mojom/EditCommand;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerSetEditCommandsForNextKeyEventParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerSetEditCommandsForNextKeyEventParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerSetEditCommandsForNextKeyEventParams;->commands:[Lorg/chromium/blink/mojom/EditCommand;

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

.method public setFocus(I)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerSetFocusParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerSetFocusParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerSetFocusParams;->state:I

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

.method public updateBrowserControlsState(IIZLorg/chromium/cc/mojom/BrowserControlsOffsetTagModifications;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerUpdateBrowserControlsStateParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerUpdateBrowserControlsStateParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerUpdateBrowserControlsStateParams;->constraints:I

    iput p2, v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerUpdateBrowserControlsStateParams;->current:I

    iput-boolean p3, v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerUpdateBrowserControlsStateParams;->animate:Z

    iput-object p4, v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerUpdateBrowserControlsStateParams;->offsetTagModifications:Lorg/chromium/cc/mojom/BrowserControlsOffsetTagModifications;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0xe

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public waitForInputProcessed(Lorg/chromium/blink/mojom/WidgetInputHandler$WaitForInputProcessed_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerWaitForInputProcessedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerWaitForInputProcessedParams;-><init>()V

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

    const/16 v6, 0xb

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerWaitForInputProcessedResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/blink/mojom/WidgetInputHandler_Internal$WidgetInputHandlerWaitForInputProcessedResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/WidgetInputHandler$WaitForInputProcessed_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
