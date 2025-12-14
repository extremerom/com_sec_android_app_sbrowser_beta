.class final Lorg/chromium/network/mojom/NetworkContextClient_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/network/mojom/NetworkContextClient$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/NetworkContextClient_Internal;
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
.method public onCanSendDomainReliabilityUpload(Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/network/mojom/NetworkContextClient$OnCanSendDomainReliabilityUpload_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnCanSendDomainReliabilityUploadParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnCanSendDomainReliabilityUploadParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnCanSendDomainReliabilityUploadParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

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

    const/4 v5, 0x2

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnCanSendDomainReliabilityUploadResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnCanSendDomainReliabilityUploadResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContextClient$OnCanSendDomainReliabilityUpload_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public onCanSendReportingReports([Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/network/mojom/NetworkContextClient$OnCanSendReportingReports_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnCanSendReportingReportsParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnCanSendReportingReportsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnCanSendReportingReportsParams;->origins:[Lorg/chromium/url/internal/mojom/Origin;

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

    new-instance v0, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnCanSendReportingReportsResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnCanSendReportingReportsResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContextClient$OnCanSendReportingReports_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public onCanSendSctAuditingReport(Lorg/chromium/network/mojom/NetworkContextClient$OnCanSendSctAuditingReport_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnCanSendSctAuditingReportParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnCanSendSctAuditingReportParams;-><init>()V

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

    const/4 v6, 0x4

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnCanSendSctAuditingReportResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnCanSendSctAuditingReportResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContextClient$OnCanSendSctAuditingReport_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public onFileUploadRequested(IZ[Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/NetworkContextClient$OnFileUploadRequested_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnFileUploadRequestedParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnFileUploadRequestedParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnFileUploadRequestedParams;->processId:I

    iput-boolean p2, v0, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnFileUploadRequestedParams;->async:Z

    iput-object p3, v0, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnFileUploadRequestedParams;->filePaths:[Lorg/chromium/mojo_base/mojom/FilePath;

    iput-object p4, v0, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnFileUploadRequestedParams;->destinationUrl:Lorg/chromium/url/mojom/Url;

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

    const/4 p4, 0x0

    invoke-direct {p2, p4, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnFileUploadRequestedResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnFileUploadRequestedResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContextClient$OnFileUploadRequested_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public onGenerateHttpNegotiateAuthToken(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lorg/chromium/network/mojom/NetworkContextClient$OnGenerateHttpNegotiateAuthToken_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnGenerateHttpNegotiateAuthTokenParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnGenerateHttpNegotiateAuthTokenParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnGenerateHttpNegotiateAuthTokenParams;->serverAuthToken:Ljava/lang/String;

    iput-boolean p2, v0, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnGenerateHttpNegotiateAuthTokenParams;->canDelegate:Z

    iput-object p3, v0, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnGenerateHttpNegotiateAuthTokenParams;->authNegotiateAndroidAccountType:Ljava/lang/String;

    iput-object p4, v0, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnGenerateHttpNegotiateAuthTokenParams;->spn:Ljava/lang/String;

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

    const/4 p4, 0x3

    invoke-direct {p2, p4, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnGenerateHttpNegotiateAuthTokenResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnGenerateHttpNegotiateAuthTokenResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/NetworkContextClient$OnGenerateHttpNegotiateAuthToken_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public onNewSctAuditingReportSent()V
    .locals 4

    new-instance v0, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnNewSctAuditingReportSentParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnNewSctAuditingReportSentParams;-><init>()V

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
