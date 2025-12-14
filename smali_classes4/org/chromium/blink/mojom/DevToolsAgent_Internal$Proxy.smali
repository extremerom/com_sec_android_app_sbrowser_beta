.class final Lorg/chromium/blink/mojom/DevToolsAgent_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/DevToolsAgent$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/DevToolsAgent_Internal;
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
.method public attachDevToolsSession(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/blink/mojom/DevToolsSessionState;Ljava/lang/String;ZZLjava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;",
            "Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/DevToolsSession;",
            ">;",
            "Lorg/chromium/blink/mojom/DevToolsSessionState;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentAttachDevToolsSessionParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentAttachDevToolsSessionParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentAttachDevToolsSessionParams;->host:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    iput-object p2, v0, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentAttachDevToolsSessionParams;->session:Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;

    iput-object p3, v0, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentAttachDevToolsSessionParams;->ioSession:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p4, v0, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentAttachDevToolsSessionParams;->reattachSessionState:Lorg/chromium/blink/mojom/DevToolsSessionState;

    iput-object p5, v0, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentAttachDevToolsSessionParams;->scriptToEvaluateOnLoad:Ljava/lang/String;

    iput-boolean p6, v0, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentAttachDevToolsSessionParams;->clientExpectsBinaryResponses:Z

    iput-boolean p7, v0, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentAttachDevToolsSessionParams;->clientIsTrusted:Z

    iput-object p8, v0, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentAttachDevToolsSessionParams;->sessionId:Ljava/lang/String;

    iput-boolean p9, v0, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentAttachDevToolsSessionParams;->sessionWaitsForDebugger:Z

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

.method public inspectElement(Lorg/chromium/gfx/mojom/Point;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentInspectElementParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentInspectElementParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentInspectElementParams;->point:Lorg/chromium/gfx/mojom/Point;

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

.method public reportChildTargets(ZZLorg/chromium/blink/mojom/DevToolsAgent$ReportChildTargets_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentReportChildTargetsParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentReportChildTargetsParams;-><init>()V

    iput-boolean p1, v0, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentReportChildTargetsParams;->report:Z

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentReportChildTargetsParams;->waitForDebugger:Z

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

    const/4 v4, 0x2

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentReportChildTargetsResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentReportChildTargetsResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/DevToolsAgent$ReportChildTargets_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
