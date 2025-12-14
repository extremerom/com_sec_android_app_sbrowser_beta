.class final Lorg/chromium/blink/mojom/DevToolsAgentHost_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/DevToolsAgentHost_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/DevToolsAgentHost;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/DevToolsAgentHost;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 11

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

    if-eq v1, v2, :cond_6

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/DevToolsAgentHost_Internal$DevToolsAgentHostBringToForegroundParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/DevToolsAgentHost_Internal$DevToolsAgentHostBringToForegroundParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/DevToolsAgentHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/DevToolsAgentHost;->bringToForeground()V

    return v2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/DevToolsAgentHost_Internal$DevToolsAgentHostMainThreadDebuggerResumedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/DevToolsAgentHost_Internal$DevToolsAgentHostMainThreadDebuggerResumedParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/DevToolsAgentHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/DevToolsAgentHost;->mainThreadDebuggerResumed()V

    return v2

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/DevToolsAgentHost_Internal$DevToolsAgentHostMainThreadDebuggerPausedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/DevToolsAgentHost_Internal$DevToolsAgentHostMainThreadDebuggerPausedParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/DevToolsAgentHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/DevToolsAgentHost;->mainThreadDebuggerPaused()V

    return v2

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/DevToolsAgentHost_Internal$DevToolsAgentHostChildTargetCreatedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/DevToolsAgentHost_Internal$DevToolsAgentHostChildTargetCreatedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/chromium/blink/mojom/DevToolsAgentHost;

    iget-object v4, p1, Lorg/chromium/blink/mojom/DevToolsAgentHost_Internal$DevToolsAgentHostChildTargetCreatedParams;->workerDevtoolsAgent:Lorg/chromium/blink/mojom/DevToolsAgent;

    iget-object v5, p1, Lorg/chromium/blink/mojom/DevToolsAgentHost_Internal$DevToolsAgentHostChildTargetCreatedParams;->workerDevtoolsAgentHost:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v6, p1, Lorg/chromium/blink/mojom/DevToolsAgentHost_Internal$DevToolsAgentHostChildTargetCreatedParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v7, p1, Lorg/chromium/blink/mojom/DevToolsAgentHost_Internal$DevToolsAgentHostChildTargetCreatedParams;->name:Ljava/lang/String;

    iget-object v8, p1, Lorg/chromium/blink/mojom/DevToolsAgentHost_Internal$DevToolsAgentHostChildTargetCreatedParams;->devtoolsWorkerToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget-boolean v9, p1, Lorg/chromium/blink/mojom/DevToolsAgentHost_Internal$DevToolsAgentHostChildTargetCreatedParams;->waitingForDebugger:Z

    iget v10, p1, Lorg/chromium/blink/mojom/DevToolsAgentHost_Internal$DevToolsAgentHostChildTargetCreatedParams;->contextType:I

    invoke-interface/range {v3 .. v10}, Lorg/chromium/blink/mojom/DevToolsAgentHost;->childTargetCreated(Lorg/chromium/blink/mojom/DevToolsAgent;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/url/mojom/Url;Ljava/lang/String;Lorg/chromium/mojo_base/mojom/UnguessableToken;ZI)V

    return v2

    :cond_6
    sget-object p0, Lorg/chromium/blink/mojom/DevToolsAgentHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/DevToolsAgentHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, v1, p1, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result p0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method
