.class public Lorg/chromium/mojo/bindings/Interface$ThreadSafeForwarder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/bindings/Interface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadSafeForwarder"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;


# direct methods
.method public static synthetic a(Lorg/chromium/mojo/bindings/Interface$ThreadSafeForwarder;Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$ThreadSafeForwarder;->lambda$acceptWithResponder$2(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/mojo/bindings/Interface$ThreadSafeForwarder;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Interface$ThreadSafeForwarder;->lambda$close$0()V

    return-void
.end method

.method public static synthetic c(Lorg/chromium/mojo/bindings/Interface$ThreadSafeForwarder;Lorg/chromium/mojo/bindings/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/Interface$ThreadSafeForwarder;->lambda$accept$1(Lorg/chromium/mojo/bindings/Message;)V

    return-void
.end method

.method private synthetic lambda$accept$1(Lorg/chromium/mojo/bindings/Message;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Interface$ThreadSafeForwarder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    invoke-interface {p0, p1}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method private synthetic lambda$acceptWithResponder$2(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Interface$ThreadSafeForwarder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    invoke-interface {p0, p1, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method private synthetic lambda$close$0()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Interface$ThreadSafeForwarder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    invoke-interface {p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->close()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 3

    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$ThreadSafeForwarder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sec/android/app/sbrowser/widget/a;

    const/16 v2, 0x10

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/widget/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 3

    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$ThreadSafeForwarder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lo9/a;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2, p1, p2}, Lo9/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$ThreadSafeForwarder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_sync/o;

    const/16 v2, 0x16

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/tab_sync/o;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
