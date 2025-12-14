.class public final Lm/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lm/j;


# direct methods
.method public constructor <init>(Lm/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/d;->a:Lm/j;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lm/d;->a:Lm/j;

    iget-object v0, p0, Lm/j;->k:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lm/j;->m:Landroid/os/Message;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm/j;->n:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lm/j;->p:Landroid/os/Message;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lm/j;->q:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lm/j;->s:Landroid/os/Message;

    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    iget-object p1, p0, Lm/j;->J:LJ8/e;

    iget-object p0, p0, Lm/j;->b:Lm/l;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
