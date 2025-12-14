.class Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper$RunResponseForwardToCallback;
.super Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunResponseForwardToCallback"
.end annotation


# instance fields
.field private final mCallback:Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper$SendRunMessageCallback;


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/mojo/bindings/interfacecontrol/RunResponseMessageParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojo/bindings/interfacecontrol/RunResponseMessageParams;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper$RunResponseForwardToCallback;->mCallback:Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper$SendRunMessageCallback;

    invoke-interface {p0, p1}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper$SendRunMessageCallback;->call(Lorg/chromium/mojo/bindings/interfacecontrol/RunResponseMessageParams;)V

    const/4 p0, 0x1

    return p0
.end method
