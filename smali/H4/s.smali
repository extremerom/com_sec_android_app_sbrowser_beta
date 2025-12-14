.class public final LH4/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, LH4/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LC5/a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LC5/a;-><init>(Landroid/os/Looper;I)V

    iput-object v0, p0, LH4/s;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LH4/s;->a:I

    iput-object p2, p0, LH4/s;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, LH4/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LC5/a;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v1}, LC5/a;-><init>(Landroid/os/Looper;I)V

    iput-object v0, p0, LH4/s;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    iget v0, p0, LH4/s;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LH4/s;->b:Ljava/lang/Object;

    check-cast p0, Lr3/a;

    iget-object p0, p0, Lr3/a;->c:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    iget-object p0, p0, LH4/s;->b:Ljava/lang/Object;

    check-cast p0, LC5/a;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1
    iget-object p0, p0, LH4/s;->b:Ljava/lang/Object;

    check-cast p0, LC5/a;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_2
    iget-object p0, p0, LH4/s;->b:Ljava/lang/Object;

    check-cast p0, LC5/a;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_3
    new-instance v0, LH4/r;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LH4/r;-><init>(Ljava/lang/Runnable;I)V

    iget-object p0, p0, LH4/s;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

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
