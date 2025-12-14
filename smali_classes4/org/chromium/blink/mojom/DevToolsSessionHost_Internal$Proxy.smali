.class final Lorg/chromium/blink/mojom/DevToolsSessionHost_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/DevToolsSessionHost$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/DevToolsSessionHost_Internal;
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
.method public dispatchProtocolNotification(Lorg/chromium/blink/mojom/DevToolsMessage;Lorg/chromium/blink/mojom/DevToolsSessionState;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/DevToolsSessionHost_Internal$DevToolsSessionHostDispatchProtocolNotificationParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/DevToolsSessionHost_Internal$DevToolsSessionHostDispatchProtocolNotificationParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/DevToolsSessionHost_Internal$DevToolsSessionHostDispatchProtocolNotificationParams;->message:Lorg/chromium/blink/mojom/DevToolsMessage;

    iput-object p2, v0, Lorg/chromium/blink/mojom/DevToolsSessionHost_Internal$DevToolsSessionHostDispatchProtocolNotificationParams;->updates:Lorg/chromium/blink/mojom/DevToolsSessionState;

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

.method public dispatchProtocolResponse(Lorg/chromium/blink/mojom/DevToolsMessage;ILorg/chromium/blink/mojom/DevToolsSessionState;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/DevToolsSessionHost_Internal$DevToolsSessionHostDispatchProtocolResponseParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/DevToolsSessionHost_Internal$DevToolsSessionHostDispatchProtocolResponseParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/DevToolsSessionHost_Internal$DevToolsSessionHostDispatchProtocolResponseParams;->message:Lorg/chromium/blink/mojom/DevToolsMessage;

    iput p2, v0, Lorg/chromium/blink/mojom/DevToolsSessionHost_Internal$DevToolsSessionHostDispatchProtocolResponseParams;->callId:I

    iput-object p3, v0, Lorg/chromium/blink/mojom/DevToolsSessionHost_Internal$DevToolsSessionHostDispatchProtocolResponseParams;->updates:Lorg/chromium/blink/mojom/DevToolsSessionState;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
