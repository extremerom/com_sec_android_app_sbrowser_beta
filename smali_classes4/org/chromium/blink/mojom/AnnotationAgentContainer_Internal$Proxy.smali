.class final Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/AnnotationAgentContainer$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal;
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
.method public createAgent(Lorg/chromium/blink/mojom/AnnotationAgentHost;Lorg/chromium/mojo/bindings/InterfaceRequest;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/blink/mojom/AnnotationAgentHost;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/AnnotationAgent;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentParams;->hostRemote:Lorg/chromium/blink/mojom/AnnotationAgentHost;

    iput-object p2, v0, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentParams;->agentReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput p3, v0, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentParams;->type:I

    iput-object p4, v0, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentParams;->serializedSelector:Ljava/lang/String;

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

.method public createAgentFromSelection(ILorg/chromium/blink/mojom/AnnotationAgentContainer$CreateAgentFromSelection_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentFromSelectionParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentFromSelectionParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentFromSelectionParams;->type:I

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

    invoke-direct {v1, v2, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentFromSelectionResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentFromSelectionResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/AnnotationAgentContainer$CreateAgentFromSelection_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
