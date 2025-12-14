.class final Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 13

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

    if-eq v1, v3, :cond_8

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    if-eq v1, v3, :cond_6

    const/4 v4, 0x2

    if-eq v1, v4, :cond_5

    const/4 v4, 0x3

    if-eq v1, v4, :cond_4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptVerificationFinishedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptVerificationFinishedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt;

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptVerificationFinishedParams;->errorMessage:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptVerificationFinishedParams;->allowRetry:Z

    invoke-interface {p0, v1, p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt;->verificationFinished(Ljava/lang/String;Z)V

    return v3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptDisableAndWaitForVerificationParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptDisableAndWaitForVerificationParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt;

    invoke-interface {p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt;->disableAndWaitForVerification()V

    return v3

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptDismissParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptDismissParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt;

    invoke-interface {p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt;->dismiss()V

    return v3

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptUpdateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptUpdateParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt;

    iget-object v1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptUpdateParams;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptUpdateParams;->instructions:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptUpdateParams;->shouldRequestExpirationDate:Z

    invoke-interface {p0, v1, v2, p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt;->update(Ljava/lang/String;Ljava/lang/String;Z)V

    return v3

    :cond_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptShowParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptShowParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt;

    invoke-interface {p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt;->show()V

    return v3

    :cond_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt;

    iget-object v5, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->delegate:Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;

    iget-object v6, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->title:Ljava/lang/String;

    iget-object v7, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->instructions:Ljava/lang/String;

    iget-object v8, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->confirmButtonLabel:Ljava/lang/String;

    iget v9, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->iconId:I

    iget-boolean v10, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->shouldRequestExpirationDate:Z

    iget-boolean v11, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->defaultToStoringLocally:Z

    iget-boolean v12, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->isNewCard:Z

    invoke-interface/range {v4 .. v12}, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt;->init(Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    return v3

    :cond_8
    sget-object p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, v1, p1, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result p0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method
