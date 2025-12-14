.class Lorg/chromium/mojo/bindings/RouterImpl$ResponderThunk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/bindings/RouterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResponderThunk"
.end annotation


# instance fields
.field private mAcceptWasInvoked:Z

.field final synthetic this$0:Lorg/chromium/mojo/bindings/RouterImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/bindings/RouterImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/mojo/bindings/RouterImpl$ResponderThunk;->this$0:Lorg/chromium/mojo/bindings/RouterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/mojo/bindings/RouterImpl$ResponderThunk;->mAcceptWasInvoked:Z

    iget-object p0, p0, Lorg/chromium/mojo/bindings/RouterImpl$ResponderThunk;->this$0:Lorg/chromium/mojo/bindings/RouterImpl;

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/RouterImpl;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    move-result p0

    return p0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/bindings/RouterImpl$ResponderThunk;->this$0:Lorg/chromium/mojo/bindings/RouterImpl;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/RouterImpl;->close()V

    return-void
.end method

.method public finalize()V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/mojo/bindings/RouterImpl$ResponderThunk;->mAcceptWasInvoked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/mojo/bindings/RouterImpl$ResponderThunk;->this$0:Lorg/chromium/mojo/bindings/RouterImpl;

    invoke-static {v0}, Lorg/chromium/mojo/bindings/RouterImpl;->a(Lorg/chromium/mojo/bindings/RouterImpl;)V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
