.class public final LH/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:LH/j;


# direct methods
.method public synthetic constructor <init>(LH/j;Landroid/os/Bundle;I)V
    .locals 0

    iput p3, p0, LH/d;->a:I

    iput-object p1, p0, LH/d;->c:LH/j;

    iput-object p2, p0, LH/d;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, LH/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LH/d;->c:LH/j;

    iget-object v0, v0, LH/j;->b:LH/c;

    iget-object p0, p0, LH/d;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, LH/c;->onMinimized(Landroid/os/Bundle;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LH/d;->c:LH/j;

    iget-object v0, v0, LH/j;->b:LH/c;

    iget-object p0, p0, LH/d;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, LH/c;->onWarmupCompleted(Landroid/os/Bundle;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LH/d;->c:LH/j;

    iget-object v0, v0, LH/j;->b:LH/c;

    iget-object p0, p0, LH/d;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, LH/c;->onMessageChannelReady(Landroid/os/Bundle;)V

    return-void

    :pswitch_2
    iget-object v0, p0, LH/d;->c:LH/j;

    iget-object v0, v0, LH/j;->b:LH/c;

    iget-object p0, p0, LH/d;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, LH/c;->onUnminimized(Landroid/os/Bundle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
