.class final Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/mojom/ContentDecryptionModule_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/media/mojom/ContentDecryptionModule;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/media/mojom/ContentDecryptionModule;)V
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

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleSetClientParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleSetClientParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/ContentDecryptionModule;

    iget-object p1, p1, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleSetClientParams;->client:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/ContentDecryptionModule;->setClient(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;)V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    sget-object p0, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
    .locals 9

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

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleRemoveSessionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleRemoveSessionParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/media/mojom/ContentDecryptionModule;

    iget-object p1, p1, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleRemoveSessionParams;->sessionId:Ljava/lang/String;

    new-instance v4, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleRemoveSessionResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleRemoveSessionResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/media/mojom/ContentDecryptionModule;->removeSession(Ljava/lang/String;Lorg/chromium/media/mojom/ContentDecryptionModule$RemoveSession_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleCloseSessionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleCloseSessionParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/media/mojom/ContentDecryptionModule;

    iget-object p1, p1, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleCloseSessionParams;->sessionId:Ljava/lang/String;

    new-instance v4, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleCloseSessionResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleCloseSessionResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/media/mojom/ContentDecryptionModule;->closeSession(Ljava/lang/String;Lorg/chromium/media/mojom/ContentDecryptionModule$CloseSession_Response;)V

    return v3

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleUpdateSessionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleUpdateSessionParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/media/mojom/ContentDecryptionModule;

    iget-object v4, p1, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleUpdateSessionParams;->sessionId:Ljava/lang/String;

    iget-object p1, p1, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleUpdateSessionParams;->response:[B

    new-instance v5, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleUpdateSessionResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleUpdateSessionResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/media/mojom/ContentDecryptionModule;->updateSession(Ljava/lang/String;[BLorg/chromium/media/mojom/ContentDecryptionModule$UpdateSession_Response;)V

    return v3

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleLoadSessionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleLoadSessionParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/media/mojom/ContentDecryptionModule;

    iget v4, p1, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleLoadSessionParams;->sessionType:I

    iget-object p1, p1, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleLoadSessionParams;->sessionId:Ljava/lang/String;

    new-instance v5, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleLoadSessionResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleLoadSessionResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/media/mojom/ContentDecryptionModule;->loadSession(ILjava/lang/String;Lorg/chromium/media/mojom/ContentDecryptionModule$LoadSession_Response;)V

    return v3

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleCreateSessionAndGenerateRequestParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleCreateSessionAndGenerateRequestParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/media/mojom/ContentDecryptionModule;

    iget v4, p1, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleCreateSessionAndGenerateRequestParams;->sessionType:I

    iget v5, p1, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleCreateSessionAndGenerateRequestParams;->initDataType:I

    iget-object p1, p1, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleCreateSessionAndGenerateRequestParams;->initData:[B

    new-instance v6, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleCreateSessionAndGenerateRequestResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {v6, p0, p2, v7, v8}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleCreateSessionAndGenerateRequestResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, v5, p1, v6}, Lorg/chromium/media/mojom/ContentDecryptionModule;->createSessionAndGenerateRequest(II[BLorg/chromium/media/mojom/ContentDecryptionModule$CreateSessionAndGenerateRequest_Response;)V

    return v3

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleGetStatusForPolicyParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleGetStatusForPolicyParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/media/mojom/ContentDecryptionModule;

    iget p1, p1, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleGetStatusForPolicyParams;->minHdcpVersion:I

    new-instance v4, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleGetStatusForPolicyResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleGetStatusForPolicyResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/media/mojom/ContentDecryptionModule;->getStatusForPolicy(ILorg/chromium/media/mojom/ContentDecryptionModule$GetStatusForPolicy_Response;)V

    return v3

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleSetServerCertificateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleSetServerCertificateParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/media/mojom/ContentDecryptionModule;

    iget-object p1, p1, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleSetServerCertificateParams;->certificateData:[B

    new-instance v4, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleSetServerCertificateResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal$ContentDecryptionModuleSetServerCertificateResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/media/mojom/ContentDecryptionModule;->setServerCertificate([BLorg/chromium/media/mojom/ContentDecryptionModule$SetServerCertificate_Response;)V

    return v3

    :pswitch_8
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/media/mojom/ContentDecryptionModule_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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

    :pswitch_data_0
    .packed-switch -0x1
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
