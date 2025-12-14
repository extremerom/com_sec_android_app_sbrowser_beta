.class public Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper$RunResponseForwardToCallback;,
        Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper$SendRunMessageCallback;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public static handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lorg/chromium/mojo/bindings/Interface;",
            "P::",
            "Lorg/chromium/mojo/bindings/Interface$Proxy;",
            ">(",
            "Lorg/chromium/mojo/system/Core;",
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "TI;TP;>;",
            "Lorg/chromium/mojo/bindings/ServiceMessage;",
            "Lorg/chromium/mojo/bindings/MessageReceiver;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo/bindings/interfacecontrol/RunMessageParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojo/bindings/interfacecontrol/RunMessageParams;

    move-result-object v0

    new-instance v1, Lorg/chromium/mojo/bindings/interfacecontrol/RunResponseMessageParams;

    invoke-direct {v1}, Lorg/chromium/mojo/bindings/interfacecontrol/RunResponseMessageParams;-><init>()V

    new-instance v2, Lorg/chromium/mojo/bindings/interfacecontrol/RunOutput;

    invoke-direct {v2}, Lorg/chromium/mojo/bindings/interfacecontrol/RunOutput;-><init>()V

    iput-object v2, v1, Lorg/chromium/mojo/bindings/interfacecontrol/RunResponseMessageParams;->output:Lorg/chromium/mojo/bindings/interfacecontrol/RunOutput;

    iget-object v0, v0, Lorg/chromium/mojo/bindings/interfacecontrol/RunMessageParams;->input:Lorg/chromium/mojo/bindings/interfacecontrol/RunInput;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Union;->which()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lorg/chromium/mojo/bindings/interfacecontrol/RunResponseMessageParams;->output:Lorg/chromium/mojo/bindings/interfacecontrol/RunOutput;

    new-instance v2, Lorg/chromium/mojo/bindings/interfacecontrol/QueryVersionResult;

    invoke-direct {v2}, Lorg/chromium/mojo/bindings/interfacecontrol/QueryVersionResult;-><init>()V

    invoke-virtual {v0, v2}, Lorg/chromium/mojo/bindings/interfacecontrol/RunOutput;->setQueryVersionResult(Lorg/chromium/mojo/bindings/interfacecontrol/QueryVersionResult;)V

    iget-object v0, v1, Lorg/chromium/mojo/bindings/interfacecontrol/RunResponseMessageParams;->output:Lorg/chromium/mojo/bindings/interfacecontrol/RunOutput;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/interfacecontrol/RunOutput;->getQueryVersionResult()Lorg/chromium/mojo/bindings/interfacecontrol/QueryVersionResult;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$Manager;->getVersion()I

    move-result p1

    iput p1, v0, Lorg/chromium/mojo/bindings/interfacecontrol/QueryVersionResult;->version:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, v1, Lorg/chromium/mojo/bindings/interfacecontrol/RunResponseMessageParams;->output:Lorg/chromium/mojo/bindings/interfacecontrol/RunOutput;

    :goto_0
    new-instance p1, Lorg/chromium/mojo/bindings/MessageHeader;

    invoke-virtual {p2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object p2

    invoke-virtual {p2}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v2

    const/4 p2, -0x1

    const/4 v0, 0x2

    invoke-direct {p1, p2, v0, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v1, p0, p1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p3, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    move-result p0

    return p0
.end method

.method public static handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lorg/chromium/mojo/bindings/Interface;",
            "P::",
            "Lorg/chromium/mojo/bindings/Interface$Proxy;",
            ">(",
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "TI;TP;>;",
            "Lorg/chromium/mojo/bindings/ServiceMessage;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/mojo/bindings/interfacecontrol/RunOrClosePipeMessageParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojo/bindings/interfacecontrol/RunOrClosePipeMessageParams;

    move-result-object p1

    iget-object v0, p1, Lorg/chromium/mojo/bindings/interfacecontrol/RunOrClosePipeMessageParams;->input:Lorg/chromium/mojo/bindings/interfacecontrol/RunOrClosePipeInput;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Union;->which()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p1, p1, Lorg/chromium/mojo/bindings/interfacecontrol/RunOrClosePipeMessageParams;->input:Lorg/chromium/mojo/bindings/interfacecontrol/RunOrClosePipeInput;

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/interfacecontrol/RunOrClosePipeInput;->getRequireVersion()Lorg/chromium/mojo/bindings/interfacecontrol/RequireVersion;

    move-result-object p1

    iget p1, p1, Lorg/chromium/mojo/bindings/interfacecontrol/RequireVersion;->version:I

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Manager;->getVersion()I

    move-result p0

    if-gt p1, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
