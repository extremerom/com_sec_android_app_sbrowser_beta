.class final Lorg/chromium/blink/mojom/AiManager_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/AiManager$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/AiManager_Internal;
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
.method public addModelDownloadProgressObserver(Lorg/chromium/blink/mojom/ModelDownloadProgressObserver;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerAddModelDownloadProgressObserverParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerAddModelDownloadProgressObserverParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerAddModelDownloadProgressObserverParams;->observerRemote:Lorg/chromium/blink/mojom/ModelDownloadProgressObserver;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public canCreateLanguageModel(Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;Lorg/chromium/blink/mojom/AiManager$CanCreateLanguageModel_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateLanguageModelParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateLanguageModelParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateLanguageModelParams;->options:Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;

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

    new-instance v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateLanguageModelResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateLanguageModelResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/AiManager$CanCreateLanguageModel_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public canCreateRewriter(Lorg/chromium/blink/mojom/AiRewriterCreateOptions;Lorg/chromium/blink/mojom/AiManager$CanCreateRewriter_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateRewriterParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateRewriterParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateRewriterParams;->options:Lorg/chromium/blink/mojom/AiRewriterCreateOptions;

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

    const/4 v5, 0x7

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateRewriterResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateRewriterResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/AiManager$CanCreateRewriter_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public canCreateSummarizer(Lorg/chromium/blink/mojom/AiSummarizerCreateOptions;Lorg/chromium/blink/mojom/AiManager$CanCreateSummarizer_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateSummarizerParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateSummarizerParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateSummarizerParams;->options:Lorg/chromium/blink/mojom/AiSummarizerCreateOptions;

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

    new-instance v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateSummarizerResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateSummarizerResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/AiManager$CanCreateSummarizer_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public canCreateWriter(Lorg/chromium/blink/mojom/AiWriterCreateOptions;Lorg/chromium/blink/mojom/AiManager$CanCreateWriter_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateWriterParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateWriterParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateWriterParams;->options:Lorg/chromium/blink/mojom/AiWriterCreateOptions;

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

    new-instance v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateWriterResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateWriterResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/AiManager$CanCreateWriter_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public createLanguageModel(Lorg/chromium/blink/mojom/AiManagerCreateLanguageModelClient;Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateLanguageModelParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateLanguageModelParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateLanguageModelParams;->client:Lorg/chromium/blink/mojom/AiManagerCreateLanguageModelClient;

    iput-object p2, v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateLanguageModelParams;->options:Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;

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

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public createRewriter(Lorg/chromium/blink/mojom/AiManagerCreateRewriterClient;Lorg/chromium/blink/mojom/AiRewriterCreateOptions;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateRewriterParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateRewriterParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateRewriterParams;->client:Lorg/chromium/blink/mojom/AiManagerCreateRewriterClient;

    iput-object p2, v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateRewriterParams;->options:Lorg/chromium/blink/mojom/AiRewriterCreateOptions;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 v1, 0x8

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public createSummarizer(Lorg/chromium/blink/mojom/AiManagerCreateSummarizerClient;Lorg/chromium/blink/mojom/AiSummarizerCreateOptions;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateSummarizerParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateSummarizerParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateSummarizerParams;->client:Lorg/chromium/blink/mojom/AiManagerCreateSummarizerClient;

    iput-object p2, v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateSummarizerParams;->options:Lorg/chromium/blink/mojom/AiSummarizerCreateOptions;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x3

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public createWriter(Lorg/chromium/blink/mojom/AiManagerCreateWriterClient;Lorg/chromium/blink/mojom/AiWriterCreateOptions;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateWriterParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateWriterParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateWriterParams;->client:Lorg/chromium/blink/mojom/AiManagerCreateWriterClient;

    iput-object p2, v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateWriterParams;->options:Lorg/chromium/blink/mojom/AiWriterCreateOptions;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x6

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public getLanguageModelParams(Lorg/chromium/blink/mojom/AiManager$GetLanguageModelParams_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerGetLanguageModelParamsParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerGetLanguageModelParamsParams;-><init>()V

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

    new-instance v0, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerGetLanguageModelParamsResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerGetLanguageModelParamsResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/AiManager$GetLanguageModelParams_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
