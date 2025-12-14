.class final Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal;
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
.method public countFeature(I)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostCountFeatureParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostCountFeatureParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostCountFeatureParams;->feature:I

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

.method public onReadyForInspection(Lorg/chromium/blink/mojom/DevToolsAgent;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/blink/mojom/DevToolsAgent;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/DevToolsAgentHost;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReadyForInspectionParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReadyForInspectionParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReadyForInspectionParams;->agent:Lorg/chromium/blink/mojom/DevToolsAgent;

    iput-object p2, v0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReadyForInspectionParams;->agentHost:Lorg/chromium/mojo/bindings/InterfaceRequest;

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

.method public onReportConsoleMessage(IILorg/chromium/mojo_base/mojom/String16;ILorg/chromium/url/mojom/Url;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReportConsoleMessageParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReportConsoleMessageParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReportConsoleMessageParams;->source:I

    iput p2, v0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReportConsoleMessageParams;->messageLevel:I

    iput-object p3, v0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReportConsoleMessageParams;->message:Lorg/chromium/mojo_base/mojom/String16;

    iput p4, v0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReportConsoleMessageParams;->lineNumber:I

    iput-object p5, v0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReportConsoleMessageParams;->sourceUrl:Lorg/chromium/url/mojom/Url;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x7

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onReportException(Lorg/chromium/mojo_base/mojom/String16;IILorg/chromium/url/mojom/Url;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReportExceptionParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReportExceptionParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReportExceptionParams;->errorMessage:Lorg/chromium/mojo_base/mojom/String16;

    iput p2, v0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReportExceptionParams;->lineNumber:I

    iput p3, v0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReportExceptionParams;->columnNumber:I

    iput-object p4, v0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnReportExceptionParams;->sourceUrl:Lorg/chromium/url/mojom/Url;

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

.method public onScriptEvaluationStart()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnScriptEvaluationStartParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnScriptEvaluationStartParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public onScriptLoaded()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnScriptLoadedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnScriptLoadedParams;-><init>()V

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

.method public onStarted(IIZZILorg/chromium/blink/mojom/EmbeddedWorkerStartTiming;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnStartedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnStartedParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnStartedParams;->status:I

    iput p2, v0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnStartedParams;->fetchHandlerType:I

    iput-boolean p3, v0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnStartedParams;->hasHidEventHandlers:Z

    iput-boolean p4, v0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnStartedParams;->hasUsbEventHandlers:Z

    iput p5, v0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnStartedParams;->threadId:I

    iput-object p6, v0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnStartedParams;->startTiming:Lorg/chromium/blink/mojom/EmbeddedWorkerStartTiming;

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

.method public onStopped()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnStoppedParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostOnStoppedParams;-><init>()V

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

.method public requestTermination(Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost$RequestTermination_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostRequestTerminationParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostRequestTerminationParams;-><init>()V

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

    const/4 v6, 0x0

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostRequestTerminationResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost_Internal$EmbeddedWorkerInstanceHostRequestTerminationResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/EmbeddedWorkerInstanceHost$RequestTermination_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
