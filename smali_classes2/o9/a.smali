.class public final synthetic Lo9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, Lo9/a;->a:I

    iput-object p1, p0, Lo9/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lo9/a;->c:Ljava/lang/Object;

    iput-object p4, p0, Lo9/a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lo9/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lo9/a;->d:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/mojo/bindings/MessageReceiver;

    iget-object v1, p0, Lo9/a;->b:Ljava/lang/Object;

    check-cast v1, Lorg/chromium/mojo/bindings/Interface$ThreadSafeForwarder;

    iget-object p0, p0, Lo9/a;->c:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/mojo/bindings/Message;

    invoke-static {v1, p0, v0}, Lorg/chromium/mojo/bindings/Interface$ThreadSafeForwarder;->a(Lorg/chromium/mojo/bindings/Interface$ThreadSafeForwarder;Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lo9/a;->d:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/content/browser/input/Range;

    iget-object v1, p0, Lo9/a;->b:Ljava/lang/Object;

    check-cast v1, Lorg/chromium/content/browser/input/ThreadedInputConnection;

    iget-object p0, p0, Lo9/a;->c:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/content/browser/input/Range;

    invoke-static {v1, p0, v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->a(Lorg/chromium/content/browser/input/ThreadedInputConnection;Lorg/chromium/content/browser/input/Range;Lorg/chromium/content/browser/input/Range;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lo9/a;->d:Ljava/lang/Object;

    check-cast v0, [Lorg/chromium/content_public/browser/MessagePort;

    iget-object v1, p0, Lo9/a;->b:Ljava/lang/Object;

    check-cast v1, Lorg/chromium/content/browser/AppWebMessagePort;

    iget-object p0, p0, Lo9/a;->c:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/content_public/browser/MessagePayload;

    invoke-static {v1, p0, v0}, Lorg/chromium/content/browser/AppWebMessagePort;->a(Lorg/chromium/content/browser/AppWebMessagePort;Lorg/chromium/content_public/browser/MessagePayload;[Lorg/chromium/content_public/browser/MessagePort;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lo9/a;->d:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    iget-object v1, p0, Lo9/a;->b:Ljava/lang/Object;

    check-cast v1, Lorg/chromium/content/browser/AppWebMessagePort;

    iget-object p0, p0, Lo9/a;->c:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/content_public/browser/MessagePort$MessageCallback;

    invoke-static {v1, p0, v0}, Lorg/chromium/content/browser/AppWebMessagePort;->b(Lorg/chromium/content/browser/AppWebMessagePort;Lorg/chromium/content_public/browser/MessagePort$MessageCallback;Landroid/os/Handler;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lo9/a;->d:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/base/Callback;

    iget-object v1, p0, Lo9/a;->b:Ljava/lang/Object;

    check-cast v1, Lorg/chromium/base/supplier/ObservableSupplierImpl;

    iget-object p0, p0, Lo9/a;->c:Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lorg/chromium/base/supplier/ObservableSupplierImpl;->a(Lorg/chromium/base/supplier/ObservableSupplierImpl;Ljava/lang/Object;Lorg/chromium/base/Callback;)V

    return-void

    :pswitch_4
    const-string v0, "this$0"

    iget-object v1, p0, Lo9/a;->b:Ljava/lang/Object;

    check-cast v1, LJ7/c;

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$rippleAnimation"

    iget-object v2, p0, Lo9/a;->c:Ljava/lang/Object;

    check-cast v2, Lo9/b;

    invoke-static {v2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, LJ7/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/MultiRippleView;

    invoke-virtual {v0}, Lcom/samsung/android/sesl/visualeffect/surfaceeffects/ripple/MultiRippleView;->getRipples()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lo9/a;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
