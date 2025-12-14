.class final Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal;
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
.method public disableAndWaitForVerification()V
    .locals 4

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptDisableAndWaitForVerificationParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptDisableAndWaitForVerificationParams;-><init>()V

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

.method public dismiss()V
    .locals 4

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptDismissParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptDismissParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public init(Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V
    .locals 1

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;-><init>()V

    iput-object p1, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->delegate:Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;

    iput-object p2, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->title:Ljava/lang/String;

    iput-object p3, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->instructions:Ljava/lang/String;

    iput-object p4, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->confirmButtonLabel:Ljava/lang/String;

    iput p5, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->iconId:I

    iput-boolean p6, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->shouldRequestExpirationDate:Z

    iput-boolean p7, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->defaultToStoringLocally:Z

    iput-boolean p8, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->isNewCard:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public show()V
    .locals 4

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptShowParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptShowParams;-><init>()V

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

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptUpdateParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptUpdateParams;-><init>()V

    iput-object p1, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptUpdateParams;->title:Ljava/lang/String;

    iput-object p2, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptUpdateParams;->instructions:Ljava/lang/String;

    iput-boolean p3, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptUpdateParams;->shouldRequestExpirationDate:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public verificationFinished(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptVerificationFinishedParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptVerificationFinishedParams;-><init>()V

    iput-object p1, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptVerificationFinishedParams;->errorMessage:Ljava/lang/String;

    iput-boolean p2, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptVerificationFinishedParams;->allowRetry:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x5

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
