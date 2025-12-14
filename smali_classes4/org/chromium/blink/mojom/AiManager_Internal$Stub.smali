.class final Lorg/chromium/blink/mojom/AiManager_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/AiManager_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/AiManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/AiManager;)V
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

    if-eq v1, v2, :cond_7

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v3, 0x3

    if-eq v1, v3, :cond_5

    const/4 v3, 0x6

    if-eq v1, v3, :cond_4

    const/16 v3, 0x8

    if-eq v1, v3, :cond_3

    const/16 v3, 0x9

    if-eq v1, v3, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerAddModelDownloadProgressObserverParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerAddModelDownloadProgressObserverParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/AiManager;

    iget-object p1, p1, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerAddModelDownloadProgressObserverParams;->observerRemote:Lorg/chromium/blink/mojom/ModelDownloadProgressObserver;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/AiManager;->addModelDownloadProgressObserver(Lorg/chromium/blink/mojom/ModelDownloadProgressObserver;)V

    return v2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateRewriterParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateRewriterParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/AiManager;

    iget-object v1, p1, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateRewriterParams;->client:Lorg/chromium/blink/mojom/AiManagerCreateRewriterClient;

    iget-object p1, p1, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateRewriterParams;->options:Lorg/chromium/blink/mojom/AiRewriterCreateOptions;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/AiManager;->createRewriter(Lorg/chromium/blink/mojom/AiManagerCreateRewriterClient;Lorg/chromium/blink/mojom/AiRewriterCreateOptions;)V

    return v2

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateWriterParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateWriterParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/AiManager;

    iget-object v1, p1, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateWriterParams;->client:Lorg/chromium/blink/mojom/AiManagerCreateWriterClient;

    iget-object p1, p1, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateWriterParams;->options:Lorg/chromium/blink/mojom/AiWriterCreateOptions;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/AiManager;->createWriter(Lorg/chromium/blink/mojom/AiManagerCreateWriterClient;Lorg/chromium/blink/mojom/AiWriterCreateOptions;)V

    return v2

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateSummarizerParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateSummarizerParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/AiManager;

    iget-object v1, p1, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateSummarizerParams;->client:Lorg/chromium/blink/mojom/AiManagerCreateSummarizerClient;

    iget-object p1, p1, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateSummarizerParams;->options:Lorg/chromium/blink/mojom/AiSummarizerCreateOptions;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/AiManager;->createSummarizer(Lorg/chromium/blink/mojom/AiManagerCreateSummarizerClient;Lorg/chromium/blink/mojom/AiSummarizerCreateOptions;)V

    return v2

    :cond_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateLanguageModelParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateLanguageModelParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/AiManager;

    iget-object v1, p1, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateLanguageModelParams;->client:Lorg/chromium/blink/mojom/AiManagerCreateLanguageModelClient;

    iget-object p1, p1, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCreateLanguageModelParams;->options:Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/AiManager;->createLanguageModel(Lorg/chromium/blink/mojom/AiManagerCreateLanguageModelClient;Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;)V

    return v2

    :cond_7
    sget-object p0, Lorg/chromium/blink/mojom/AiManager_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_7

    if-eqz v3, :cond_6

    const/4 v6, 0x2

    if-eq v3, v6, :cond_5

    const/4 v6, 0x7

    if-eq v3, v6, :cond_4

    if-eq v3, v2, :cond_3

    if-eq v3, v4, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateWriterParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateWriterParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/AiManager;

    iget-object p1, p1, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateWriterParams;->options:Lorg/chromium/blink/mojom/AiWriterCreateOptions;

    new-instance v3, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateWriterResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v3, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateWriterResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/blink/mojom/AiManager;->canCreateWriter(Lorg/chromium/blink/mojom/AiWriterCreateOptions;Lorg/chromium/blink/mojom/AiManager$CanCreateWriter_Response;)V

    return v5

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerGetLanguageModelParamsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerGetLanguageModelParamsParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/AiManager;

    new-instance v2, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerGetLanguageModelParamsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v3

    invoke-direct {v2, p0, p2, v3, v4}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerGetLanguageModelParamsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/AiManager;->getLanguageModelParams(Lorg/chromium/blink/mojom/AiManager$GetLanguageModelParams_Response;)V

    return v5

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateRewriterParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateRewriterParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/AiManager;

    iget-object p1, p1, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateRewriterParams;->options:Lorg/chromium/blink/mojom/AiRewriterCreateOptions;

    new-instance v3, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateRewriterResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v3, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateRewriterResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/blink/mojom/AiManager;->canCreateRewriter(Lorg/chromium/blink/mojom/AiRewriterCreateOptions;Lorg/chromium/blink/mojom/AiManager$CanCreateRewriter_Response;)V

    return v5

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateSummarizerParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateSummarizerParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/AiManager;

    iget-object p1, p1, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateSummarizerParams;->options:Lorg/chromium/blink/mojom/AiSummarizerCreateOptions;

    new-instance v3, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateSummarizerResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v3, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateSummarizerResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/blink/mojom/AiManager;->canCreateSummarizer(Lorg/chromium/blink/mojom/AiSummarizerCreateOptions;Lorg/chromium/blink/mojom/AiManager$CanCreateSummarizer_Response;)V

    return v5

    :cond_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateLanguageModelParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateLanguageModelParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/AiManager;

    iget-object p1, p1, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateLanguageModelParams;->options:Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;

    new-instance v3, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateLanguageModelResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v3, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/AiManager_Internal$AiManagerCanCreateLanguageModelResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/blink/mojom/AiManager;->canCreateLanguageModel(Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;Lorg/chromium/blink/mojom/AiManager$CanCreateLanguageModel_Response;)V

    return v5

    :cond_7
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/AiManager_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
