.class final Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal;
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
.method public addLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$AddLogin_Response;)V
    .locals 6

    new-instance v0, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreAddLoginParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreAddLoginParams;-><init>()V

    iput-object p1, v0, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreAddLoginParams;->form:Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

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

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreAddLoginResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreAddLoginResponseParamsForwardToCallback;-><init>(Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$AddLogin_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public fillMatchingLogins(Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$FillMatchingLogins_Response;)V
    .locals 6

    new-instance v0, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreFillMatchingLoginsParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreFillMatchingLoginsParams;-><init>()V

    iput-object p1, v0, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreFillMatchingLoginsParams;->formDigest:Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;

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

    new-instance v0, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreFillMatchingLoginsResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreFillMatchingLoginsResponseParamsForwardToCallback;-><init>(Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$FillMatchingLogins_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getAllLogins(Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$GetAllLogins_Response;)V
    .locals 7

    new-instance v0, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreGetAllLoginsParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreGetAllLoginsParams;-><init>()V

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

    const/4 v6, 0x5

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreGetAllLoginsResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreGetAllLoginsResponseParamsForwardToCallback;-><init>(Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$GetAllLogins_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getAutofillableLogins(Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$GetAutofillableLogins_Response;)V
    .locals 7

    new-instance v0, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreGetAutofillableLoginsParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreGetAutofillableLoginsParams;-><init>()V

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

    new-instance v0, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreGetAutofillableLoginsResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreGetAutofillableLoginsResponseParamsForwardToCallback;-><init>(Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$GetAutofillableLogins_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public removeLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$RemoveLogin_Response;)V
    .locals 6

    new-instance v0, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreRemoveLoginParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreRemoveLoginParams;-><init>()V

    iput-object p1, v0, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreRemoveLoginParams;->form:Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

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

    new-instance v0, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreRemoveLoginResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreRemoveLoginResponseParamsForwardToCallback;-><init>(Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$RemoveLogin_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public updateLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$UpdateLogin_Response;)V
    .locals 5

    new-instance v0, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreUpdateLoginParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreUpdateLoginParams;-><init>()V

    iput-object p1, v0, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreUpdateLoginParams;->form:Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

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

    new-instance v0, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreUpdateLoginResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreUpdateLoginResponseParamsForwardToCallback;-><init>(Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$UpdateLogin_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
