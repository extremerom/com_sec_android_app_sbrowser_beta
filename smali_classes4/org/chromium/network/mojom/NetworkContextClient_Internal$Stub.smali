.class final Lorg/chromium/network/mojom/NetworkContextClient_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/NetworkContextClient_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/network/mojom/NetworkContextClient;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/network/mojom/NetworkContextClient;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 4

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

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnNewSctAuditingReportSentParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnNewSctAuditingReportSentParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/NetworkContextClient;

    invoke-interface {p0}, Lorg/chromium/network/mojom/NetworkContextClient;->onNewSctAuditingReportSent()V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    sget-object p0, Lorg/chromium/network/mojom/NetworkContextClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_7

    if-eqz v3, :cond_6

    if-eq v3, v4, :cond_5

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4

    const/4 v5, 0x3

    if-eq v3, v5, :cond_3

    if-eq v3, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnCanSendSctAuditingReportParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnCanSendSctAuditingReportParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/NetworkContextClient;

    new-instance v2, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnCanSendSctAuditingReportResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v2, p0, p2, v5, v6}, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnCanSendSctAuditingReportResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/NetworkContextClient;->onCanSendSctAuditingReport(Lorg/chromium/network/mojom/NetworkContextClient$OnCanSendSctAuditingReport_Response;)V

    return v4

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnGenerateHttpNegotiateAuthTokenParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnGenerateHttpNegotiateAuthTokenParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/chromium/network/mojom/NetworkContextClient;

    iget-object v6, p1, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnGenerateHttpNegotiateAuthTokenParams;->serverAuthToken:Ljava/lang/String;

    iget-boolean v7, p1, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnGenerateHttpNegotiateAuthTokenParams;->canDelegate:Z

    iget-object v8, p1, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnGenerateHttpNegotiateAuthTokenParams;->authNegotiateAndroidAccountType:Ljava/lang/String;

    iget-object v9, p1, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnGenerateHttpNegotiateAuthTokenParams;->spn:Ljava/lang/String;

    new-instance v10, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnGenerateHttpNegotiateAuthTokenResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v10, p0, p2, v1, v2}, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnGenerateHttpNegotiateAuthTokenResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v5 .. v10}, Lorg/chromium/network/mojom/NetworkContextClient;->onGenerateHttpNegotiateAuthToken(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lorg/chromium/network/mojom/NetworkContextClient$OnGenerateHttpNegotiateAuthToken_Response;)V

    return v4

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnCanSendDomainReliabilityUploadParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnCanSendDomainReliabilityUploadParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContextClient;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnCanSendDomainReliabilityUploadParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

    new-instance v3, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnCanSendDomainReliabilityUploadResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v3, p0, p2, v5, v6}, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnCanSendDomainReliabilityUploadResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/network/mojom/NetworkContextClient;->onCanSendDomainReliabilityUpload(Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/network/mojom/NetworkContextClient$OnCanSendDomainReliabilityUpload_Response;)V

    return v4

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnCanSendReportingReportsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnCanSendReportingReportsParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/NetworkContextClient;

    iget-object p1, p1, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnCanSendReportingReportsParams;->origins:[Lorg/chromium/url/internal/mojom/Origin;

    new-instance v3, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnCanSendReportingReportsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v3, p0, p2, v5, v6}, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnCanSendReportingReportsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/network/mojom/NetworkContextClient;->onCanSendReportingReports([Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/network/mojom/NetworkContextClient$OnCanSendReportingReports_Response;)V

    return v4

    :cond_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnFileUploadRequestedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnFileUploadRequestedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/chromium/network/mojom/NetworkContextClient;

    iget v6, p1, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnFileUploadRequestedParams;->processId:I

    iget-boolean v7, p1, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnFileUploadRequestedParams;->async:Z

    iget-object v8, p1, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnFileUploadRequestedParams;->filePaths:[Lorg/chromium/mojo_base/mojom/FilePath;

    iget-object v9, p1, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnFileUploadRequestedParams;->destinationUrl:Lorg/chromium/url/mojom/Url;

    new-instance v10, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnFileUploadRequestedResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v10, p0, p2, v1, v2}, Lorg/chromium/network/mojom/NetworkContextClient_Internal$NetworkContextClientOnFileUploadRequestedResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v5 .. v10}, Lorg/chromium/network/mojom/NetworkContextClient;->onFileUploadRequested(IZ[Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/NetworkContextClient$OnFileUploadRequested_Response;)V

    return v4

    :cond_7
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/network/mojom/NetworkContextClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
