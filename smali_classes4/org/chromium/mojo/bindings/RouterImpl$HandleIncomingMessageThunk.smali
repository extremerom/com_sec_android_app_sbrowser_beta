.class Lorg/chromium/mojo/bindings/RouterImpl$HandleIncomingMessageThunk;
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
    name = "HandleIncomingMessageThunk"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/mojo/bindings/RouterImpl;


# direct methods
.method private constructor <init>(Lorg/chromium/mojo/bindings/RouterImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/mojo/bindings/RouterImpl$HandleIncomingMessageThunk;->this$0:Lorg/chromium/mojo/bindings/RouterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/mojo/bindings/RouterImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/RouterImpl$HandleIncomingMessageThunk;-><init>(Lorg/chromium/mojo/bindings/RouterImpl;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/bindings/RouterImpl$HandleIncomingMessageThunk;->this$0:Lorg/chromium/mojo/bindings/RouterImpl;

    invoke-static {p0, p1}, Lorg/chromium/mojo/bindings/RouterImpl;->c(Lorg/chromium/mojo/bindings/RouterImpl;Lorg/chromium/mojo/bindings/Message;)Z

    move-result p0

    return p0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/bindings/RouterImpl$HandleIncomingMessageThunk;->this$0:Lorg/chromium/mojo/bindings/RouterImpl;

    invoke-static {p0}, Lorg/chromium/mojo/bindings/RouterImpl;->b(Lorg/chromium/mojo/bindings/RouterImpl;)V

    return-void
.end method
