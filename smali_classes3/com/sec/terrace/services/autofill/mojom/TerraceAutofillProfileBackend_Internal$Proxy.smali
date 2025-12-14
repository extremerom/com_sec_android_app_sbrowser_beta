.class final Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal;
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
.method public addAutofillProfile(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$AddAutofillProfile_Response;)V
    .locals 6

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendAddAutofillProfileParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendAddAutofillProfileParams;-><init>()V

    iput-object p1, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendAddAutofillProfileParams;->profile:Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;

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

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendAddAutofillProfileResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendAddAutofillProfileResponseParamsForwardToCallback;-><init>(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$AddAutofillProfile_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public clearAutofillProfiles()V
    .locals 4

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendClearAutofillProfilesParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendClearAutofillProfilesParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public getAutofillProfiles(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$GetAutofillProfiles_Response;)V
    .locals 7

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendGetAutofillProfilesParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendGetAutofillProfilesParams;-><init>()V

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

    const/4 v6, 0x3

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendGetAutofillProfilesResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendGetAutofillProfilesResponseParamsForwardToCallback;-><init>(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$GetAutofillProfiles_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public removeAutofillProfile(Ljava/lang/String;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$RemoveAutofillProfile_Response;)V
    .locals 6

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendRemoveAutofillProfileParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendRemoveAutofillProfileParams;-><init>()V

    iput-object p1, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendRemoveAutofillProfileParams;->guid:Ljava/lang/String;

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

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendRemoveAutofillProfileResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendRemoveAutofillProfileResponseParamsForwardToCallback;-><init>(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$RemoveAutofillProfile_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public updateAutofillProfile(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$UpdateAutofillProfile_Response;)V
    .locals 5

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendUpdateAutofillProfileParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendUpdateAutofillProfileParams;-><init>()V

    iput-object p1, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendUpdateAutofillProfileParams;->profile:Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfile;

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

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendUpdateAutofillProfileResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendUpdateAutofillProfileResponseParamsForwardToCallback;-><init>(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$UpdateAutofillProfile_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
