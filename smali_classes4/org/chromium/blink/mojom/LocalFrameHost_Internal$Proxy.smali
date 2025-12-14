.class final Lorg/chromium/blink/mojom/LocalFrameHost_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/LocalFrameHost$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/LocalFrameHost_Internal;
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
.method public bubbleLogicalScrollInParentFrame(II)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostBubbleLogicalScrollInParentFrameParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostBubbleLogicalScrollInParentFrameParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostBubbleLogicalScrollInParentFrameParams;->direction:I

    iput p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostBubbleLogicalScrollInParentFrameParams;->granularity:I

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

.method public capturePaintPreviewOfSubframe(Lorg/chromium/gfx/mojom/Rect;Lorg/chromium/mojo_base/mojom/UnguessableToken;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCapturePaintPreviewOfSubframeParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCapturePaintPreviewOfSubframeParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCapturePaintPreviewOfSubframeParams;->clipRect:Lorg/chromium/gfx/mojom/Rect;

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCapturePaintPreviewOfSubframeParams;->guid:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x38

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public createFencedFrame(Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;Lorg/chromium/blink/mojom/RemoteFrameInterfacesFromRenderer;Lorg/chromium/blink/mojom/RemoteFrameToken;Lorg/chromium/mojo_base/mojom/UnguessableToken;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCreateFencedFrameParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCreateFencedFrameParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCreateFencedFrameParams;->fencedFrame:Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCreateFencedFrameParams;->remoteFrameInterfaces:Lorg/chromium/blink/mojom/RemoteFrameInterfacesFromRenderer;

    iput-object p3, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCreateFencedFrameParams;->frameToken:Lorg/chromium/blink/mojom/RemoteFrameToken;

    iput-object p4, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCreateFencedFrameParams;->devtoolsFrameToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x48

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public createNewPopupWidget(Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCreateNewPopupWidgetParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCreateNewPopupWidgetParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCreateNewPopupWidgetParams;->popupHost:Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCreateNewPopupWidgetParams;->blinkWidgetHost:Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;

    iput-object p3, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostCreateNewPopupWidgetParams;->blinkWidget:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x31

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public detach()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDetachParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDetachParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v3, 0x3a

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public didAddMessageToConsole(ILorg/chromium/mojo_base/mojom/BigString16;ILorg/chromium/mojo_base/mojom/String16;Lorg/chromium/mojo_base/mojom/BigString16;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidAddMessageToConsoleParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidAddMessageToConsoleParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidAddMessageToConsoleParams;->logLevel:I

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidAddMessageToConsoleParams;->msg:Lorg/chromium/mojo_base/mojom/BigString16;

    iput p3, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidAddMessageToConsoleParams;->lineNumber:I

    iput-object p4, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidAddMessageToConsoleParams;->sourceId:Lorg/chromium/mojo_base/mojom/String16;

    iput-object p5, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidAddMessageToConsoleParams;->untrustedStackTrace:Lorg/chromium/mojo_base/mojom/BigString16;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x3c

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public didBlockNavigation(Lorg/chromium/url/mojom/Url;I)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidBlockNavigationParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidBlockNavigationParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidBlockNavigationParams;->blockedUrl:Lorg/chromium/url/mojom/Url;

    iput p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidBlockNavigationParams;->reason:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x17

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public didCallFocus()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidCallFocusParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidCallFocusParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public didChangeBackgroundColor(Lorg/chromium/skia/mojom/SkColor4f;Z)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeBackgroundColorParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeBackgroundColorParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeBackgroundColorParams;->backgroundColor:Lorg/chromium/skia/mojom/SkColor4f;

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeBackgroundColorParams;->colorAdjust:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0xc

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public didChangeFrameOwnerProperties(Lorg/chromium/blink/mojom/FrameToken;Lorg/chromium/blink/mojom/FrameOwnerProperties;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeFrameOwnerPropertiesParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeFrameOwnerPropertiesParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeFrameOwnerPropertiesParams;->childFrameToken:Lorg/chromium/blink/mojom/FrameToken;

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeFrameOwnerPropertiesParams;->frameOwnerProperties:Lorg/chromium/blink/mojom/FrameOwnerProperties;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x34

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public didChangeFramePolicy(Lorg/chromium/blink/mojom/FrameToken;Lorg/chromium/blink/mojom/FramePolicy;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeFramePolicyParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeFramePolicyParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeFramePolicyParams;->childFrameToken:Lorg/chromium/blink/mojom/FrameToken;

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeFramePolicyParams;->framePolicy:Lorg/chromium/blink/mojom/FramePolicy;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x36

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public didChangeIframeAttributes(Lorg/chromium/blink/mojom/FrameToken;Lorg/chromium/blink/mojom/IframeAttributes;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeIframeAttributesParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeIframeAttributesParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeIframeAttributesParams;->childFrameToken:Lorg/chromium/blink/mojom/FrameToken;

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeIframeAttributesParams;->attributes:Lorg/chromium/blink/mojom/IframeAttributes;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x37

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public didChangeLoadProgress(D)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeLoadProgressParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeLoadProgressParams;-><init>()V

    iput-wide p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeLoadProgressParams;->loadProgress:D

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x18

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public didChangeOpener(Lorg/chromium/blink/mojom/LocalFrameToken;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeOpenerParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeOpenerParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeOpenerParams;->openerFrame:Lorg/chromium/blink/mojom/LocalFrameToken;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x35

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public didChangeSrcDoc(Lorg/chromium/blink/mojom/FrameToken;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeSrcDocParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeSrcDocParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeSrcDocParams;->childFrameToken:Lorg/chromium/blink/mojom/FrameToken;

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeSrcDocParams;->srcdocValue:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x3f

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public didChangeThemeColor(Lorg/chromium/skia/mojom/SkColor;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeThemeColorParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeThemeColorParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidChangeThemeColorParams;->themeColor:Lorg/chromium/skia/mojom/SkColor;

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

.method public didConsumeHistoryUserActivation()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidConsumeHistoryUserActivationParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidConsumeHistoryUserActivationParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v3, 0x21

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public didContainInsecureFormAction()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidContainInsecureFormActionParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidContainInsecureFormActionParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public didDispatchDomContentLoadedEvent()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidDispatchDomContentLoadedEventParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidDispatchDomContentLoadedEventParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v3, 0x26

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public didDisplayInsecureContent()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidDisplayInsecureContentParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidDisplayInsecureContentParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public didFailLoadWithError(Lorg/chromium/url/mojom/Url;I)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidFailLoadWithErrorParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidFailLoadWithErrorParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidFailLoadWithErrorParams;->url:Lorg/chromium/url/mojom/Url;

    iput p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidFailLoadWithErrorParams;->errorCode:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0xd

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public didFinishLoad(Lorg/chromium/url/mojom/Url;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidFinishLoadParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidFinishLoadParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidFinishLoadParams;->validatedUrl:Lorg/chromium/url/mojom/Url;

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

.method public didFocusFrame()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidFocusFrameParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidFocusFrameParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public didInferColorScheme(I)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidInferColorSchemeParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidInferColorSchemeParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidInferColorSchemeParams;->colorScheme:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x3e

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public didLoadResourceFromMemoryCache(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidLoadResourceFromMemoryCacheParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidLoadResourceFromMemoryCacheParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidLoadResourceFromMemoryCacheParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidLoadResourceFromMemoryCacheParams;->httpMethod:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidLoadResourceFromMemoryCacheParams;->mimeType:Ljava/lang/String;

    iput p4, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidLoadResourceFromMemoryCacheParams;->requestDestination:I

    iput-boolean p5, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDidLoadResourceFromMemoryCacheParams;->includeCredentials:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x33

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public disableUntrustedNetworkInFencedFrame(Lorg/chromium/blink/mojom/LocalFrameHost$DisableUntrustedNetworkInFencedFrame_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDisableUntrustedNetworkInFencedFrameParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDisableUntrustedNetworkInFencedFrameParams;-><init>()V

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

    const/16 v6, 0x43

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDisableUntrustedNetworkInFencedFrameResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDisableUntrustedNetworkInFencedFrameResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/LocalFrameHost$DisableUntrustedNetworkInFencedFrame_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public dispatchLoad()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDispatchLoadParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDispatchLoadParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public documentOnLoadCompleted()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDocumentOnLoadCompletedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDocumentOnLoadCompletedParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v3, 0x24

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public downloadUrl(Lorg/chromium/blink/mojom/DownloadUrlParams;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDownloadUrlParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDownloadUrlParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostDownloadUrlParams;->params:Lorg/chromium/blink/mojom/DownloadUrlParams;

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

.method public enforceInsecureNavigationsSet([I)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostEnforceInsecureNavigationsSetParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostEnforceInsecureNavigationsSetParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostEnforceInsecureNavigationsSetParams;->set:[I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public enforceInsecureRequestPolicy(I)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostEnforceInsecureRequestPolicyParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostEnforceInsecureRequestPolicyParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostEnforceInsecureRequestPolicyParams;->policyBitmap:I

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

.method public enterFullscreen(Lorg/chromium/blink/mojom/FullscreenOptions;Lorg/chromium/blink/mojom/LocalFrameHost$EnterFullscreen_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostEnterFullscreenParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostEnterFullscreenParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostEnterFullscreenParams;->options:Lorg/chromium/blink/mojom/FullscreenOptions;

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

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostEnterFullscreenResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostEnterFullscreenResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/LocalFrameHost$EnterFullscreen_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public exemptUrlFromNetworkRevocationForTesting(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/LocalFrameHost$ExemptUrlFromNetworkRevocationForTesting_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostExemptUrlFromNetworkRevocationForTestingParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostExemptUrlFromNetworkRevocationForTestingParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostExemptUrlFromNetworkRevocationForTestingParams;->exemptedUrl:Lorg/chromium/url/mojom/Url;

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

    const/16 v5, 0x44

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostExemptUrlFromNetworkRevocationForTestingResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostExemptUrlFromNetworkRevocationForTestingResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/LocalFrameHost$ExemptUrlFromNetworkRevocationForTesting_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public exitFullscreen()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostExitFullscreenParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostExitFullscreenParams;-><init>()V

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

.method public focusedElementChanged(ZZLorg/chromium/gfx/mojom/Rect;I)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFocusedElementChangedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFocusedElementChangedParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFocusedElementChangedParams;->isEditableElement:Z

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFocusedElementChangedParams;->isRichlyEditableElement:Z

    iput-object p3, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFocusedElementChangedParams;->boundsInFrameWidget:Lorg/chromium/gfx/mojom/Rect;

    iput p4, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFocusedElementChangedParams;->focusType:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x2d

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public forwardFencedFrameEventAndUserActivationToEmbedder(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostForwardFencedFrameEventAndUserActivationToEmbedderParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostForwardFencedFrameEventAndUserActivationToEmbedderParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostForwardFencedFrameEventAndUserActivationToEmbedderParams;->eventType:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x49

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public forwardResourceTimingToParent(Lorg/chromium/blink/mojom/ResourceTimingInfo;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostForwardResourceTimingToParentParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostForwardResourceTimingToParentParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostForwardResourceTimingToParentParams;->timing:Lorg/chromium/blink/mojom/ResourceTimingInfo;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public frameSizeChanged(Lorg/chromium/gfx/mojom/Size;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFrameSizeChangedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFrameSizeChangedParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFrameSizeChangedParams;->size:Lorg/chromium/gfx/mojom/Size;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public fullscreenStateChanged(ZLorg/chromium/blink/mojom/FullscreenOptions;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFullscreenStateChangedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFullscreenStateChangedParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFullscreenStateChangedParams;->isFullscreen:Z

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostFullscreenStateChangedParams;->options:Lorg/chromium/blink/mojom/FullscreenOptions;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x2

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public getKeepAliveHandleFactory(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/KeepAliveHandleFactory;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostGetKeepAliveHandleFactoryParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostGetKeepAliveHandleFactoryParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostGetKeepAliveHandleFactoryParams;->factory:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x3b

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public goToEntryAtOffset(IZLorg/chromium/blink/mojom/TaskAttributionId;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostGoToEntryAtOffsetParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostGoToEntryAtOffsetParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostGoToEntryAtOffsetParams;->offset:I

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostGoToEntryAtOffsetParams;->hasUserGesture:Z

    iput-object p3, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostGoToEntryAtOffsetParams;->softNavigationHeuristicsTaskId:Lorg/chromium/blink/mojom/TaskAttributionId;

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

.method public hadStickyUserActivationBeforeNavigationChanged(Z)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostHadStickyUserActivationBeforeNavigationChangedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostHadStickyUserActivationBeforeNavigationChangedParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostHadStickyUserActivationBeforeNavigationChangedParams;->hasGesture:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public handleAccessibilityFindInPageResult(Lorg/chromium/blink/mojom/FindInPageResultAxParams;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostHandleAccessibilityFindInPageResultParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostHandleAccessibilityFindInPageResultParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostHandleAccessibilityFindInPageResultParams;->params:Lorg/chromium/blink/mojom/FindInPageResultAxParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x22

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public handleAccessibilityFindInPageTermination()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostHandleAccessibilityFindInPageTerminationParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostHandleAccessibilityFindInPageTerminationParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v3, 0x23

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public hidePopupMenu()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostHidePopupMenuParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostHidePopupMenuParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public issueKeepAliveHandle(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/NavigationStateKeepAliveHandle;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostIssueKeepAliveHandleParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostIssueKeepAliveHandleParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostIssueKeepAliveHandleParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x4c

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public mainDocumentElementAvailable(Z)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostMainDocumentElementAvailableParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostMainDocumentElementAvailableParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostMainDocumentElementAvailableParams;->usesTemporaryZoomLevel:Z

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

.method public navigateEventHandlerPresenceChanged(Z)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNavigateEventHandlerPresenceChangedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNavigateEventHandlerPresenceChangedParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNavigateEventHandlerPresenceChangedParams;->present:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public navigateToNavigationApiKey(Ljava/lang/String;ZLorg/chromium/blink/mojom/TaskAttributionId;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNavigateToNavigationApiKeyParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNavigateToNavigationApiKeyParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNavigateToNavigationApiKeyParams;->key:Ljava/lang/String;

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNavigateToNavigationApiKeyParams;->hasUserGesture:Z

    iput-object p3, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNavigateToNavigationApiKeyParams;->softNavigationHeuristicsTaskId:Lorg/chromium/blink/mojom/TaskAttributionId;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x1c

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public notifyDocumentInteractive()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNotifyDocumentInteractiveParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNotifyDocumentInteractiveParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v3, 0x4f

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public notifyStorageAccessed(IZ)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNotifyStorageAccessedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNotifyStorageAccessedParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNotifyStorageAccessedParams;->storageType:I

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostNotifyStorageAccessedParams;->blocked:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x4d

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onViewTransitionOptInChanged(I)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostOnViewTransitionOptInChangedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostOnViewTransitionOptInChangedParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostOnViewTransitionOptInChangedParams;->viewTransitionOptIn:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x4a

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public receivedDelegatedCapability(I)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostReceivedDelegatedCapabilityParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostReceivedDelegatedCapabilityParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostReceivedDelegatedCapabilityParams;->delegatedCapability:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public recordWindowProxyUsageMetrics(Lorg/chromium/blink/mojom/FrameToken;I)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRecordWindowProxyUsageMetricsParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRecordWindowProxyUsageMetricsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRecordWindowProxyUsageMetricsParams;->targetFrameToken:Lorg/chromium/blink/mojom/FrameToken;

    iput p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRecordWindowProxyUsageMetricsParams;->accessType:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x4e

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public registerProtocolHandler(Ljava/lang/String;Lorg/chromium/url/mojom/Url;Z)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRegisterProtocolHandlerParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRegisterProtocolHandlerParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRegisterProtocolHandlerParams;->scheme:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRegisterProtocolHandlerParams;->url:Lorg/chromium/url/mojom/Url;

    iput-boolean p3, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRegisterProtocolHandlerParams;->userGesture:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x3

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public runBeforeUnloadConfirm(ZLorg/chromium/blink/mojom/LocalFrameHost$RunBeforeUnloadConfirm_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunBeforeUnloadConfirmParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunBeforeUnloadConfirmParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunBeforeUnloadConfirmParams;->isReload:Z

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

    const/16 v5, 0x2a

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunBeforeUnloadConfirmResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunBeforeUnloadConfirmResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/LocalFrameHost$RunBeforeUnloadConfirm_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public runModalAlertDialog(Lorg/chromium/mojo_base/mojom/String16;ZLorg/chromium/blink/mojom/LocalFrameHost$RunModalAlertDialog_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalAlertDialogParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalAlertDialogParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalAlertDialogParams;->alertMessage:Lorg/chromium/mojo_base/mojom/String16;

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalAlertDialogParams;->disableThirdPartySubframeSuppresion:Z

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

    const/16 v4, 0x27

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalAlertDialogResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalAlertDialogResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/LocalFrameHost$RunModalAlertDialog_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public runModalConfirmDialog(Lorg/chromium/mojo_base/mojom/String16;ZLorg/chromium/blink/mojom/LocalFrameHost$RunModalConfirmDialog_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalConfirmDialogParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalConfirmDialogParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalConfirmDialogParams;->alertMessage:Lorg/chromium/mojo_base/mojom/String16;

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalConfirmDialogParams;->disableThirdPartySubframeSuppresion:Z

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

    const/16 v4, 0x28

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalConfirmDialogResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalConfirmDialogResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/LocalFrameHost$RunModalConfirmDialog_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public runModalPromptDialog(Lorg/chromium/mojo_base/mojom/String16;Lorg/chromium/mojo_base/mojom/String16;ZLorg/chromium/blink/mojom/LocalFrameHost$RunModalPromptDialog_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalPromptDialogParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalPromptDialogParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalPromptDialogParams;->alertMessage:Lorg/chromium/mojo_base/mojom/String16;

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalPromptDialogParams;->defaultValue:Lorg/chromium/mojo_base/mojom/String16;

    iput-boolean p3, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalPromptDialogParams;->disableThirdPartySubframeSuppresion:Z

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

    const/16 v3, 0x29

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalPromptDialogResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostRunModalPromptDialogResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/LocalFrameHost$RunModalPromptDialog_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public scrollRectToVisibleInParentFrame(Lorg/chromium/gfx/mojom/RectF;Lorg/chromium/blink/mojom/ScrollIntoViewParams;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostScrollRectToVisibleInParentFrameParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostScrollRectToVisibleInParentFrameParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostScrollRectToVisibleInParentFrameParams;->rectToScroll:Lorg/chromium/gfx/mojom/RectF;

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostScrollRectToVisibleInParentFrameParams;->params:Lorg/chromium/blink/mojom/ScrollIntoViewParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x14

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public sendFencedFrameReportingBeacon(Ljava/lang/String;Ljava/lang/String;[IZ)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;->eventData:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;->eventType:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;->destinations:[I

    iput-boolean p4, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconParams;->crossOriginExposed:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x41

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public sendFencedFrameReportingBeaconToCustomUrl(Lorg/chromium/url/mojom/Url;Z)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconToCustomUrlParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconToCustomUrlParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconToCustomUrlParams;->destinationUrl:Lorg/chromium/url/mojom/Url;

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendFencedFrameReportingBeaconToCustomUrlParams;->crossOriginExposed:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x42

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public sendLegacyTechEvent(Ljava/lang/String;Lorg/chromium/blink/mojom/LegacyTechEventCodeLocation;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendLegacyTechEventParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendLegacyTechEventParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendLegacyTechEventParams;->type:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendLegacyTechEventParams;->codeLocation:Lorg/chromium/blink/mojom/LegacyTechEventCodeLocation;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x45

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public sendPrivateAggregationRequestsForFencedFrameEvent(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendPrivateAggregationRequestsForFencedFrameEventParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendPrivateAggregationRequestsForFencedFrameEventParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSendPrivateAggregationRequestsForFencedFrameEventParams;->eventType:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x47

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setCloseListener(Lorg/chromium/blink/mojom/CloseListener;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetCloseListenerParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetCloseListenerParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetCloseListenerParams;->listener:Lorg/chromium/blink/mojom/CloseListener;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x39

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setFencedFrameAutomaticBeaconReportEventData(ILjava/lang/String;[IZZ)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetFencedFrameAutomaticBeaconReportEventDataParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetFencedFrameAutomaticBeaconReportEventDataParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetFencedFrameAutomaticBeaconReportEventDataParams;->eventType:I

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetFencedFrameAutomaticBeaconReportEventDataParams;->eventData:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetFencedFrameAutomaticBeaconReportEventDataParams;->destinations:[I

    iput-boolean p4, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetFencedFrameAutomaticBeaconReportEventDataParams;->once:Z

    iput-boolean p5, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetFencedFrameAutomaticBeaconReportEventDataParams;->crossOriginExposed:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x46

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public setNeedsOcclusionTracking(Z)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetNeedsOcclusionTrackingParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetNeedsOcclusionTrackingParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetNeedsOcclusionTrackingParams;->needsTracking:Z

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

.method public setVirtualKeyboardMode(I)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetVirtualKeyboardModeParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetVirtualKeyboardModeParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSetVirtualKeyboardModeParams;->type:I

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

.method public showContextMenu(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowContextMenuParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowContextMenuParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowContextMenuParams;->client:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowContextMenuParams;->params:Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x32

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public showPopupMenu(Lorg/chromium/blink/mojom/PopupMenuClient;Lorg/chromium/gfx/mojom/Rect;DI[Lorg/chromium/blink/mojom/MenuItem;ZZI)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowPopupMenuParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowPopupMenuParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowPopupMenuParams;->popupClient:Lorg/chromium/blink/mojom/PopupMenuClient;

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowPopupMenuParams;->bounds:Lorg/chromium/gfx/mojom/Rect;

    iput-wide p3, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowPopupMenuParams;->fontSize:D

    iput p5, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowPopupMenuParams;->selectedItem:I

    iput-object p6, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowPopupMenuParams;->menuItems:[Lorg/chromium/blink/mojom/MenuItem;

    iput-boolean p7, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowPopupMenuParams;->rightAligned:Z

    iput-boolean p8, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowPopupMenuParams;->allowMultipleSelection:Z

    iput p9, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostShowPopupMenuParams;->advancedImeOptions:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x30

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public startDragging(Lorg/chromium/blink/mojom/DragData;Lorg/chromium/blink/mojom/AllowedDragOperations;Lorg/chromium/skia/mojom/BitmapN32;Lorg/chromium/gfx/mojom/Vector2d;Lorg/chromium/gfx/mojom/Rect;Lorg/chromium/blink/mojom/DragEventSourceInfo;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->dragData:Lorg/chromium/blink/mojom/DragData;

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->operationsAllowed:Lorg/chromium/blink/mojom/AllowedDragOperations;

    iput-object p3, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->image:Lorg/chromium/skia/mojom/BitmapN32;

    iput-object p4, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->cursorOffsetInDip:Lorg/chromium/gfx/mojom/Vector2d;

    iput-object p5, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->dragObjRectInDip:Lorg/chromium/gfx/mojom/Rect;

    iput-object p6, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartDraggingParams;->eventInfo:Lorg/chromium/blink/mojom/DragEventSourceInfo;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x4b

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public startLoadingForAsyncNavigationApiCommit()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartLoadingForAsyncNavigationApiCommitParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostStartLoadingForAsyncNavigationApiCommitParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public suddenTerminationDisablerChanged(ZI)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSuddenTerminationDisablerChangedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSuddenTerminationDisablerChangedParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSuddenTerminationDisablerChangedParams;->present:Z

    iput p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostSuddenTerminationDisablerChangedParams;->disablerType:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x12

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public textSelectionChanged(Lorg/chromium/mojo_base/mojom/BigString16;ILorg/chromium/gfx/mojom/Range;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostTextSelectionChangedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostTextSelectionChangedParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostTextSelectionChangedParams;->text:Lorg/chromium/mojo_base/mojom/BigString16;

    iput p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostTextSelectionChangedParams;->offset:I

    iput-object p3, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostTextSelectionChangedParams;->range:Lorg/chromium/gfx/mojom/Range;

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

.method public unregisterProtocolHandler(Ljava/lang/String;Lorg/chromium/url/mojom/Url;Z)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUnregisterProtocolHandlerParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUnregisterProtocolHandlerParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUnregisterProtocolHandlerParams;->scheme:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUnregisterProtocolHandlerParams;->url:Lorg/chromium/url/mojom/Url;

    iput-boolean p3, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUnregisterProtocolHandlerParams;->userGesture:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public updateApplicationTitle(Lorg/chromium/mojo_base/mojom/String16;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateApplicationTitleParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateApplicationTitleParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateApplicationTitleParams;->applicationTitle:Lorg/chromium/mojo_base/mojom/String16;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public updateFaviconUrl([Lorg/chromium/blink/mojom/FaviconUrl;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateFaviconUrlParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateFaviconUrlParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateFaviconUrlParams;->faviconUrls:[Lorg/chromium/blink/mojom/FaviconUrl;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x2b

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public updateTitle(Lorg/chromium/mojo_base/mojom/String16;I)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateTitleParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateTitleParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateTitleParams;->title:Lorg/chromium/mojo_base/mojom/String16;

    iput p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateTitleParams;->titleDirection:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x1e

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public updateUserActivationState(II)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateUserActivationStateParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateUserActivationStateParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateUserActivationStateParams;->updateType:I

    iput p2, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostUpdateUserActivationStateParams;->notificationType:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x20

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public visibilityChanged(I)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostVisibilityChangedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostVisibilityChangedParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/LocalFrameHost_Internal$LocalFrameHostVisibilityChangedParams;->visibility:I

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
