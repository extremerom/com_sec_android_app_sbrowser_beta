.class public final synthetic Lorg/chromium/base/process_launcher/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lorg/chromium/base/process_launcher/f;->a:I

    iput-object p2, p0, Lorg/chromium/base/process_launcher/f;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lorg/chromium/base/process_launcher/f;->a:I

    iget-object p0, p0, Lorg/chromium/base/process_launcher/f;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/chromium/base/process_launcher/ChildProcessService;

    invoke-static {p0}, Lorg/chromium/base/process_launcher/ChildProcessService;->b(Lorg/chromium/base/process_launcher/ChildProcessService;)V

    return-void

    :pswitch_0
    check-cast p0, Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-static {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->g(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    return-void

    :pswitch_1
    check-cast p0, Lorg/chromium/base/memory/MemoryPressureCallback;

    invoke-static {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->e(Lorg/chromium/base/memory/MemoryPressureCallback;)V

    return-void

    :pswitch_2
    check-cast p0, Lorg/chromium/base/process_launcher/a;

    invoke-static {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->f(Lorg/chromium/base/process_launcher/a;)V

    return-void

    :pswitch_3
    check-cast p0, Lorg/chromium/base/process_launcher/ChildProcessConnection$2;

    invoke-static {p0}, Lorg/chromium/base/process_launcher/ChildProcessConnection$2;->b(Lorg/chromium/base/process_launcher/ChildProcessConnection$2;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
