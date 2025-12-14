.class public final LNc/Q;
.super LNc/n0;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LNc/Q;->e:I

    invoke-direct {p0}, LUc/l;-><init>()V

    iput-object p2, p0, LNc/Q;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)V
    .locals 1

    iget v0, p0, LNc/Q;->e:I

    packed-switch v0, :pswitch_data_0

    sget-object p1, Ldb/r;->a:Ldb/r;

    iget-object p0, p0, LNc/Q;->f:Ljava/lang/Object;

    check-cast p0, LNc/k;

    invoke-virtual {p0, p1}, LNc/k;->resumeWith(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, LNc/n0;->j()LNc/t0;

    move-result-object p1

    invoke-virtual {p1}, LNc/t0;->P()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, LNc/s;

    iget-object p0, p0, LNc/Q;->f:Ljava/lang/Object;

    check-cast p0, LNc/o0;

    if-eqz v0, :cond_0

    check-cast p1, LNc/s;

    iget-object p1, p1, LNc/s;->a:Ljava/lang/Throwable;

    invoke-static {p1}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p1

    invoke-virtual {p0, p1}, LNc/k;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LNc/E;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LNc/k;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object p0, p0, LNc/Q;->f:Ljava/lang/Object;

    check-cast p0, LNc/g0;

    invoke-interface {p0, p1}, LNc/g0;->c(Ljava/lang/Throwable;)V

    return-void

    :pswitch_2
    iget-object p0, p0, LNc/Q;->f:Ljava/lang/Object;

    check-cast p0, LNc/P;

    invoke-interface {p0}, LNc/P;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
