.class public final LDb/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, LDb/J;->a:I

    iput-object p2, p0, LDb/J;->b:Ljava/lang/Object;

    iput-object p3, p0, LDb/J;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    iput p1, p0, LDb/J;->a:I

    iput-object p2, p0, LDb/J;->c:Ljava/lang/Object;

    iput-object p3, p0, LDb/J;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LWb/B;LPb/t;Ltb/w;)V
    .locals 0

    const/16 p2, 0xf

    iput p2, p0, LDb/J;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDb/J;->b:Ljava/lang/Object;

    iput-object p3, p0, LDb/J;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    iget v1, v0, LDb/J;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, LDb/J;->b:Ljava/lang/Object;

    check-cast v1, Lzc/i;

    iget-object v1, v1, Lzc/i;->e:Ljava/lang/Object;

    invoke-interface {v1}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    sget-object v1, Lfb/v;->a:Lfb/v;

    :cond_0
    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyc/d0;

    iget-object v4, v0, LDb/J;->c:Ljava/lang/Object;

    check-cast v4, Lzc/f;

    invoke-virtual {v3, v4}, Lyc/d0;->K0(Lzc/f;)Lyc/d0;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2

    :pswitch_0
    iget-object v1, v0, LDb/J;->c:Ljava/lang/Object;

    check-cast v1, Lyc/y;

    iget-object v1, v1, Lyc/y;->c:Lsb/a;

    invoke-interface {v1}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LBc/d;

    iget-object v0, v0, LDb/J;->b:Ljava/lang/Object;

    check-cast v0, Lzc/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "type"

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lyc/w;

    return-object v1

    :pswitch_1
    iget-object v1, v0, LDb/J;->b:Ljava/lang/Object;

    check-cast v1, Lwc/i;

    iget-object v2, v1, Lwc/i;->l:Luc/m;

    iget-object v2, v2, Luc/m;->a:Ljava/lang/Object;

    check-cast v2, Luc/k;

    iget-object v2, v2, Luc/k;->e:Luc/c;

    iget-object v0, v0, LDb/J;->c:Ljava/lang/Object;

    check-cast v0, Lcc/v;

    iget-object v1, v1, Lwc/i;->v:Luc/w;

    invoke-interface {v2, v1, v0}, Luc/e;->c(LJ2/i0;Lcc/v;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v1, v0, LDb/J;->b:Ljava/lang/Object;

    check-cast v1, Luc/E;

    iget-object v1, v1, Luc/E;->a:Luc/m;

    iget-object v2, v1, Luc/m;->a:Ljava/lang/Object;

    check-cast v2, Luc/k;

    iget-object v2, v2, Luc/k;->e:Luc/c;

    iget-object v1, v1, Luc/m;->b:Ljava/lang/Object;

    check-cast v1, Lec/g;

    iget-object v0, v0, LDb/J;->c:Ljava/lang/Object;

    check-cast v0, Lcc/T;

    invoke-interface {v2, v0, v1}, Luc/e;->a(Lcc/T;Lec/g;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v1, v0, LDb/J;->c:Ljava/lang/Object;

    check-cast v1, Lod/q;

    iget-object v2, v0, LDb/J;->b:Ljava/lang/Object;

    check-cast v2, Lod/u;

    sget-object v3, Lod/c;->INTERNAL_ERROR:Lod/c;

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, v4, v0}, Lod/u;->a(ZLDb/J;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Lod/u;->a(ZLDb/J;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lod/c;->NO_ERROR:Lod/c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lod/c;->CANCEL:Lod/c;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1, v4, v0, v5}, Lod/q;->a(Lod/c;Lod/c;Ljava/io/IOException;)V

    :goto_1
    invoke-static {v2}, Lid/b;->c(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v5, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v4, v3

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v4, v3

    goto :goto_2

    :cond_3
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Required SETTINGS preface not received"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    :try_start_3
    sget-object v0, Lod/c;->PROTOCOL_ERROR:Lod/c;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v1, v0, v0, v5}, Lod/q;->a(Lod/c;Lod/c;Ljava/io/IOException;)V

    goto :goto_1

    :goto_3
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0

    :goto_4
    invoke-virtual {v1, v4, v3, v5}, Lod/q;->a(Lod/c;Lod/c;Ljava/io/IOException;)V

    invoke-static {v2}, Lid/b;->c(Ljava/io/Closeable;)V

    throw v0

    :pswitch_4
    iget-object v1, v0, LDb/J;->b:Ljava/lang/Object;

    check-cast v1, LWb/B;

    iget-object v1, v1, LWb/B;->b:Lo3/i;

    iget-object v1, v1, Lo3/i;->a:Ljava/lang/Object;

    check-cast v1, LVb/a;

    iget-object v0, v0, LDb/J;->c:Ljava/lang/Object;

    check-cast v0, Ltb/w;

    iget-object v0, v0, Ltb/w;->a:Ljava/lang/Object;

    check-cast v0, LJb/P;

    iget-object v1, v1, LVb/a;->h:LTb/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "descriptor"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    iget-object v1, v0, LDb/J;->b:Ljava/lang/Object;

    check-cast v1, Lo3/i;

    iget-object v1, v1, Lo3/i;->a:Ljava/lang/Object;

    check-cast v1, LVb/a;

    iget-object v1, v1, LVb/a;->b:LB3/c;

    iget-object v0, v0, LDb/J;->c:Ljava/lang/Object;

    check-cast v0, LWb/x;

    iget-object v0, v0, LWb/x;->o:LWb/s;

    iget-object v0, v0, LMb/D;->f:Lhc/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "packageFqName"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :pswitch_6
    new-instance v1, LWb/s;

    iget-object v2, v0, LDb/J;->b:Ljava/lang/Object;

    check-cast v2, LVb/d;

    iget-object v2, v2, LVb/d;->a:Lo3/i;

    iget-object v0, v0, LDb/J;->c:Ljava/lang/Object;

    check-cast v0, LPb/x;

    invoke-direct {v1, v2, v0}, LWb/s;-><init>(Lo3/i;LPb/x;)V

    return-object v1

    :pswitch_7
    const-string v1, "<this>"

    iget-object v2, v0, LDb/J;->b:Ljava/lang/Object;

    check-cast v2, Lo3/i;

    invoke-static {v2, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "additionalAnnotations"

    iget-object v0, v0, LDb/J;->c:Ljava/lang/Object;

    check-cast v0, LKb/h;

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v2, Lo3/i;->a:Ljava/lang/Object;

    check-cast v1, LVb/a;

    iget-object v2, v2, Lo3/i;->c:Ljava/lang/Object;

    invoke-interface {v2}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LSb/u;

    iget-object v1, v1, LVb/a;->q:LSb/c;

    invoke-virtual {v1, v2, v0}, LSb/c;->b(LSb/u;LKb/h;)LSb/u;

    move-result-object v0

    return-object v0

    :pswitch_8
    iget-object v1, v0, LDb/J;->c:Ljava/lang/Object;

    check-cast v1, LJb/h;

    invoke-interface {v1}, LKb/a;->u()LKb/h;

    move-result-object v1

    const-string v2, "<this>"

    iget-object v0, v0, LDb/J;->b:Ljava/lang/Object;

    check-cast v0, Lo3/i;

    invoke-static {v0, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "additionalAnnotations"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lo3/i;->a:Ljava/lang/Object;

    check-cast v2, LVb/a;

    iget-object v0, v0, Lo3/i;->c:Ljava/lang/Object;

    invoke-interface {v0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSb/u;

    iget-object v2, v2, LVb/a;->q:LSb/c;

    invoke-virtual {v2, v0, v1}, LSb/c;->b(LSb/u;LKb/h;)LSb/u;

    move-result-object v0

    return-object v0

    :pswitch_9
    iget-object v1, v0, LDb/J;->b:Ljava/lang/Object;

    check-cast v1, Lo3/i;

    iget-object v1, v1, Lo3/i;->a:Ljava/lang/Object;

    check-cast v1, LVb/a;

    iget-object v1, v1, LVb/a;->o:LMb/B;

    iget-object v1, v1, LMb/B;->e:LGb/i;

    iget-object v0, v0, LDb/J;->c:Ljava/lang/Object;

    check-cast v0, LTb/b;

    iget-object v0, v0, LTb/b;->a:Lhc/c;

    invoke-virtual {v1, v0}, LGb/i;->j(Lhc/c;)LJb/f;

    move-result-object v0

    invoke-interface {v0}, LJb/f;->n()Lyc/A;

    move-result-object v0

    const-string v1, "getDefaultType(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_a
    new-instance v1, LMb/P;

    iget-object v2, v0, LDb/J;->b:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, LMb/P;

    iget-object v3, v10, LMb/P;->E:Lxc/o;

    iget-object v0, v0, LDb/J;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, LMb/j;

    move-object v0, v5

    check-cast v0, LF3/f;

    invoke-virtual {v0}, LF3/f;->u()LKb/h;

    move-result-object v7

    move-object v0, v5

    check-cast v0, LMb/v;

    invoke-virtual {v0}, LMb/v;->d()LJb/c;

    move-result-object v8

    const-string v2, "getKind(...)"

    invoke-static {v8, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, v10, LMb/P;->F:LJb/V;

    move-object v2, v11

    check-cast v2, LMb/o;

    invoke-virtual {v2}, LMb/o;->e()LJb/S;

    move-result-object v9

    const-string v2, "getSource(...)"

    invoke-static {v9, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v10, LMb/P;->F:LJb/V;

    move-object v2, v1

    move-object v6, v10

    invoke-direct/range {v2 .. v9}, LMb/P;-><init>(Lxc/o;LJb/V;LMb/j;LMb/O;LKb/h;LJb/c;LJb/S;)V

    sget-object v2, LMb/P;->H:LMb/E;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v11

    check-cast v2, Lwc/t;

    invoke-virtual {v2}, Lwc/t;->U0()LJb/f;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    move-object v2, v4

    goto :goto_5

    :cond_4
    invoke-virtual {v2}, Lwc/t;->V0()Lyc/A;

    move-result-object v2

    invoke-static {v2}, Lyc/Y;->d(Lyc/w;)Lyc/Y;

    move-result-object v2

    :goto_5
    if-nez v2, :cond_5

    move-object v1, v4

    goto :goto_7

    :cond_5
    iget-object v3, v0, LMb/v;->k:LMb/w;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v2}, LMb/w;->V0(Lyc/Y;)LMb/w;

    move-result-object v3

    move-object v4, v3

    :cond_6
    invoke-virtual {v0}, LMb/v;->r0()Ljava/util/List;

    move-result-object v0

    const-string v3, "getContextReceiverParameters(...)"

    invoke-static {v0, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LMb/w;

    invoke-virtual {v3, v2}, LMb/w;->V0(Lyc/Y;)LMb/w;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    check-cast v11, LMb/g;

    invoke-virtual {v11}, LMb/g;->q()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v10}, LMb/v;->H()Ljava/util/List;

    move-result-object v7

    iget-object v8, v10, LMb/v;->h:Lyc/w;

    invoke-static {v8}, Ltb/k;->c(Ljava/lang/Object;)V

    sget-object v9, LJb/B;->FINAL:LJb/B;

    const/4 v3, 0x0

    iget-object v10, v11, LMb/g;->g:LJb/p;

    move-object v2, v1

    invoke-virtual/range {v2 .. v10}, LMb/v;->Z0(LMb/w;LMb/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyc/w;LJb/B;LJb/p;)V

    :goto_7
    return-object v1

    :pswitch_b
    new-instance v1, LHc/g;

    invoke-direct {v1}, LHc/g;-><init>()V

    iget-object v2, v0, LDb/J;->c:Ljava/lang/Object;

    check-cast v2, LMb/v;

    invoke-virtual {v2}, LMb/v;->l()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJb/v;

    iget-object v4, v0, LDb/J;->b:Ljava/lang/Object;

    check-cast v4, Lyc/Y;

    invoke-interface {v3, v4}, LJb/v;->f(Lyc/Y;)LJb/v;

    move-result-object v3

    invoke-virtual {v1, v3}, LHc/g;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_8
    return-object v1

    :pswitch_c
    sget-object v1, Lyc/H;->b:LA7/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lyc/H;->c:Lyc/H;

    iget-object v2, v0, LDb/J;->c:Ljava/lang/Object;

    check-cast v2, LMb/i;

    invoke-virtual {v2}, LMb/i;->w()Lyc/L;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lrc/k;

    new-instance v5, LDb/E;

    const/16 v6, 0xa

    invoke-direct {v5, v6, v0}, LDb/E;-><init>(ILjava/lang/Object;)V

    sget-object v0, Lxc/l;->e:Lxc/b;

    invoke-direct {v4, v0, v5}, Lrc/k;-><init>(Lxc/o;Lsb/a;)V

    const/4 v0, 0x0

    invoke-static {v3, v4, v1, v2, v0}, Lyc/c;->v(Ljava/util/List;Lrc/o;Lyc/H;Lyc/L;Z)Lyc/A;

    move-result-object v0

    return-object v0

    :pswitch_d
    iget-object v1, v0, LDb/J;->b:Ljava/lang/Object;

    check-cast v1, LWb/j;

    new-instance v2, LWb/j;

    iget-object v3, v1, LWb/j;->j:Lo3/i;

    iget-object v4, v3, Lo3/i;->a:Ljava/lang/Object;

    check-cast v4, LVb/a;

    new-instance v15, LVb/a;

    move-object v5, v15

    iget-object v6, v4, LVb/a;->a:Lxc/l;

    iget-object v7, v4, LVb/a;->v:LSb/t;

    move-object/from16 v26, v7

    iget-object v7, v4, LVb/a;->w:Lac/g;

    move-object/from16 v27, v7

    iget-object v7, v4, LVb/a;->b:LB3/c;

    iget-object v8, v4, LVb/a;->c:Lo3/f;

    iget-object v9, v4, LVb/a;->d:Lac/f;

    iget-object v10, v4, LVb/a;->e:LTb/h;

    iget-object v11, v4, LVb/a;->f:LOb/d;

    iget-object v12, v4, LVb/a;->h:LTb/h;

    iget-object v13, v4, LVb/a;->i:LR7/a;

    iget-object v14, v4, LVb/a;->j:LOb/d;

    move-object/from16 v16, v15

    iget-object v15, v4, LVb/a;->k:Lo3/f;

    move-object/from16 v28, v2

    move-object/from16 v2, v16

    iget-object v0, v4, LVb/a;->l:Lac/g;

    move-object/from16 v16, v0

    iget-object v0, v4, LVb/a;->m:LJb/T;

    move-object/from16 v17, v0

    iget-object v0, v4, LVb/a;->n:LRb/b;

    move-object/from16 v18, v0

    iget-object v0, v4, LVb/a;->o:LMb/B;

    move-object/from16 v19, v0

    iget-object v0, v4, LVb/a;->p:LGb/o;

    move-object/from16 v20, v0

    iget-object v0, v4, LVb/a;->q:LSb/c;

    move-object/from16 v21, v0

    iget-object v0, v4, LVb/a;->r:LZb/c;

    move-object/from16 v22, v0

    iget-object v0, v4, LVb/a;->s:LSb/l;

    move-object/from16 v23, v0

    iget-object v0, v4, LVb/a;->t:LVb/b;

    move-object/from16 v24, v0

    iget-object v0, v4, LVb/a;->u:Lzc/l;

    move-object/from16 v25, v0

    invoke-direct/range {v5 .. v27}, LVb/a;-><init>(Lxc/l;LB3/c;Lo3/f;Lac/f;LTb/h;LOb/d;LTb/h;LR7/a;LOb/d;Lo3/f;Lac/g;LJb/T;LRb/b;LMb/B;LGb/o;LSb/c;LZb/c;LSb/l;LVb/b;Lzc/l;LSb/t;Lac/g;)V

    new-instance v0, Lo3/i;

    iget-object v4, v3, Lo3/i;->c:Ljava/lang/Object;

    iget-object v3, v3, Lo3/i;->b:Ljava/lang/Object;

    check-cast v3, LVb/e;

    invoke-direct {v0, v2, v3, v4}, Lo3/i;-><init>(LVb/a;LVb/e;Ldb/f;)V

    invoke-virtual {v1}, LMb/k;->k()LJb/l;

    move-result-object v2

    const-string v3, "getContainingDeclaration(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, p0

    iget-object v3, v3, LDb/J;->c:Ljava/lang/Object;

    check-cast v3, LJb/f;

    iget-object v1, v1, LWb/j;->h:LPb/n;

    move-object/from16 v4, v28

    invoke-direct {v4, v0, v2, v1, v3}, LWb/j;-><init>(Lo3/i;LJb/l;LPb/n;LJb/f;)V

    return-object v4

    :pswitch_e
    move-object v3, v0

    iget-object v0, v3, LDb/J;->b:Ljava/lang/Object;

    check-cast v0, LIb/q;

    invoke-virtual {v0}, LIb/q;->g()LIb/i;

    move-result-object v1

    iget-object v1, v1, LIb/i;->a:LMb/B;

    sget-object v2, LIb/g;->d:LIb/e;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, LIb/g;->h:Lhc/b;

    new-instance v4, Lcom/google/firebase/messaging/q;

    invoke-virtual {v0}, LIb/q;->g()LIb/i;

    move-result-object v0

    iget-object v0, v0, LIb/i;->a:LMb/B;

    iget-object v3, v3, LDb/J;->c:Ljava/lang/Object;

    check-cast v3, Lxc/l;

    invoke-direct {v4, v3, v0}, Lcom/google/firebase/messaging/q;-><init>(Lxc/o;LJb/C;)V

    invoke-static {v1, v2, v4}, LJb/y;->f(LJb/C;Lhc/b;Lcom/google/firebase/messaging/q;)LJb/f;

    move-result-object v0

    invoke-interface {v0}, LJb/f;->n()Lyc/A;

    move-result-object v0

    return-object v0

    :pswitch_f
    move-object v3, v0

    new-instance v0, LIb/q;

    iget-object v1, v3, LDb/J;->b:Ljava/lang/Object;

    check-cast v1, LIb/k;

    invoke-virtual {v1}, LGb/i;->l()LMb/B;

    move-result-object v2

    const-string v4, "getBuiltInsModule(...)"

    invoke-static {v2, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, LDb/E;

    const/4 v5, 0x6

    invoke-direct {v4, v5, v1}, LDb/E;-><init>(ILjava/lang/Object;)V

    iget-object v1, v3, LDb/J;->c:Ljava/lang/Object;

    check-cast v1, Lxc/l;

    invoke-direct {v0, v2, v1, v4}, LIb/q;-><init>(LMb/B;Lxc/l;LDb/E;)V

    return-object v0

    :pswitch_10
    move-object v3, v0

    new-instance v0, LMb/l;

    iget-object v1, v3, LDb/J;->b:Ljava/lang/Object;

    check-cast v1, LIb/g;

    iget-object v2, v1, LIb/g;->b:Lsb/k;

    iget-object v1, v1, LIb/g;->a:LMb/B;

    invoke-interface {v2, v1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, LJb/l;

    sget-object v8, LJb/B;->ABSTRACT:LJb/B;

    sget-object v9, LJb/g;->INTERFACE:LJb/g;

    iget-object v1, v1, LMb/B;->e:LGb/i;

    invoke-virtual {v1}, LGb/i;->e()Lyc/A;

    move-result-object v1

    invoke-static {v1}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/util/Collection;

    sget-object v7, LIb/g;->g:Lhc/f;

    iget-object v1, v3, LDb/J;->c:Ljava/lang/Object;

    check-cast v1, Lxc/l;

    move-object v5, v0

    move-object v11, v1

    invoke-direct/range {v5 .. v11}, LMb/l;-><init>(LJb/l;Lhc/f;LJb/B;LJb/g;Ljava/util/Collection;Lxc/o;)V

    new-instance v2, LIb/a;

    invoke-direct {v2, v1, v0}, Lrc/h;-><init>(Lxc/o;LMb/c;)V

    sget-object v1, Lfb/x;->a:Lfb/x;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, LMb/l;->D0(Lrc/o;Ljava/util/Set;LMb/j;)V

    return-object v0

    :pswitch_11
    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, v3, LDb/J;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, LDb/J;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/Iterable;

    sget-object v9, LEb/e;->a:LEb/e;

    const-string v7, "("

    const-string v8, ")"

    const-string v6, ", "

    const/16 v10, 0x30

    move-object v5, v0

    invoke-static/range {v4 .. v10}, Lfb/n;->H(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsb/k;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_12
    move-object v3, v0

    iget-object v0, v3, LDb/J;->b:Ljava/lang/Object;

    check-cast v0, LDb/v0;

    iget-object v1, v0, LDb/v0;->a:Lyc/w;

    invoke-virtual {v1}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v0, Lfb/v;->a:Lfb/v;

    goto/16 :goto_c

    :cond_9
    sget-object v2, Ldb/h;->PUBLICATION:Ldb/h;

    new-instance v4, LDb/s0;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, LDb/s0;-><init>(LDb/v0;I)V

    invoke-static {v2, v4}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    move-result-object v2

    check-cast v1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    const/4 v8, 0x0

    if-ltz v5, :cond_f

    check-cast v6, Lyc/Q;

    invoke-virtual {v6}, Lyc/Q;->c()Z

    move-result v9

    if-eqz v9, :cond_a

    sget-object v5, LAb/x;->c:LAb/x;

    goto :goto_b

    :cond_a
    new-instance v9, LDb/v0;

    invoke-virtual {v6}, Lyc/Q;->b()Lyc/w;

    move-result-object v10

    const-string v11, "getType(...)"

    invoke-static {v10, v11}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, v3, LDb/J;->c:Ljava/lang/Object;

    check-cast v11, Lsb/a;

    if-nez v11, :cond_b

    goto :goto_a

    :cond_b
    new-instance v8, LDb/t0;

    invoke-direct {v8, v0, v5, v2}, LDb/t0;-><init>(LDb/v0;ILdb/f;)V

    :goto_a
    invoke-direct {v9, v10, v8}, LDb/v0;-><init>(Lyc/w;Lsb/a;)V

    invoke-virtual {v6}, Lyc/Q;->a()Lyc/e0;

    move-result-object v5

    sget-object v6, LDb/u0;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_e

    const/4 v6, 0x2

    if-eq v5, v6, :cond_d

    const/4 v6, 0x3

    if-ne v5, v6, :cond_c

    new-instance v5, LAb/x;

    sget-object v6, LAb/y;->OUT:LAb/y;

    invoke-direct {v5, v6, v9}, LAb/x;-><init>(LAb/y;LDb/v0;)V

    goto :goto_b

    :cond_c
    new-instance v0, LI5/b;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_d
    new-instance v5, LAb/x;

    sget-object v6, LAb/y;->IN:LAb/y;

    invoke-direct {v5, v6, v9}, LAb/x;-><init>(LAb/y;LDb/v0;)V

    goto :goto_b

    :cond_e
    new-instance v5, LAb/x;

    sget-object v6, LAb/y;->INVARIANT:LAb/y;

    invoke-direct {v5, v6, v9}, LAb/x;-><init>(LAb/y;LDb/v0;)V

    :goto_b
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v7

    goto :goto_9

    :cond_f
    invoke-static {}, Lfb/o;->l()V

    throw v8

    :cond_10
    move-object v0, v4

    :goto_c
    return-object v0

    :pswitch_13
    move-object v3, v0

    iget-object v0, v3, LDb/J;->b:Ljava/lang/Object;

    check-cast v0, LDb/L;

    iget-object v1, v0, LDb/L;->c:LDb/I;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v3, LDb/J;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v0, v0, LDb/L;->d:Ljava/lang/String;

    const-string v3, "signature"

    invoke-static {v0, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "<init>"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v1}, LDb/I;->e()Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    move-object v4, v3

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, LJb/k;

    invoke-interface {v7}, LJb/k;->Z()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v7}, LJb/k;->k()LJb/j;

    move-result-object v8

    const-string v9, "getContainingDeclaration(...)"

    invoke-static {v8, v9}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lkc/i;->d(LJb/l;)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-static {v7}, LDb/G0;->c(LJb/v;)LG5/G;

    move-result-object v8

    invoke-virtual {v8}, LG5/G;->a()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const-string v11, "constructor-impl"

    invoke-static {v8, v11, v10}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_12

    const-string v10, ")V"

    invoke-static {v8, v10}, LKc/r;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "V"

    invoke-static {v8, v11}, LKc/k;->E(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, LJb/k;->k()LJb/j;

    move-result-object v7

    invoke-static {v7, v9}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Loc/d;->f(LJb/i;)Lhc/b;

    move-result-object v7

    invoke-static {v7}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lhc/b;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lgc/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_e

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid signature of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    invoke-static {v7}, LDb/G0;->c(LJb/v;)LG5/G;

    move-result-object v7

    invoke-virtual {v7}, LG5/G;->a()Ljava/lang/String;

    move-result-object v7

    :goto_e
    invoke-static {v7, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_14
    invoke-static {v2}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v3

    invoke-virtual {v1, v3}, LDb/I;->f(Lhc/f;)Ljava/util/Collection;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_15
    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, LJb/v;

    invoke-static {v7}, LDb/G0;->c(LJb/v;)LG5/G;

    move-result-object v7

    invoke-virtual {v7}, LG5/G;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_16
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_18

    move-object v7, v3

    check-cast v7, Ljava/lang/Iterable;

    sget-object v11, LDb/b;->g:LDb/b;

    const/4 v10, 0x0

    const/16 v12, 0x1e

    const-string v8, "\n"

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lfb/n;->I(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsb/k;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, LDb/z0;

    const-string v5, "Function \'"

    const-string v6, "\' (JVM signature: "

    const-string v7, ") not resolved in "

    invoke-static {v5, v2, v6, v0, v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_17

    const-string v1, " no members found"

    goto :goto_10

    :cond_17
    const-string v1, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_18
    invoke-static {v5}, Lfb/n;->U(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJb/v;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
