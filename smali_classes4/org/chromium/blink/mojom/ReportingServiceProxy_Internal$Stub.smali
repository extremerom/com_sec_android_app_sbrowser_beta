.class final Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/ReportingServiceProxy;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/ReportingServiceProxy;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 18

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    return v1

    :pswitch_1
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspHashReportParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspHashReportParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/chromium/blink/mojom/ReportingServiceProxy;

    iget-object v5, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspHashReportParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v6, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspHashReportParams;->endpoint:Ljava/lang/String;

    iget-object v7, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspHashReportParams;->subresourceUrl:Ljava/lang/String;

    iget-object v8, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspHashReportParams;->integrityHash:Ljava/lang/String;

    iget-object v9, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspHashReportParams;->type:Ljava/lang/String;

    iget-object v10, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspHashReportParams;->destination:Ljava/lang/String;

    invoke-interface/range {v4 .. v10}, Lorg/chromium/blink/mojom/ReportingServiceProxy;->queueCspHashReport(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDocumentPolicyViolationReportParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDocumentPolicyViolationReportParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/chromium/blink/mojom/ReportingServiceProxy;

    iget-object v5, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDocumentPolicyViolationReportParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v6, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDocumentPolicyViolationReportParams;->group:Ljava/lang/String;

    iget-object v7, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDocumentPolicyViolationReportParams;->policyId:Ljava/lang/String;

    iget-object v8, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDocumentPolicyViolationReportParams;->disposition:Ljava/lang/String;

    iget-object v9, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDocumentPolicyViolationReportParams;->message:Ljava/lang/String;

    iget-object v10, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDocumentPolicyViolationReportParams;->sourceFile:Ljava/lang/String;

    iget v11, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDocumentPolicyViolationReportParams;->lineNumber:I

    iget v12, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDocumentPolicyViolationReportParams;->columnNumber:I

    invoke-interface/range {v4 .. v12}, Lorg/chromium/blink/mojom/ReportingServiceProxy;->queueDocumentPolicyViolationReport(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return v3

    :pswitch_3
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePotentialPermissionsPolicyViolationReportParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePotentialPermissionsPolicyViolationReportParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/chromium/blink/mojom/ReportingServiceProxy;

    iget-object v5, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePotentialPermissionsPolicyViolationReportParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v6, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePotentialPermissionsPolicyViolationReportParams;->endpoint:Ljava/lang/String;

    iget-object v7, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePotentialPermissionsPolicyViolationReportParams;->policyId:Ljava/lang/String;

    iget-object v8, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePotentialPermissionsPolicyViolationReportParams;->disposition:Ljava/lang/String;

    iget-object v9, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePotentialPermissionsPolicyViolationReportParams;->message:Ljava/lang/String;

    iget-object v10, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePotentialPermissionsPolicyViolationReportParams;->allowAttribute:Ljava/lang/String;

    iget-object v11, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePotentialPermissionsPolicyViolationReportParams;->srcAttribute:Ljava/lang/String;

    iget-object v12, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePotentialPermissionsPolicyViolationReportParams;->sourceFile:Ljava/lang/String;

    iget v13, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePotentialPermissionsPolicyViolationReportParams;->lineNumber:I

    iget v14, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePotentialPermissionsPolicyViolationReportParams;->columnNumber:I

    invoke-interface/range {v4 .. v14}, Lorg/chromium/blink/mojom/ReportingServiceProxy;->queuePotentialPermissionsPolicyViolationReport(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return v3

    :pswitch_4
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePermissionsPolicyViolationReportParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePermissionsPolicyViolationReportParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/chromium/blink/mojom/ReportingServiceProxy;

    iget-object v5, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePermissionsPolicyViolationReportParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v6, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePermissionsPolicyViolationReportParams;->endpoint:Ljava/lang/String;

    iget-object v7, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePermissionsPolicyViolationReportParams;->policyId:Ljava/lang/String;

    iget-object v8, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePermissionsPolicyViolationReportParams;->disposition:Ljava/lang/String;

    iget-object v9, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePermissionsPolicyViolationReportParams;->message:Ljava/lang/String;

    iget-object v10, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePermissionsPolicyViolationReportParams;->sourceFile:Ljava/lang/String;

    iget v11, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePermissionsPolicyViolationReportParams;->lineNumber:I

    iget v12, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueuePermissionsPolicyViolationReportParams;->columnNumber:I

    invoke-interface/range {v4 .. v12}, Lorg/chromium/blink/mojom/ReportingServiceProxy;->queuePermissionsPolicyViolationReport(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return v3

    :pswitch_5
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/chromium/blink/mojom/ReportingServiceProxy;

    iget-object v5, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v6, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;->group:Ljava/lang/String;

    iget-object v7, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;->documentUrl:Ljava/lang/String;

    iget-object v8, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;->referrer:Ljava/lang/String;

    iget-object v9, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;->blockedUrl:Ljava/lang/String;

    iget-object v10, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;->effectiveDirective:Ljava/lang/String;

    iget-object v11, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;->originalPolicy:Ljava/lang/String;

    iget-object v12, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;->sourceFile:Ljava/lang/String;

    iget-object v13, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;->scriptSample:Ljava/lang/String;

    iget-object v14, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;->disposition:Ljava/lang/String;

    iget-short v15, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;->statusCode:S

    iget v2, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;->lineNumber:I

    iget v0, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueCspViolationReportParams;->columnNumber:I

    move/from16 v16, v2

    move/from16 v17, v0

    invoke-interface/range {v4 .. v17}, Lorg/chromium/blink/mojom/ReportingServiceProxy;->queueCspViolationReport(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SII)V

    return v3

    :pswitch_6
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDeprecationReportParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDeprecationReportParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/chromium/blink/mojom/ReportingServiceProxy;

    iget-object v5, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDeprecationReportParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v6, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDeprecationReportParams;->id:Ljava/lang/String;

    iget-object v7, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDeprecationReportParams;->anticipatedRemoval:Lorg/chromium/mojo_base/mojom/Time;

    iget-object v8, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDeprecationReportParams;->message:Ljava/lang/String;

    iget-object v9, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDeprecationReportParams;->sourceFile:Ljava/lang/String;

    iget v10, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDeprecationReportParams;->lineNumber:I

    iget v11, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueDeprecationReportParams;->columnNumber:I

    invoke-interface/range {v4 .. v11}, Lorg/chromium/blink/mojom/ReportingServiceProxy;->queueDeprecationReport(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Lorg/chromium/mojo_base/mojom/Time;Ljava/lang/String;Ljava/lang/String;II)V

    return v3

    :pswitch_7
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueInterventionReportParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueInterventionReportParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/chromium/blink/mojom/ReportingServiceProxy;

    iget-object v5, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueInterventionReportParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v6, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueInterventionReportParams;->id:Ljava/lang/String;

    iget-object v7, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueInterventionReportParams;->message:Ljava/lang/String;

    iget-object v8, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueInterventionReportParams;->sourceFile:Ljava/lang/String;

    iget v9, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueInterventionReportParams;->lineNumber:I

    iget v10, v0, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal$ReportingServiceProxyQueueInterventionReportParams;->columnNumber:I

    invoke-interface/range {v4 .. v10}, Lorg/chromium/blink/mojom/ReportingServiceProxy;->queueInterventionReport(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return v3

    :pswitch_8
    sget-object v2, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v2, v0}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

    move-result v0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_1
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
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

    sget-object v1, Lorg/chromium/blink/mojom/ReportingServiceProxy_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
