.class final Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal;
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
.method public authenticateForAccountChooser(ILcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAccountChooser_Response;)V
    .locals 5

    new-instance v0, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerAuthenticateForAccountChooserParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerAuthenticateForAccountChooserParams;-><init>()V

    iput p1, v0, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerAuthenticateForAccountChooserParams;->typeCombination:I

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

    new-instance v0, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerAuthenticateForAccountChooserResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerAuthenticateForAccountChooserResponseParamsForwardToCallback;-><init>(Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAccountChooser_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public authenticateForAutoSignin(ILjava/lang/String;Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAutoSignin_Response;)V
    .locals 5

    new-instance v0, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerAuthenticateForAutoSigninParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerAuthenticateForAutoSigninParams;-><init>()V

    iput p1, v0, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerAuthenticateForAutoSigninParams;->passwordAutofillType:I

    iput-object p2, v0, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerAuthenticateForAutoSigninParams;->encryptedPassword:Ljava/lang/String;

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

    new-instance p2, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerAuthenticateForAutoSigninResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerAuthenticateForAutoSigninResponseParamsForwardToCallback;-><init>(Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAutoSignin_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public decrypt(ILjava/lang/String;Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$Decrypt_Response;)V
    .locals 5

    new-instance v0, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerDecryptParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerDecryptParams;-><init>()V

    iput p1, v0, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerDecryptParams;->passwordAutofillType:I

    iput-object p2, v0, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerDecryptParams;->encryptedPassword:Ljava/lang/String;

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

    const/4 v4, 0x2

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerDecryptResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerDecryptResponseParamsForwardToCallback;-><init>(Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$Decrypt_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
