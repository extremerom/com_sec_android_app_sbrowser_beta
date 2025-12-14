.class final Lorg/chromium/blink/mojom/DevToolsAgent_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/DevToolsAgent_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/DevToolsAgent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/DevToolsAgent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 13

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentInspectElementParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentInspectElementParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/DevToolsAgent;

    iget-object p1, p1, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentInspectElementParams;->point:Lorg/chromium/gfx/mojom/Point;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/DevToolsAgent;->inspectElement(Lorg/chromium/gfx/mojom/Point;)V

    return v2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentAttachDevToolsSessionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentAttachDevToolsSessionParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/chromium/blink/mojom/DevToolsAgent;

    iget-object v4, p1, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentAttachDevToolsSessionParams;->host:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    iget-object v5, p1, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentAttachDevToolsSessionParams;->session:Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;

    iget-object v6, p1, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentAttachDevToolsSessionParams;->ioSession:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v7, p1, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentAttachDevToolsSessionParams;->reattachSessionState:Lorg/chromium/blink/mojom/DevToolsSessionState;

    iget-object v8, p1, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentAttachDevToolsSessionParams;->scriptToEvaluateOnLoad:Ljava/lang/String;

    iget-boolean v9, p1, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentAttachDevToolsSessionParams;->clientExpectsBinaryResponses:Z

    iget-boolean v10, p1, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentAttachDevToolsSessionParams;->clientIsTrusted:Z

    iget-object v11, p1, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentAttachDevToolsSessionParams;->sessionId:Ljava/lang/String;

    iget-boolean v12, p1, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentAttachDevToolsSessionParams;->sessionWaitsForDebugger:Z

    invoke-interface/range {v3 .. v12}, Lorg/chromium/blink/mojom/DevToolsAgent;->attachDevToolsSession(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/blink/mojom/DevToolsSessionState;Ljava/lang/String;ZZLjava/lang/String;Z)V

    return v2

    :cond_4
    sget-object p0, Lorg/chromium/blink/mojom/DevToolsAgent_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, p1}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

    move-result p0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentReportChildTargetsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentReportChildTargetsParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/DevToolsAgent;

    iget-boolean v4, p1, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentReportChildTargetsParams;->report:Z

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentReportChildTargetsParams;->waitForDebugger:Z

    new-instance v5, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentReportChildTargetsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/DevToolsAgent_Internal$DevToolsAgentReportChildTargetsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/blink/mojom/DevToolsAgent;->reportChildTargets(ZZLorg/chromium/blink/mojom/DevToolsAgent$ReportChildTargets_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/DevToolsAgent_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, v1, p1, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result p0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method
