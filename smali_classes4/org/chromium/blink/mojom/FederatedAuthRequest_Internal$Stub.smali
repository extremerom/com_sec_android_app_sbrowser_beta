.class final Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/FederatedAuthRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/FederatedAuthRequest;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 5

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

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    const/4 v3, -0x2

    if-eq v1, v3, :cond_5

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestCloseModalDialogViewParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestCloseModalDialogViewParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FederatedAuthRequest;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/FederatedAuthRequest;->closeModalDialogView()V

    return v4

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestSetIdpSigninStatusParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestSetIdpSigninStatusParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FederatedAuthRequest;

    iget-object v1, p1, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestSetIdpSigninStatusParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

    iget v2, p1, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestSetIdpSigninStatusParams;->status:I

    iget-object p1, p1, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestSetIdpSigninStatusParams;->options:Lorg/chromium/blink/mojom/LoginStatusOptions;

    invoke-interface {p0, v1, v2, p1}, Lorg/chromium/blink/mojom/FederatedAuthRequest;->setIdpSigninStatus(Lorg/chromium/url/internal/mojom/Origin;ILorg/chromium/blink/mojom/LoginStatusOptions;)V

    return v4

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestCancelTokenRequestParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestCancelTokenRequestParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FederatedAuthRequest;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/FederatedAuthRequest;->cancelTokenRequest()V

    return v4

    :cond_5
    sget-object p0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_9

    if-eqz v2, :cond_8

    if-eq v2, v4, :cond_7

    const/4 v5, 0x3

    if-eq v2, v5, :cond_6

    if-eq v2, v3, :cond_5

    const/4 v3, 0x6

    if-eq v2, v3, :cond_4

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestDisconnectParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestDisconnectParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FederatedAuthRequest;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestDisconnectParams;->options:Lorg/chromium/blink/mojom/IdentityCredentialDisconnectOptions;

    new-instance v3, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestDisconnectResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v3, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestDisconnectResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/blink/mojom/FederatedAuthRequest;->disconnect(Lorg/chromium/blink/mojom/IdentityCredentialDisconnectOptions;Lorg/chromium/blink/mojom/FederatedAuthRequest$Disconnect_Response;)V

    return v4

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestPreventSilentAccessParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestPreventSilentAccessParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/FederatedAuthRequest;

    new-instance v2, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestPreventSilentAccessResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v2, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestPreventSilentAccessResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/FederatedAuthRequest;->preventSilentAccess(Lorg/chromium/blink/mojom/FederatedAuthRequest$PreventSilentAccess_Response;)V

    return v4

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestUnregisterIdPParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestUnregisterIdPParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FederatedAuthRequest;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestUnregisterIdPParams;->url:Lorg/chromium/url/mojom/Url;

    new-instance v3, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestUnregisterIdPResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v3, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestUnregisterIdPResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/blink/mojom/FederatedAuthRequest;->unregisterIdP(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/FederatedAuthRequest$UnregisterIdP_Response;)V

    return v4

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRegisterIdPParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRegisterIdPParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FederatedAuthRequest;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRegisterIdPParams;->url:Lorg/chromium/url/mojom/Url;

    new-instance v3, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRegisterIdPResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v3, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRegisterIdPResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/blink/mojom/FederatedAuthRequest;->registerIdP(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/FederatedAuthRequest$RegisterIdP_Response;)V

    return v4

    :cond_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestResolveTokenRequestParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestResolveTokenRequestParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FederatedAuthRequest;

    iget-object v3, p1, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestResolveTokenRequestParams;->accountId:Ljava/lang/String;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestResolveTokenRequestParams;->token:Ljava/lang/String;

    new-instance v5, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestResolveTokenRequestResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestResolveTokenRequestResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v3, p1, v5}, Lorg/chromium/blink/mojom/FederatedAuthRequest;->resolveTokenRequest(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/blink/mojom/FederatedAuthRequest$ResolveTokenRequest_Response;)V

    return v4

    :cond_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestUserInfoParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestUserInfoParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FederatedAuthRequest;

    iget-object p1, p1, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestUserInfoParams;->provider:Lorg/chromium/blink/mojom/IdentityProviderConfig;

    new-instance v3, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestUserInfoResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v3, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestUserInfoResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/blink/mojom/FederatedAuthRequest;->requestUserInfo(Lorg/chromium/blink/mojom/IdentityProviderConfig;Lorg/chromium/blink/mojom/FederatedAuthRequest$RequestUserInfo_Response;)V

    return v4

    :cond_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestTokenParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestTokenParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/FederatedAuthRequest;

    iget-object v3, p1, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestTokenParams;->idpGetParams:[Lorg/chromium/blink/mojom/IdentityProviderGetParameters;

    iget p1, p1, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestTokenParams;->requirement:I

    new-instance v5, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestTokenResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestTokenResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v3, p1, v5}, Lorg/chromium/blink/mojom/FederatedAuthRequest;->requestToken([Lorg/chromium/blink/mojom/IdentityProviderGetParameters;ILorg/chromium/blink/mojom/FederatedAuthRequest$RequestToken_Response;)V

    return v4

    :cond_9
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
