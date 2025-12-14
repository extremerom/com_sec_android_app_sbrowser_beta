.class public final LH/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/os/Bundle;

.field public final synthetic d:LH/j;


# direct methods
.method public synthetic constructor <init>(LH/j;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    iput p4, p0, LH/f;->a:I

    iput-object p1, p0, LH/f;->d:LH/j;

    iput-object p2, p0, LH/f;->b:Ljava/lang/String;

    iput-object p3, p0, LH/f;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, LH/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LH/f;->d:LH/j;

    iget-object v0, v0, LH/j;->b:LH/c;

    iget-object v1, p0, LH/f;->b:Ljava/lang/String;

    iget-object p0, p0, LH/f;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p0}, LH/c;->onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LH/f;->d:LH/j;

    iget-object v0, v0, LH/j;->b:LH/c;

    iget-object v1, p0, LH/f;->b:Ljava/lang/String;

    iget-object p0, p0, LH/f;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p0}, LH/c;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
