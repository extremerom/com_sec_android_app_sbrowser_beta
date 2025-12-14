.class public final synthetic Lr7/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lr7/e;

.field public final synthetic c:Ljava/lang/Runnable;

.field public final synthetic d:LI3/d;


# direct methods
.method public synthetic constructor <init>(Lr7/e;Ljava/lang/Runnable;LI3/d;I)V
    .locals 0

    iput p4, p0, Lr7/d;->a:I

    iput-object p1, p0, Lr7/d;->b:Lr7/e;

    iput-object p2, p0, Lr7/d;->c:Ljava/lang/Runnable;

    iput-object p3, p0, Lr7/d;->d:LI3/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lr7/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lr7/d;->b:Lr7/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lr7/b;

    iget-object v2, p0, Lr7/d;->d:LI3/d;

    iget-object p0, p0, Lr7/d;->c:Ljava/lang/Runnable;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lr7/b;-><init>(Ljava/lang/Runnable;LI3/d;I)V

    iget-object p0, v0, Lr7/e;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lr7/d;->b:Lr7/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lr7/b;

    iget-object v2, p0, Lr7/d;->d:LI3/d;

    iget-object p0, p0, Lr7/d;->c:Ljava/lang/Runnable;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lr7/b;-><init>(Ljava/lang/Runnable;LI3/d;I)V

    iget-object p0, v0, Lr7/e;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lr7/d;->b:Lr7/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lr7/b;

    iget-object v2, p0, Lr7/d;->d:LI3/d;

    iget-object p0, p0, Lr7/d;->c:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lr7/b;-><init>(Ljava/lang/Runnable;LI3/d;I)V

    iget-object p0, v0, Lr7/e;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
