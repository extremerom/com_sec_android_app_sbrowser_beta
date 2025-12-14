.class final Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/ReportingServiceProxy$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal;
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
.method public queueCspHashReport(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspHashReportParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspHashReportParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspHashReportParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspHashReportParams;->endpoint:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspHashReportParams;->subresourceUrl:Ljava/lang/String;

    iput-object p4, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspHashReportParams;->integrityHash:Ljava/lang/String;

    iput-object p5, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspHashReportParams;->type:Ljava/lang/String;

    iput-object p6, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspHashReportParams;->destination:Ljava/lang/String;

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

.method public queueCspViolationReport(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SII)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;->group:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;->documentUrl:Ljava/lang/String;

    iput-object p4, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;->referrer:Ljava/lang/String;

    iput-object p5, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;->blockedUrl:Ljava/lang/String;

    iput-object p6, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;->effectiveDirective:Ljava/lang/String;

    iput-object p7, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;->originalPolicy:Ljava/lang/String;

    iput-object p8, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;->sourceFile:Ljava/lang/String;

    iput-object p9, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;->scriptSample:Ljava/lang/String;

    iput-object p10, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;->disposition:Ljava/lang/String;

    iput-short p11, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;->statusCode:S

    iput p12, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;->lineNumber:I

    iput p13, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;->columnNumber:I

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

.method public queueDeprecationReport(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Lorg/chromium/mojo_base/mojom/Time;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDeprecationReportParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDeprecationReportParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDeprecationReportParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDeprecationReportParams;->id:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDeprecationReportParams;->anticipatedRemoval:Lorg/chromium/mojo_base/mojom/Time;

    iput-object p4, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDeprecationReportParams;->message:Ljava/lang/String;

    iput-object p5, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDeprecationReportParams;->sourceFile:Ljava/lang/String;

    iput p6, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDeprecationReportParams;->lineNumber:I

    iput p7, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDeprecationReportParams;->columnNumber:I

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

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public queueDocumentPolicyViolationReport(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDocumentPolicyViolationReportParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDocumentPolicyViolationReportParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDocumentPolicyViolationReportParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDocumentPolicyViolationReportParams;->group:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDocumentPolicyViolationReportParams;->policyId:Ljava/lang/String;

    iput-object p4, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDocumentPolicyViolationReportParams;->disposition:Ljava/lang/String;

    iput-object p5, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDocumentPolicyViolationReportParams;->message:Ljava/lang/String;

    iput-object p6, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDocumentPolicyViolationReportParams;->sourceFile:Ljava/lang/String;

    iput p7, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDocumentPolicyViolationReportParams;->lineNumber:I

    iput p8, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDocumentPolicyViolationReportParams;->columnNumber:I

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

.method public queueInterventionReport(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueInterventionReportParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueInterventionReportParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueInterventionReportParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueInterventionReportParams;->id:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueInterventionReportParams;->message:Ljava/lang/String;

    iput-object p4, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueInterventionReportParams;->sourceFile:Ljava/lang/String;

    iput p5, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueInterventionReportParams;->lineNumber:I

    iput p6, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueInterventionReportParams;->columnNumber:I

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

.method public queuePermissionsPolicyViolationReport(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePermissionsPolicyViolationReportParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePermissionsPolicyViolationReportParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePermissionsPolicyViolationReportParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePermissionsPolicyViolationReportParams;->endpoint:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePermissionsPolicyViolationReportParams;->policyId:Ljava/lang/String;

    iput-object p4, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePermissionsPolicyViolationReportParams;->disposition:Ljava/lang/String;

    iput-object p5, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePermissionsPolicyViolationReportParams;->message:Ljava/lang/String;

    iput-object p6, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePermissionsPolicyViolationReportParams;->sourceFile:Ljava/lang/String;

    iput p7, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePermissionsPolicyViolationReportParams;->lineNumber:I

    iput p8, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePermissionsPolicyViolationReportParams;->columnNumber:I

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

.method public queuePotentialPermissionsPolicyViolationReport(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePotentialPermissionsPolicyViolationReportParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePotentialPermissionsPolicyViolationReportParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePotentialPermissionsPolicyViolationReportParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePotentialPermissionsPolicyViolationReportParams;->endpoint:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePotentialPermissionsPolicyViolationReportParams;->policyId:Ljava/lang/String;

    iput-object p4, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePotentialPermissionsPolicyViolationReportParams;->disposition:Ljava/lang/String;

    iput-object p5, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePotentialPermissionsPolicyViolationReportParams;->message:Ljava/lang/String;

    iput-object p6, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePotentialPermissionsPolicyViolationReportParams;->allowAttribute:Ljava/lang/String;

    iput-object p7, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePotentialPermissionsPolicyViolationReportParams;->srcAttribute:Ljava/lang/String;

    iput-object p8, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePotentialPermissionsPolicyViolationReportParams;->sourceFile:Ljava/lang/String;

    iput p9, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePotentialPermissionsPolicyViolationReportParams;->lineNumber:I

    iput p10, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePotentialPermissionsPolicyViolationReportParams;->columnNumber:I

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
