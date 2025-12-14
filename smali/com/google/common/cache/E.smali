.class public final Lcom/google/common/cache/E;
.super Lcom/google/common/cache/G;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public volatile f:J

.field public g:Lcom/google/common/cache/Q;

.field public h:Lcom/google/common/cache/Q;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILcom/google/common/cache/Q;I)V
    .locals 0

    iput p4, p0, Lcom/google/common/cache/E;->e:I

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/cache/G;-><init>(Ljava/lang/Object;ILcom/google/common/cache/Q;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/cache/Q;
    .locals 1

    iget v0, p0, Lcom/google/common/cache/E;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/google/common/cache/g;->a()Lcom/google/common/cache/Q;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/common/cache/E;->h:Lcom/google/common/cache/Q;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c()Lcom/google/common/cache/Q;
    .locals 1

    iget v0, p0, Lcom/google/common/cache/E;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/google/common/cache/g;->c()Lcom/google/common/cache/Q;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/common/cache/E;->g:Lcom/google/common/cache/Q;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public e()Lcom/google/common/cache/Q;
    .locals 1

    iget v0, p0, Lcom/google/common/cache/E;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/google/common/cache/g;->e()Lcom/google/common/cache/Q;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/common/cache/E;->g:Lcom/google/common/cache/Q;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public f(Lcom/google/common/cache/Q;)V
    .locals 1

    iget v0, p0, Lcom/google/common/cache/E;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/google/common/cache/g;->f(Lcom/google/common/cache/Q;)V

    return-void

    :pswitch_0
    iput-object p1, p0, Lcom/google/common/cache/E;->h:Lcom/google/common/cache/Q;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public g()Lcom/google/common/cache/Q;
    .locals 1

    iget v0, p0, Lcom/google/common/cache/E;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/google/common/cache/g;->g()Lcom/google/common/cache/Q;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/common/cache/E;->h:Lcom/google/common/cache/Q;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public l()J
    .locals 2

    iget v0, p0, Lcom/google/common/cache/E;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/google/common/cache/g;->l()J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    iget-wide v0, p0, Lcom/google/common/cache/E;->f:J

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public m(J)V
    .locals 1

    iget v0, p0, Lcom/google/common/cache/E;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/google/common/cache/g;->m(J)V

    return-void

    :pswitch_0
    iput-wide p1, p0, Lcom/google/common/cache/E;->f:J

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public o()J
    .locals 2

    iget v0, p0, Lcom/google/common/cache/E;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/google/common/cache/g;->o()J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    iget-wide v0, p0, Lcom/google/common/cache/E;->f:J

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public p(J)V
    .locals 1

    iget v0, p0, Lcom/google/common/cache/E;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/google/common/cache/g;->p(J)V

    return-void

    :pswitch_0
    iput-wide p1, p0, Lcom/google/common/cache/E;->f:J

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public q(Lcom/google/common/cache/Q;)V
    .locals 1

    iget v0, p0, Lcom/google/common/cache/E;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/google/common/cache/g;->q(Lcom/google/common/cache/Q;)V

    return-void

    :pswitch_0
    iput-object p1, p0, Lcom/google/common/cache/E;->g:Lcom/google/common/cache/Q;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public r(Lcom/google/common/cache/Q;)V
    .locals 1

    iget v0, p0, Lcom/google/common/cache/E;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/google/common/cache/g;->r(Lcom/google/common/cache/Q;)V

    return-void

    :pswitch_0
    iput-object p1, p0, Lcom/google/common/cache/E;->g:Lcom/google/common/cache/Q;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public s(Lcom/google/common/cache/Q;)V
    .locals 1

    iget v0, p0, Lcom/google/common/cache/E;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/google/common/cache/g;->s(Lcom/google/common/cache/Q;)V

    return-void

    :pswitch_0
    iput-object p1, p0, Lcom/google/common/cache/E;->h:Lcom/google/common/cache/Q;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
