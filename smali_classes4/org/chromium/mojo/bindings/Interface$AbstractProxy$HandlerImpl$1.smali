.class Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper$SendRunMessageCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

.field final synthetic val$callback:Lorg/chromium/mojo/bindings/Interface$Proxy$Handler$QueryVersionCallback;


# virtual methods
.method public call(Lorg/chromium/mojo/bindings/interfacecontrol/RunResponseMessageParams;)V
    .locals 1

    iget-object v0, p1, Lorg/chromium/mojo/bindings/interfacecontrol/RunResponseMessageParams;->output:Lorg/chromium/mojo/bindings/interfacecontrol/RunOutput;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Union;->which()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl$1;->this$0:Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    iget-object p1, p1, Lorg/chromium/mojo/bindings/interfacecontrol/RunResponseMessageParams;->output:Lorg/chromium/mojo/bindings/interfacecontrol/RunOutput;

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/interfacecontrol/RunOutput;->getQueryVersionResult()Lorg/chromium/mojo/bindings/interfacecontrol/QueryVersionResult;

    move-result-object p1

    iget p1, p1, Lorg/chromium/mojo/bindings/interfacecontrol/QueryVersionResult;->version:I

    invoke-static {v0, p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->b(Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;I)V

    :cond_0
    iget-object p1, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl$1;->val$callback:Lorg/chromium/mojo/bindings/Interface$Proxy$Handler$QueryVersionCallback;

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl$1;->this$0:Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    invoke-static {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->a(Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;)I

    move-result p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/Interface$Proxy$Handler$QueryVersionCallback;->call(I)V

    return-void
.end method
