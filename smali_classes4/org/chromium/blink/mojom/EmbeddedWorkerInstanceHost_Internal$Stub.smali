.class final Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 10

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

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnStoppedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnStoppedParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost;->onStopped()V

    return v2

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReportConsoleMessageParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReportConsoleMessageParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost;

    iget v4, p1, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReportConsoleMessageParams;->source:I

    iget v5, p1, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReportConsoleMessageParams;->messageLevel:I

    iget-object v6, p1, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReportConsoleMessageParams;->message:Lorg/chromium/mojo_base/mojom/String16;

    iget v7, p1, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReportConsoleMessageParams;->lineNumber:I

    iget-object v8, p1, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReportConsoleMessageParams;->sourceUrl:Lorg/chromium/url/mojom/Url;

    invoke-interface/range {v3 .. v8}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost;->onReportConsoleMessage(IILorg/chromium/mojo_base/mojom/String16;ILorg/chromium/url/mojom/Url;)V

    return v2

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReportExceptionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReportExceptionParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReportExceptionParams;->errorMessage:Lorg/chromium/mojo_base/mojom/String16;

    iget v3, p1, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReportExceptionParams;->lineNumber:I

    iget v4, p1, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReportExceptionParams;->columnNumber:I

    iget-object p1, p1, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReportExceptionParams;->sourceUrl:Lorg/chromium/url/mojom/Url;

    invoke-interface {p0, v1, v3, v4, p1}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost;->onReportException(Lorg/chromium/mojo_base/mojom/String16;IILorg/chromium/url/mojom/Url;)V

    return v2

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnStartedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnStartedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost;

    iget v4, p1, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnStartedParams;->status:I

    iget v5, p1, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnStartedParams;->fetchHandlerType:I

    iget-boolean v6, p1, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnStartedParams;->hasHidEventHandlers:Z

    iget-boolean v7, p1, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnStartedParams;->hasUsbEventHandlers:Z

    iget v8, p1, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnStartedParams;->threadId:I

    iget-object v9, p1, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnStartedParams;->startTiming:Lorg/chromium/blink/mojom/EmbeddedWorkerStartTiming;

    invoke-interface/range {v3 .. v9}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost;->onStarted(IIZZILorg/chromium/blink/mojom/EmbeddedWorkerStartTiming;)V

    return v2

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnScriptEvaluationStartParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnScriptEvaluationStartParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost;->onScriptEvaluationStart()V

    return v2

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnScriptLoadedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnScriptLoadedParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost;->onScriptLoaded()V

    return v2

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReadyForInspectionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReadyForInspectionParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReadyForInspectionParams;->agent:Lorg/chromium/blink/mojom/DevToolsAgent;

    iget-object p1, p1, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReadyForInspectionParams;->agentHost:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost;->onReadyForInspection(Lorg/chromium/blink/mojom/DevToolsAgent;Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    return v2

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostCountFeatureParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostCountFeatureParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost;

    iget p1, p1, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostCountFeatureParams;->feature:I

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost;->countFeature(I)V

    return v2

    :cond_2
    sget-object p0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 6

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

    if-eqz v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostRequestTerminationParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostRequestTerminationParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost;

    new-instance v2, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostRequestTerminationResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostRequestTerminationResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost;->requestTermination(Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost$RequestTermination_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
