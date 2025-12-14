.class public final LR5/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR5/m;
.implements LR5/e;
.implements LR5/d;
.implements LR5/b;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:LR5/a;

.field public final d:LR5/p;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;LR5/a;LR5/p;I)V
    .locals 0

    iput p4, p0, LR5/k;->a:I

    iput-object p1, p0, LR5/k;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, LR5/k;->c:LR5/a;

    iput-object p3, p0, LR5/k;->d:LR5/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LR5/h;)V
    .locals 3

    iget v0, p0, LR5/k;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/common/util/concurrent/v;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/google/common/util/concurrent/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iget-object p0, p0, LR5/k;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    new-instance v0, Lcom/google/common/util/concurrent/v;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/google/common/util/concurrent/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iget-object p0, p0, LR5/k;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 0

    iget p0, p0, LR5/k;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public h()V
    .locals 0

    iget-object p0, p0, LR5/k;->d:LR5/p;

    invoke-virtual {p0}, LR5/p;->q()V

    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, LR5/k;->d:LR5/p;

    invoke-virtual {p0, p1}, LR5/p;->o(Ljava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LR5/k;->d:LR5/p;

    invoke-virtual {p0, p1}, LR5/p;->p(Ljava/lang/Object;)V

    return-void
.end method
