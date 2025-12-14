.class final Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/FederatedAuthRequest$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal;
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
.method public cancelTokenRequest()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestCancelTokenRequestParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestCancelTokenRequestParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public closeModalDialogView()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestCloseModalDialogViewParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestCloseModalDialogViewParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public disconnect(Lorg/chromium/blink/mojom/IdentityCredentialDisconnectOptions;Lorg/chromium/blink/mojom/FederatedAuthRequest$Disconnect_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestDisconnectParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestDisconnectParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestDisconnectParams;->options:Lorg/chromium/blink/mojom/IdentityCredentialDisconnectOptions;

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

    const/16 v5, 0x9

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestDisconnectResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestDisconnectResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FederatedAuthRequest$Disconnect_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public preventSilentAccess(Lorg/chromium/blink/mojom/FederatedAuthRequest$PreventSilentAccess_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestPreventSilentAccessParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestPreventSilentAccessParams;-><init>()V

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

    const/16 v6, 0x8

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestPreventSilentAccessResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestPreventSilentAccessResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FederatedAuthRequest$PreventSilentAccess_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public registerIdP(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/FederatedAuthRequest$RegisterIdP_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRegisterIdPParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRegisterIdPParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRegisterIdPParams;->url:Lorg/chromium/url/mojom/Url;

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

    const/4 v5, 0x5

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRegisterIdPResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRegisterIdPResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FederatedAuthRequest$RegisterIdP_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public requestToken([Lorg/chromium/blink/mojom/IdentityProviderGetParameters;ILorg/chromium/blink/mojom/FederatedAuthRequest$RequestToken_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestTokenParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestTokenParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestTokenParams;->idpGetParams:[Lorg/chromium/blink/mojom/IdentityProviderGetParameters;

    iput p2, v0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestTokenParams;->requirement:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestTokenResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestTokenResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FederatedAuthRequest$RequestToken_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public requestUserInfo(Lorg/chromium/blink/mojom/IdentityProviderConfig;Lorg/chromium/blink/mojom/FederatedAuthRequest$RequestUserInfo_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestUserInfoParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestUserInfoParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestUserInfoParams;->provider:Lorg/chromium/blink/mojom/IdentityProviderConfig;

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

    new-instance v0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestUserInfoResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestUserInfoResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FederatedAuthRequest$RequestUserInfo_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public resolveTokenRequest(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/blink/mojom/FederatedAuthRequest$ResolveTokenRequest_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestResolveTokenRequestParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestResolveTokenRequestParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestResolveTokenRequestParams;->accountId:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestResolveTokenRequestParams;->token:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestResolveTokenRequestResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestResolveTokenRequestResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FederatedAuthRequest$ResolveTokenRequest_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public setIdpSigninStatus(Lorg/chromium/url/internal/mojom/Origin;ILorg/chromium/blink/mojom/LoginStatusOptions;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestSetIdpSigninStatusParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestSetIdpSigninStatusParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestSetIdpSigninStatusParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

    iput p2, v0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestSetIdpSigninStatusParams;->status:I

    iput-object p3, v0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestSetIdpSigninStatusParams;->options:Lorg/chromium/blink/mojom/LoginStatusOptions;

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

.method public unregisterIdP(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/FederatedAuthRequest$UnregisterIdP_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestUnregisterIdPParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestUnregisterIdPParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestUnregisterIdPParams;->url:Lorg/chromium/url/mojom/Url;

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

    const/4 v5, 0x6

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestUnregisterIdPResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestUnregisterIdPResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/FederatedAuthRequest$UnregisterIdP_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
