.class final Lorg/chromium/on_device_model/mojom/Session_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/on_device_model/mojom/Session_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/on_device_model/mojom/Session;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/on_device_model/mojom/Session;)V
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

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionGenerateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/on_device_model/mojom/Session_Internal$SessionGenerateParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/on_device_model/mojom/Session;

    iget-object v1, p1, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionGenerateParams;->options:Lorg/chromium/on_device_model/mojom/GenerateOptions;

    iget-object p1, p1, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionGenerateParams;->response:Lorg/chromium/on_device_model/mojom/StreamingResponder;

    invoke-interface {p0, v1, p1}, Lorg/chromium/on_device_model/mojom/Session;->generate(Lorg/chromium/on_device_model/mojom/GenerateOptions;Lorg/chromium/on_device_model/mojom/StreamingResponder;)V

    return v3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionAppendParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/on_device_model/mojom/Session_Internal$SessionAppendParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/on_device_model/mojom/Session;

    iget-object v1, p1, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionAppendParams;->options:Lorg/chromium/on_device_model/mojom/AppendOptions;

    iget-object p1, p1, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionAppendParams;->client:Lorg/chromium/on_device_model/mojom/ContextClient;

    invoke-interface {p0, v1, p1}, Lorg/chromium/on_device_model/mojom/Session;->append(Lorg/chromium/on_device_model/mojom/AppendOptions;Lorg/chromium/on_device_model/mojom/ContextClient;)V

    return v3

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionCloneParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/on_device_model/mojom/Session_Internal$SessionCloneParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/on_device_model/mojom/Session;

    iget-object p1, p1, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionCloneParams;->session:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface {p0, p1}, Lorg/chromium/on_device_model/mojom/Session;->clone(Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    return v3

    :cond_5
    sget-object p0, Lorg/chromium/on_device_model/mojom/Session_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
    .locals 7

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

    if-eq v2, v5, :cond_4

    const/4 v5, 0x3

    if-eq v2, v5, :cond_3

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionGetSizeInTokensParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/on_device_model/mojom/Session_Internal$SessionGetSizeInTokensParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/on_device_model/mojom/Session;

    iget-object p1, p1, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionGetSizeInTokensParams;->input:Lorg/chromium/on_device_model/mojom/Input;

    new-instance v3, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionGetSizeInTokensResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v3, p0, p2, v5, v6}, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionGetSizeInTokensResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/on_device_model/mojom/Session;->getSizeInTokens(Lorg/chromium/on_device_model/mojom/Input;Lorg/chromium/on_device_model/mojom/Session$GetSizeInTokens_Response;)V

    return v4

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionScoreParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/on_device_model/mojom/Session_Internal$SessionScoreParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/on_device_model/mojom/Session;

    iget-object p1, p1, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionScoreParams;->text:Ljava/lang/String;

    new-instance v3, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionScoreResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v3, p0, p2, v5, v6}, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionScoreResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v3}, Lorg/chromium/on_device_model/mojom/Session;->score(Ljava/lang/String;Lorg/chromium/on_device_model/mojom/Session$Score_Response;)V

    return v4

    :cond_4
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/on_device_model/mojom/Session_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
