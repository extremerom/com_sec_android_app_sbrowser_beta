.class final Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal;
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
.method public addLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$AddLogin_Response;)V
    .locals 5

    new-instance v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreAddLoginParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreAddLoginParams;-><init>()V

    iput-object p1, v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreAddLoginParams;->form:Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

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

    new-instance v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreAddLoginResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreAddLoginResponseParamsForwardToCallback;-><init>(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$AddLogin_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public fillMatchingLogins(Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;)V
    .locals 6

    new-instance v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreFillMatchingLoginsParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreFillMatchingLoginsParams;-><init>()V

    iput-object p1, v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreFillMatchingLoginsParams;->formDigest:Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;

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

    const/4 v5, 0x4

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreFillMatchingLoginsResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreFillMatchingLoginsResponseParamsForwardToCallback;-><init>(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public init(Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore;)V
    .locals 3

    new-instance v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreInitParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreInitParams;-><init>()V

    iput-object p1, v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreInitParams;->pendingRemoteStore:Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public removeLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$RemoveLogin_Response;)V
    .locals 6

    new-instance v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreRemoveLoginParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreRemoveLoginParams;-><init>()V

    iput-object p1, v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreRemoveLoginParams;->form:Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

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

    const/4 v5, 0x3

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreRemoveLoginResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreRemoveLoginResponseParamsForwardToCallback;-><init>(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$RemoveLogin_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public updateLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$UpdateLogin_Response;)V
    .locals 6

    new-instance v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreUpdateLoginParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreUpdateLoginParams;-><init>()V

    iput-object p1, v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreUpdateLoginParams;->form:Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

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

    new-instance v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreUpdateLoginResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreUpdateLoginResponseParamsForwardToCallback;-><init>(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$UpdateLogin_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
