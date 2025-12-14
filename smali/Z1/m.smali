.class public final LZ1/m;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:LZ1/p;


# direct methods
.method public constructor <init>(LZ1/p;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LZ1/m;->a:I

    iput-object p1, p0, LZ1/m;->c:LZ1/p;

    iput-object p2, p0, LZ1/m;->b:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LZ1/p;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LZ1/m;->a:I

    iput-object p1, p0, LZ1/m;->b:Landroid/content/Context;

    iput-object p2, p0, LZ1/m;->c:LZ1/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, LZ1/m;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    move-object p2, p1

    check-cast p2, La0/q;

    invoke-virtual {p2}, La0/q;->x()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, La0/q;->K()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p2, Lx1/k;->b:La0/L0;

    iget-object v0, p0, LZ1/m;->b:Landroid/content/Context;

    invoke-virtual {p2, v0}, La0/L0;->b(Ljava/lang/Object;)La0/h0;

    move-result-object p2

    sget-object v1, LR1/d;->f:La0/L0;

    new-instance v2, LR1/w;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v4, v3}, LR1/w;-><init>(ZZZI)V

    invoke-virtual {v1, v2}, La0/L0;->b(Ljava/lang/Object;)La0/h0;

    move-result-object v1

    sget-object v2, Lx1/k;->f:La0/L0;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, La0/L0;->b(Ljava/lang/Object;)La0/h0;

    move-result-object v2

    filled-new-array {p2, v1, v2}, [La0/h0;

    move-result-object p2

    new-instance v1, LZ1/m;

    iget-object p0, p0, LZ1/m;->c:LZ1/p;

    invoke-direct {v1, p0, v0}, LZ1/m;-><init>(LZ1/p;Landroid/content/Context;)V

    const p0, 0x634c7fec

    invoke-static {p1, p0, v1}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object p0

    const/16 v0, 0x38

    invoke-static {p2, p0, p1, v0}, La0/d;->b([La0/h0;Li0/a;La0/m;I)V

    :goto_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    sget-object v0, Ldb/r;->a:Ldb/r;

    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    move-object p2, p1

    check-cast p2, La0/q;

    invoke-virtual {p2}, La0/q;->x()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, La0/q;->K()V

    goto/16 :goto_5

    :cond_3
    :goto_2
    new-instance p2, LZ1/l;

    iget-object v3, p0, LZ1/m;->c:LZ1/p;

    iget-object v4, p0, LZ1/m;->b:Landroid/content/Context;

    const/4 p0, 0x0

    invoke-direct {p2, v3, v4, p0}, LZ1/l;-><init>(LZ1/p;Landroid/content/Context;Lib/c;)V

    invoke-static {p2, p1}, La0/d;->F(Lsb/n;La0/m;)La0/a0;

    move-result-object p2

    invoke-interface {p2}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v8, 0x0

    if-eqz p2, :cond_b

    check-cast p1, La0/q;

    const p2, -0x1468fd49

    invoke-virtual {p1, p2}, La0/q;->R(I)V

    const p2, -0x1d58f75c

    invoke-virtual {p1, p2}, La0/q;->R(I)V

    invoke-virtual {p1}, La0/q;->G()Ljava/lang/Object;

    move-result-object p2

    sget-object v2, La0/l;->a:La0/V;

    if-ne p2, v2, :cond_4

    iget-object p2, v3, LZ1/p;->e:LR1/m;

    const-string v2, "<this>"

    invoke-static {p2, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v4, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, LZ1/h;

    invoke-direct {v2, p2, v4, p0}, LZ1/h;-><init>(LR1/m;Landroid/content/Context;Lib/c;)V

    new-instance p2, LQc/e;

    sget-object v5, Lib/i;->a:Lib/i;

    sget-object v6, LPc/a;->SUSPEND:LPc/a;

    const/4 v7, -0x2

    invoke-direct {p2, v2, v5, v7, v6}, LQc/e;-><init>(Lsb/n;Lib/h;ILPc/a;)V

    invoke-virtual {p1, p2}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p1, v8}, La0/q;->p(Z)V

    check-cast p2, LQc/h;

    invoke-static {p2, p1}, La0/d;->s(LQc/h;La0/q;)La0/a0;

    move-result-object p2

    invoke-interface {p2}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Lsb/n;

    const p2, -0x1468fcb5

    invoke-virtual {p1, p2}, La0/q;->R(I)V

    if-nez v6, :cond_5

    goto/16 :goto_4

    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance p0, LM1/c;

    const/4 p2, 0x1

    invoke-direct {p0, p2}, LM1/c;-><init>(I)V

    new-instance p2, LM1/c;

    invoke-direct {p2, v1}, LM1/c;-><init>(I)V

    filled-new-array {p0, p2}, [LM1/c;

    move-result-object p0

    invoke-static {p0}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LM1/c;

    iget p2, p2, LM1/c;->a:I

    iget v2, v3, LZ1/p;->h:I

    or-int v7, v2, p2

    if-ne v7, v2, :cond_6

    iget v2, v3, LZ1/p;->g:I

    invoke-static {v2}, LM1/b;->c(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LM1/b;

    iget v7, v7, LM1/b;->a:I

    invoke-static {p2, v1}, LM1/c;->a(II)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x8

    invoke-static {v7, v9}, LM1/b;->a(II)I

    move-result v9

    if-gtz v9, :cond_7

    :cond_8
    new-instance v9, Ldb/j;

    new-instance v10, LM1/c;

    invoke-direct {v10, p2}, LM1/c;-><init>(I)V

    new-instance v11, LM1/b;

    invoke-direct {v11, v7}, LM1/b;-><init>(I)V

    invoke-direct {v9, v10, v11}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    sget-object p0, LR1/d;->j:La0/L0;

    iget-object p2, v3, LZ1/p;->j:LZ1/i;

    invoke-virtual {p0, p2}, La0/L0;->b(Ljava/lang/Object;)La0/h0;

    move-result-object p0

    new-instance p2, LY1/o;

    const/4 v7, 0x1

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, LY1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lsb/n;I)V

    const v1, -0x1adce365

    invoke-static {p1, v1, p2}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object p2

    const/16 v1, 0x38

    invoke-static {p0, p2, p1, v1}, La0/d;->a(La0/h0;Li0/a;La0/m;I)V

    move-object p0, v0

    :goto_4
    invoke-virtual {p1, v8}, La0/q;->p(Z)V

    if-nez p0, :cond_a

    invoke-static {p1, v8}, LG5/T2;->d(La0/m;I)V

    :cond_a
    invoke-virtual {p1, v8}, La0/q;->p(Z)V

    goto :goto_5

    :cond_b
    check-cast p1, La0/q;

    const p0, -0x1468f985

    invoke-virtual {p1, p0}, La0/q;->R(I)V

    invoke-static {p1, v8}, LG5/T2;->d(La0/m;I)V

    invoke-virtual {p1, v8}, La0/q;->p(Z)V

    :goto_5
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
