.class public final synthetic Lorg/chromium/base/process_launcher/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lorg/chromium/base/process_launcher/ChildProcessConnection;


# direct methods
.method public synthetic constructor <init>(ILorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/chromium/base/process_launcher/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/base/process_launcher/d;->b:I

    iput-object p2, p0, Lorg/chromium/base/process_launcher/d;->c:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/base/process_launcher/ChildProcessConnection;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/base/process_launcher/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/base/process_launcher/d;->c:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    iput p2, p0, Lorg/chromium/base/process_launcher/d;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lorg/chromium/base/process_launcher/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lorg/chromium/base/process_launcher/d;->b:I

    iget-object p0, p0, Lorg/chromium/base/process_launcher/d;->c:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-static {v0, p0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->e(ILorg/chromium/base/process_launcher/ChildProcessConnection;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/chromium/base/process_launcher/d;->c:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    iget p0, p0, Lorg/chromium/base/process_launcher/d;->b:I

    invoke-static {p0, v0}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->a(ILorg/chromium/base/process_launcher/ChildProcessConnection;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
