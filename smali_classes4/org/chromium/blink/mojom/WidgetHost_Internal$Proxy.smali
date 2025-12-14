.class final Lorg/chromium/blink/mojom/WidgetHost_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/WidgetHost$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/WidgetHost_Internal;
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
.method public clearKeyboardTriggeredTooltip()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostClearKeyboardTriggeredTooltipParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostClearKeyboardTriggeredTooltipParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public createFrameSink(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/viz/mojom/CompositorFrameSinkClient;Lorg/chromium/blink/mojom/RenderInputRouterClient;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/viz/mojom/CompositorFrameSink;",
            ">;",
            "Lorg/chromium/viz/mojom/CompositorFrameSinkClient;",
            "Lorg/chromium/blink/mojom/RenderInputRouterClient;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostCreateFrameSinkParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostCreateFrameSinkParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostCreateFrameSinkParams;->compositorFrameSinkReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p2, v0, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostCreateFrameSinkParams;->compositorFrameSinkClient:Lorg/chromium/viz/mojom/CompositorFrameSinkClient;

    iput-object p3, v0, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostCreateFrameSinkParams;->renderInputRouterClient:Lorg/chromium/blink/mojom/RenderInputRouterClient;

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

.method public onScrollSyncCreated(Lorg/chromium/scroll_sync/mojom/ScrollSync;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostOnScrollSyncCreatedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostOnScrollSyncCreatedParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostOnScrollSyncCreatedParams;->scrollSync:Lorg/chromium/scroll_sync/mojom/ScrollSync;

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

.method public registerRenderFrameMetadataObserver(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/cc/mojom/RenderFrameMetadataObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/cc/mojom/RenderFrameMetadataObserverClient;",
            ">;",
            "Lorg/chromium/cc/mojom/RenderFrameMetadataObserver;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostRegisterRenderFrameMetadataObserverParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostRegisterRenderFrameMetadataObserverParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostRegisterRenderFrameMetadataObserverParams;->renderFrameMetadataObserverClientReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p2, v0, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostRegisterRenderFrameMetadataObserverParams;->renderFrameMetadataObserver:Lorg/chromium/cc/mojom/RenderFrameMetadataObserver;

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

.method public selectionBoundsChanged(Lorg/chromium/gfx/mojom/Rect;ILorg/chromium/gfx/mojom/Rect;ILorg/chromium/gfx/mojom/Rect;Z)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostSelectionBoundsChangedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostSelectionBoundsChangedParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostSelectionBoundsChangedParams;->anchorRect:Lorg/chromium/gfx/mojom/Rect;

    iput p2, v0, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostSelectionBoundsChangedParams;->anchorDir:I

    iput-object p3, v0, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostSelectionBoundsChangedParams;->focusRect:Lorg/chromium/gfx/mojom/Rect;

    iput p4, v0, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostSelectionBoundsChangedParams;->focusDir:I

    iput-object p5, v0, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostSelectionBoundsChangedParams;->boundingBoxRect:Lorg/chromium/gfx/mojom/Rect;

    iput-boolean p6, v0, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostSelectionBoundsChangedParams;->isAnchorFirst:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setCursor(Lorg/chromium/ui/mojom/Cursor;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostSetCursorParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostSetCursorParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostSetCursorParams;->cursor:Lorg/chromium/ui/mojom/Cursor;

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

.method public textInputStateChanged(Lorg/chromium/ui/mojom/TextInputState;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostTextInputStateChangedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostTextInputStateChangedParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostTextInputStateChangedParams;->state:Lorg/chromium/ui/mojom/TextInputState;

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

.method public updateTooltipFromKeyboard(Lorg/chromium/mojo_base/mojom/String16;ILorg/chromium/gfx/mojom/Rect;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostUpdateTooltipFromKeyboardParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostUpdateTooltipFromKeyboardParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostUpdateTooltipFromKeyboardParams;->tooltipText:Lorg/chromium/mojo_base/mojom/String16;

    iput p2, v0, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostUpdateTooltipFromKeyboardParams;->textDirectionHint:I

    iput-object p3, v0, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostUpdateTooltipFromKeyboardParams;->bounds:Lorg/chromium/gfx/mojom/Rect;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public updateTooltipUnderCursor(Lorg/chromium/mojo_base/mojom/String16;I)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostUpdateTooltipUnderCursorParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostUpdateTooltipUnderCursorParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostUpdateTooltipUnderCursorParams;->tooltipText:Lorg/chromium/mojo_base/mojom/String16;

    iput p2, v0, Lorg/chromium/blink/mojom/WidgetHost_Internal$WidgetHostUpdateTooltipUnderCursorParams;->textDirectionHint:I

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
