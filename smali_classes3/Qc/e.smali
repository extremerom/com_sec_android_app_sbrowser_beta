.class public LQc/e;
.super LRc/g;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lib/h;ILPc/a;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LQc/e;->d:I

    invoke-direct {p0, p2, p3, p4}, LRc/g;-><init>(Lib/h;ILPc/a;)V

    iput-object p1, p0, LQc/e;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lsb/n;Lib/h;ILPc/a;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LQc/e;->d:I

    invoke-direct {p0, p2, p3, p4}, LRc/g;-><init>(Lib/h;ILPc/a;)V

    check-cast p1, Lkb/i;

    iput-object p1, p0, LQc/e;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public d(LPc/y;Lib/c;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, LQc/e;->d:I

    packed-switch v0, :pswitch_data_0

    new-instance p2, LRc/K;

    invoke-direct {p2, p1}, LRc/K;-><init>(LPc/y;)V

    iget-object p0, p0, LQc/e;->e:Ljava/lang/Object;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQc/h;

    new-instance v1, LRc/o;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p2, v2}, LRc/o;-><init>(LQc/h;LRc/K;Lib/c;)V

    const/4 v0, 0x3

    invoke-static {p1, v2, v2, v1, v0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    goto :goto_0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LQc/e;->e:Ljava/lang/Object;

    check-cast p0, Lkb/i;

    invoke-interface {p0, p1, p2}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public f(Lib/h;ILPc/a;)LRc/g;
    .locals 1

    iget v0, p0, LQc/e;->d:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LQc/e;

    iget-object p0, p0, LQc/e;->e:Ljava/lang/Object;

    invoke-direct {v0, p0, p1, p2, p3}, LQc/e;-><init>(Ljava/lang/Iterable;Lib/h;ILPc/a;)V

    return-object v0

    :pswitch_0
    new-instance v0, LQc/e;

    iget-object p0, p0, LQc/e;->e:Ljava/lang/Object;

    check-cast p0, Lkb/i;

    invoke-direct {v0, p0, p1, p2, p3}, LQc/e;-><init>(Lsb/n;Lib/h;ILPc/a;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public h(LNc/B;)LPc/A;
    .locals 5

    iget v0, p0, LQc/e;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, LRc/g;->h(LNc/B;)LPc/A;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, LRc/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LRc/f;-><init>(LRc/g;Lib/c;)V

    sget-object v1, LPc/a;->SUSPEND:LPc/a;

    sget-object v2, LNc/D;->DEFAULT:LNc/D;

    const/4 v3, 0x4

    iget v4, p0, LRc/g;->b:I

    invoke-static {v4, v3, v1}, LG5/r;->a(IILPc/a;)LPc/i;

    move-result-object v1

    iget-object p0, p0, LRc/g;->a:Lib/h;

    invoke-static {p1, p0}, LNc/E;->z(LNc/B;Lib/h;)Lib/h;

    move-result-object p0

    new-instance p1, LPc/x;

    invoke-direct {p1, p0, v1}, LPc/x;-><init>(Lib/h;LPc/i;)V

    invoke-virtual {p1, v2, p1, v0}, LNc/a;->i0(LNc/D;LNc/a;Lsb/n;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, LQc/e;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, LRc/g;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "block["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LQc/e;->e:Ljava/lang/Object;

    check-cast v1, Lkb/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, LRc/g;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
