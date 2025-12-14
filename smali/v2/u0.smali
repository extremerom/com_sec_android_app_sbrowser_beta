.class public final Lv2/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/i;


# instance fields
.field public final synthetic a:Lv2/C0;

.field public final synthetic b:LNc/B;


# direct methods
.method public constructor <init>(Lv2/C0;LNc/B;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/u0;->a:Lv2/C0;

    iput-object p2, p0, Lv2/u0;->b:LNc/B;

    return-void
.end method


# virtual methods
.method public final b(Lib/c;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p1, Lv2/t0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lv2/t0;

    iget v1, v0, Lv2/t0;->k:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lv2/t0;->k:I

    goto :goto_0

    :cond_0
    new-instance v0, Lv2/t0;

    invoke-direct {v0, p0, p1}, Lv2/t0;-><init>(Lv2/u0;Lib/c;)V

    :goto_0
    iget-object p1, v0, Lv2/t0;->i:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lv2/t0;->k:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, v0, Lv2/t0;->d:Ljava/lang/Object;

    check-cast p0, LYc/a;

    iget-object v1, v0, Lv2/t0;->c:Ljava/lang/Object;

    check-cast v1, Lv2/D0;

    iget-object v2, v0, Lv2/t0;->b:Ljava/lang/Object;

    check-cast v2, LNc/B;

    iget-object v0, v0, Lv2/t0;->a:Ljava/lang/Object;

    check-cast v0, Lv2/C0;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_1
    iget-object p0, v0, Lv2/t0;->c:Ljava/lang/Object;

    check-cast p0, Lv2/P;

    iget-object v2, v0, Lv2/t0;->b:Ljava/lang/Object;

    check-cast v2, LNc/B;

    iget-object v3, v0, Lv2/t0;->a:Ljava/lang/Object;

    check-cast v3, Lv2/C0;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_19

    :pswitch_2
    iget-object p0, v0, Lv2/t0;->g:Ljava/lang/Object;

    check-cast p0, Lv2/C0;

    iget-object v2, v0, Lv2/t0;->f:Ljava/lang/Object;

    check-cast v2, Lv2/P;

    iget-object v3, v0, Lv2/t0;->e:Ljava/lang/Object;

    check-cast v3, LYc/a;

    iget-object v5, v0, Lv2/t0;->d:Ljava/lang/Object;

    check-cast v5, Lv2/D0;

    iget-object v6, v0, Lv2/t0;->c:Ljava/lang/Object;

    check-cast v6, Lv2/P;

    iget-object v7, v0, Lv2/t0;->b:Ljava/lang/Object;

    check-cast v7, LNc/B;

    iget-object v8, v0, Lv2/t0;->a:Ljava/lang/Object;

    check-cast v8, Lv2/C0;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_3
    iget-object p0, v0, Lv2/t0;->d:Ljava/lang/Object;

    check-cast p0, LYc/a;

    iget-object v2, v0, Lv2/t0;->c:Ljava/lang/Object;

    check-cast v2, Lv2/P;

    iget-object v5, v0, Lv2/t0;->b:Ljava/lang/Object;

    check-cast v5, LNc/B;

    iget-object v6, v0, Lv2/t0;->a:Ljava/lang/Object;

    check-cast v6, Lv2/C0;

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_14

    :catchall_0
    move-exception p1

    goto/16 :goto_15

    :pswitch_4
    iget-object p0, v0, Lv2/t0;->e:Ljava/lang/Object;

    check-cast p0, LYc/a;

    iget-object v2, v0, Lv2/t0;->d:Ljava/lang/Object;

    check-cast v2, Lv2/D0;

    iget-object v5, v0, Lv2/t0;->c:Ljava/lang/Object;

    check-cast v5, Lv2/P;

    iget-object v6, v0, Lv2/t0;->b:Ljava/lang/Object;

    check-cast v6, LNc/B;

    iget-object v7, v0, Lv2/t0;->a:Ljava/lang/Object;

    check-cast v7, Lv2/C0;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_13

    :pswitch_5
    iget-object p0, v0, Lv2/t0;->e:Ljava/lang/Object;

    check-cast p0, LYc/a;

    iget-object v2, v0, Lv2/t0;->d:Ljava/lang/Object;

    check-cast v2, Lv2/D0;

    iget-object v5, v0, Lv2/t0;->c:Ljava/lang/Object;

    check-cast v5, LNc/B;

    iget-object v6, v0, Lv2/t0;->b:Ljava/lang/Object;

    check-cast v6, Lv2/C0;

    iget-object v7, v0, Lv2/t0;->a:Ljava/lang/Object;

    check-cast v7, Lv2/O;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_11

    :pswitch_6
    iget-object p0, v0, Lv2/t0;->d:Ljava/lang/Object;

    check-cast p0, Lv2/P;

    iget-object v2, v0, Lv2/t0;->c:Ljava/lang/Object;

    check-cast v2, LNc/B;

    iget-object v5, v0, Lv2/t0;->b:Ljava/lang/Object;

    check-cast v5, Lv2/C0;

    iget-object v6, v0, Lv2/t0;->a:Ljava/lang/Object;

    check-cast v6, Lv2/O;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v7, v6

    move-object v6, v5

    move-object v5, v2

    goto/16 :goto_10

    :pswitch_7
    iget-object p0, v0, Lv2/t0;->h:Lv2/C0;

    iget-object v2, v0, Lv2/t0;->g:Ljava/lang/Object;

    check-cast v2, Lv2/P;

    iget-object v5, v0, Lv2/t0;->f:Ljava/lang/Object;

    check-cast v5, LYc/a;

    iget-object v6, v0, Lv2/t0;->e:Ljava/lang/Object;

    check-cast v6, Lv2/D0;

    iget-object v7, v0, Lv2/t0;->d:Ljava/lang/Object;

    check-cast v7, Lv2/P;

    iget-object v8, v0, Lv2/t0;->c:Ljava/lang/Object;

    check-cast v8, LNc/B;

    iget-object v9, v0, Lv2/t0;->b:Ljava/lang/Object;

    check-cast v9, Lv2/C0;

    iget-object v10, v0, Lv2/t0;->a:Ljava/lang/Object;

    check-cast v10, Lv2/O;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_8
    iget-object p0, v0, Lv2/t0;->e:Ljava/lang/Object;

    check-cast p0, LYc/a;

    iget-object v2, v0, Lv2/t0;->d:Ljava/lang/Object;

    check-cast v2, Lv2/P;

    iget-object v5, v0, Lv2/t0;->c:Ljava/lang/Object;

    check-cast v5, LNc/B;

    iget-object v6, v0, Lv2/t0;->b:Ljava/lang/Object;

    check-cast v6, Lv2/C0;

    iget-object v7, v0, Lv2/t0;->a:Ljava/lang/Object;

    check-cast v7, Lv2/O;

    :try_start_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_b

    :catchall_1
    move-exception p1

    goto/16 :goto_c

    :pswitch_9
    iget-object p0, v0, Lv2/t0;->f:Ljava/lang/Object;

    check-cast p0, LYc/a;

    iget-object v2, v0, Lv2/t0;->e:Ljava/lang/Object;

    check-cast v2, Lv2/D0;

    iget-object v5, v0, Lv2/t0;->d:Ljava/lang/Object;

    check-cast v5, Lv2/P;

    iget-object v6, v0, Lv2/t0;->c:Ljava/lang/Object;

    check-cast v6, LNc/B;

    iget-object v7, v0, Lv2/t0;->b:Ljava/lang/Object;

    check-cast v7, Lv2/C0;

    iget-object v8, v0, Lv2/t0;->a:Ljava/lang/Object;

    check-cast v8, Lv2/O;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_a
    iget-object p0, v0, Lv2/t0;->e:Ljava/lang/Object;

    check-cast p0, LYc/a;

    iget-object v2, v0, Lv2/t0;->d:Ljava/lang/Object;

    check-cast v2, Lv2/D0;

    iget-object v5, v0, Lv2/t0;->c:Ljava/lang/Object;

    check-cast v5, LNc/B;

    iget-object v6, v0, Lv2/t0;->b:Ljava/lang/Object;

    check-cast v6, Lv2/C0;

    iget-object v7, v0, Lv2/t0;->a:Ljava/lang/Object;

    check-cast v7, Lv2/O;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_b
    iget-object p0, v0, Lv2/t0;->d:Ljava/lang/Object;

    check-cast p0, Lv2/P;

    iget-object v2, v0, Lv2/t0;->c:Ljava/lang/Object;

    check-cast v2, LNc/B;

    iget-object v5, v0, Lv2/t0;->b:Ljava/lang/Object;

    check-cast v5, Lv2/C0;

    iget-object v6, v0, Lv2/t0;->a:Ljava/lang/Object;

    check-cast v6, Lv2/O;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v7, v6

    move-object v6, v5

    move-object v5, v2

    goto/16 :goto_7

    :pswitch_c
    iget-object p0, v0, Lv2/t0;->h:Lv2/C0;

    iget-object v2, v0, Lv2/t0;->g:Ljava/lang/Object;

    check-cast v2, Lv2/P;

    iget-object v5, v0, Lv2/t0;->f:Ljava/lang/Object;

    check-cast v5, LYc/a;

    iget-object v6, v0, Lv2/t0;->e:Ljava/lang/Object;

    check-cast v6, Lv2/D0;

    iget-object v7, v0, Lv2/t0;->d:Ljava/lang/Object;

    check-cast v7, Lv2/P;

    iget-object v8, v0, Lv2/t0;->c:Ljava/lang/Object;

    check-cast v8, LNc/B;

    iget-object v9, v0, Lv2/t0;->b:Ljava/lang/Object;

    check-cast v9, Lv2/C0;

    iget-object v10, v0, Lv2/t0;->a:Ljava/lang/Object;

    check-cast v10, Lv2/O;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_d
    iget-object p0, v0, Lv2/t0;->e:Ljava/lang/Object;

    check-cast p0, LYc/a;

    iget-object v2, v0, Lv2/t0;->d:Ljava/lang/Object;

    check-cast v2, Lv2/P;

    iget-object v5, v0, Lv2/t0;->c:Ljava/lang/Object;

    check-cast v5, LNc/B;

    iget-object v6, v0, Lv2/t0;->b:Ljava/lang/Object;

    check-cast v6, Lv2/C0;

    iget-object v7, v0, Lv2/t0;->a:Ljava/lang/Object;

    check-cast v7, Lv2/O;

    :try_start_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    goto :goto_2

    :pswitch_e
    iget-object p0, v0, Lv2/t0;->f:Ljava/lang/Object;

    check-cast p0, LYc/a;

    iget-object v2, v0, Lv2/t0;->e:Ljava/lang/Object;

    check-cast v2, Lv2/D0;

    iget-object v5, v0, Lv2/t0;->d:Ljava/lang/Object;

    check-cast v5, Lv2/P;

    iget-object v6, v0, Lv2/t0;->c:Ljava/lang/Object;

    check-cast v6, LNc/B;

    iget-object v7, v0, Lv2/t0;->b:Ljava/lang/Object;

    check-cast v7, Lv2/C0;

    iget-object v8, v0, Lv2/t0;->a:Ljava/lang/Object;

    check-cast v8, Lv2/O;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_3
    iget-object p1, v2, Lv2/D0;->b:Lv2/H0;

    iput-object v8, v0, Lv2/t0;->a:Ljava/lang/Object;

    iput-object v7, v0, Lv2/t0;->b:Ljava/lang/Object;

    iput-object v6, v0, Lv2/t0;->c:Ljava/lang/Object;

    iput-object v5, v0, Lv2/t0;->d:Ljava/lang/Object;

    iput-object p0, v0, Lv2/t0;->e:Ljava/lang/Object;

    iput-object v4, v0, Lv2/t0;->f:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, v0, Lv2/t0;->k:I

    invoke-virtual {v7, p1, v5, v0}, Lv2/C0;->k(Lv2/H0;Lv2/P;Lkb/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne p1, v1, :cond_1

    return-object v1

    :cond_1
    move-object v2, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    :goto_1
    invoke-interface {p0, v4}, LYc/a;->b(Ljava/lang/Object;)V

    move-object v8, v5

    move-object p0, v6

    move-object v10, v7

    goto :goto_4

    :goto_2
    invoke-interface {p0, v4}, LYc/a;->b(Ljava/lang/Object;)V

    throw p1

    :pswitch_f
    iget-object p0, v0, Lv2/t0;->d:Ljava/lang/Object;

    check-cast p0, LYc/a;

    iget-object v2, v0, Lv2/t0;->c:Ljava/lang/Object;

    check-cast v2, Lv2/C0;

    iget-object v5, v0, Lv2/t0;->b:Ljava/lang/Object;

    check-cast v5, Lv2/D0;

    iget-object v6, v0, Lv2/t0;->a:Ljava/lang/Object;

    check-cast v6, Lv2/u0;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_10
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v2, p0, Lv2/u0;->a:Lv2/C0;

    iget-object v5, v2, Lv2/C0;->i:Lv2/D0;

    iget-object p1, v5, Lv2/D0;->a:LYc/d;

    iput-object p0, v0, Lv2/t0;->a:Ljava/lang/Object;

    iput-object v5, v0, Lv2/t0;->b:Ljava/lang/Object;

    iput-object v2, v0, Lv2/t0;->c:Ljava/lang/Object;

    iput-object p1, v0, Lv2/t0;->d:Ljava/lang/Object;

    iput v3, v0, Lv2/t0;->k:I

    invoke-virtual {p1, v0}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_2

    return-object v1

    :cond_2
    move-object v6, p0

    move-object p0, p1

    :goto_3
    :try_start_4
    iget-object p1, v5, Lv2/D0;->b:Lv2/H0;

    iget-object v5, p1, Lv2/H0;->l:LZ3/x;

    invoke-virtual {v5}, LZ3/x;->J()Lv2/O;

    move-result-object v5

    iget-object v2, v2, Lv2/C0;->f:LX4/i;

    iget-object v2, v2, LX4/i;->b:Ljava/lang/Object;

    check-cast v2, Lo3/n;

    iget-object v2, v2, Lo3/n;->c:Ljava/lang/Object;

    check-cast v2, Lv2/z1;

    invoke-virtual {p1, v2}, Lv2/H0;->a(Lv2/z1;)Lv2/h1;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    invoke-interface {p0, v4}, LYc/a;->b(Ljava/lang/Object;)V

    iget-object p0, v6, Lv2/u0;->a:Lv2/C0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lv2/P;->REFRESH:Lv2/P;

    iget-object p1, v5, Lv2/O;->a:LEc/g;

    instance-of p1, p1, Lv2/K;

    iget-object v2, v6, Lv2/u0;->a:Lv2/C0;

    iget-object v6, v6, Lv2/u0;->b:LNc/B;

    if-eqz p1, :cond_8

    move-object v10, v5

    move-object v8, v6

    move-object v11, v2

    move-object v2, p0

    move-object p0, v11

    :goto_4
    sget-object p1, Lv2/s0;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget p1, p1, v5

    if-ne p1, v3, :cond_3

    move-object p1, p0

    move-object v6, v2

    move-object v5, v4

    goto :goto_6

    :cond_3
    iget-object v6, p0, Lv2/C0;->i:Lv2/D0;

    iget-object v5, v6, Lv2/D0;->a:LYc/d;

    iput-object v10, v0, Lv2/t0;->a:Ljava/lang/Object;

    iput-object p0, v0, Lv2/t0;->b:Ljava/lang/Object;

    iput-object v8, v0, Lv2/t0;->c:Ljava/lang/Object;

    iput-object v2, v0, Lv2/t0;->d:Ljava/lang/Object;

    iput-object v6, v0, Lv2/t0;->e:Ljava/lang/Object;

    iput-object v5, v0, Lv2/t0;->f:Ljava/lang/Object;

    iput-object v2, v0, Lv2/t0;->g:Ljava/lang/Object;

    iput-object p0, v0, Lv2/t0;->h:Lv2/C0;

    const/4 p1, 0x4

    iput p1, v0, Lv2/t0;->k:I

    invoke-virtual {v5, v0}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v9, p0

    move-object v7, v2

    :goto_5
    :try_start_5
    iget-object p1, v6, Lv2/D0;->b:Lv2/H0;

    iget-object p1, p1, Lv2/H0;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/C1;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    invoke-interface {v5, v4}, LYc/a;->b(Ljava/lang/Object;)V

    move-object v5, p1

    move-object v6, v2

    move-object v2, v7

    move-object p1, p0

    move-object p0, v9

    :goto_6
    iput-object v10, v0, Lv2/t0;->a:Ljava/lang/Object;

    iput-object p0, v0, Lv2/t0;->b:Ljava/lang/Object;

    iput-object v8, v0, Lv2/t0;->c:Ljava/lang/Object;

    iput-object v2, v0, Lv2/t0;->d:Ljava/lang/Object;

    iput-object v4, v0, Lv2/t0;->e:Ljava/lang/Object;

    iput-object v4, v0, Lv2/t0;->f:Ljava/lang/Object;

    iput-object v4, v0, Lv2/t0;->g:Ljava/lang/Object;

    iput-object v4, v0, Lv2/t0;->h:Lv2/C0;

    const/4 v7, 0x5

    iput v7, v0, Lv2/t0;->k:I

    invoke-static {p1, v6, v5, v0}, Lv2/C0;->c(Lv2/C0;Lv2/P;Lv2/C1;Lv2/t0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v6, p0

    move-object p0, v2

    move-object v5, v8

    move-object v7, v10

    :goto_7
    sget-object p1, Lv2/P;->REFRESH:Lv2/P;

    if-ne p0, p1, :cond_7

    iget-object v2, v6, Lv2/C0;->i:Lv2/D0;

    iget-object p0, v2, Lv2/D0;->a:LYc/d;

    iput-object v7, v0, Lv2/t0;->a:Ljava/lang/Object;

    iput-object v6, v0, Lv2/t0;->b:Ljava/lang/Object;

    iput-object v5, v0, Lv2/t0;->c:Ljava/lang/Object;

    iput-object v2, v0, Lv2/t0;->d:Ljava/lang/Object;

    iput-object p0, v0, Lv2/t0;->e:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, v0, Lv2/t0;->k:I

    invoke-virtual {p0, v0}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_8
    :try_start_6
    iget-object p1, v2, Lv2/D0;->b:Lv2/H0;

    iget-object p1, p1, Lv2/H0;->l:LZ3/x;

    sget-object v2, Lv2/P;->REFRESH:Lv2/P;

    invoke-virtual {p1, v2}, LZ3/x;->r(Lv2/P;)LEc/g;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-interface {p0, v4}, LYc/a;->b(Ljava/lang/Object;)V

    instance-of p0, p1, Lv2/K;

    if-nez p0, :cond_7

    invoke-static {v6, v5}, Lv2/C0;->d(Lv2/C0;LNc/B;)V

    :cond_7
    move-object v2, v6

    move-object v6, v5

    move-object v5, v7

    goto :goto_9

    :catchall_3
    move-exception p1

    invoke-interface {p0, v4}, LYc/a;->b(Ljava/lang/Object;)V

    throw p1

    :catchall_4
    move-exception p0

    invoke-interface {v5, v4}, LYc/a;->b(Ljava/lang/Object;)V

    throw p0

    :cond_8
    :goto_9
    sget-object p0, Lv2/P;->PREPEND:Lv2/P;

    iget-object p1, v5, Lv2/O;->b:LEc/g;

    instance-of p1, p1, Lv2/K;

    if-eqz p1, :cond_11

    sget-object p1, Lv2/P;->REFRESH:Lv2/P;

    if-eq p0, p1, :cond_b

    iget-object p1, v2, Lv2/C0;->i:Lv2/D0;

    iget-object v7, p1, Lv2/D0;->a:LYc/d;

    iput-object v5, v0, Lv2/t0;->a:Ljava/lang/Object;

    iput-object v2, v0, Lv2/t0;->b:Ljava/lang/Object;

    iput-object v6, v0, Lv2/t0;->c:Ljava/lang/Object;

    iput-object p0, v0, Lv2/t0;->d:Ljava/lang/Object;

    iput-object p1, v0, Lv2/t0;->e:Ljava/lang/Object;

    iput-object v7, v0, Lv2/t0;->f:Ljava/lang/Object;

    const/4 v8, 0x7

    iput v8, v0, Lv2/t0;->k:I

    invoke-virtual {v7, v0}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_9

    return-object v1

    :cond_9
    move-object v8, v5

    move-object v5, p0

    move-object p0, v7

    move-object v7, v2

    move-object v2, p1

    :goto_a
    :try_start_7
    iget-object p1, v2, Lv2/D0;->b:Lv2/H0;

    iput-object v8, v0, Lv2/t0;->a:Ljava/lang/Object;

    iput-object v7, v0, Lv2/t0;->b:Ljava/lang/Object;

    iput-object v6, v0, Lv2/t0;->c:Ljava/lang/Object;

    iput-object v5, v0, Lv2/t0;->d:Ljava/lang/Object;

    iput-object p0, v0, Lv2/t0;->e:Ljava/lang/Object;

    iput-object v4, v0, Lv2/t0;->f:Ljava/lang/Object;

    const/16 v2, 0x8

    iput v2, v0, Lv2/t0;->k:I

    invoke-virtual {v7, p1, v5, v0}, Lv2/C0;->k(Lv2/H0;Lv2/P;Lkb/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-ne p1, v1, :cond_a

    return-object v1

    :cond_a
    move-object v2, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    :goto_b
    invoke-interface {p0, v4}, LYc/a;->b(Ljava/lang/Object;)V

    move-object v8, v5

    move-object p0, v6

    move-object v10, v7

    goto :goto_d

    :goto_c
    invoke-interface {p0, v4}, LYc/a;->b(Ljava/lang/Object;)V

    throw p1

    :cond_b
    move-object v10, v5

    move-object v8, v6

    move-object v11, v2

    move-object v2, p0

    move-object p0, v11

    :goto_d
    sget-object p1, Lv2/s0;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget p1, p1, v5

    if-ne p1, v3, :cond_c

    move-object p1, p0

    move-object v6, v2

    move-object v5, v4

    goto :goto_f

    :cond_c
    iget-object v6, p0, Lv2/C0;->i:Lv2/D0;

    iget-object v5, v6, Lv2/D0;->a:LYc/d;

    iput-object v10, v0, Lv2/t0;->a:Ljava/lang/Object;

    iput-object p0, v0, Lv2/t0;->b:Ljava/lang/Object;

    iput-object v8, v0, Lv2/t0;->c:Ljava/lang/Object;

    iput-object v2, v0, Lv2/t0;->d:Ljava/lang/Object;

    iput-object v6, v0, Lv2/t0;->e:Ljava/lang/Object;

    iput-object v5, v0, Lv2/t0;->f:Ljava/lang/Object;

    iput-object v2, v0, Lv2/t0;->g:Ljava/lang/Object;

    iput-object p0, v0, Lv2/t0;->h:Lv2/C0;

    const/16 p1, 0x9

    iput p1, v0, Lv2/t0;->k:I

    invoke-virtual {v5, v0}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_d

    return-object v1

    :cond_d
    move-object v9, p0

    move-object v7, v2

    :goto_e
    :try_start_8
    iget-object p1, v6, Lv2/D0;->b:Lv2/H0;

    iget-object p1, p1, Lv2/H0;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/C1;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    invoke-interface {v5, v4}, LYc/a;->b(Ljava/lang/Object;)V

    move-object v5, p1

    move-object v6, v2

    move-object v2, v7

    move-object p1, p0

    move-object p0, v9

    :goto_f
    iput-object v10, v0, Lv2/t0;->a:Ljava/lang/Object;

    iput-object p0, v0, Lv2/t0;->b:Ljava/lang/Object;

    iput-object v8, v0, Lv2/t0;->c:Ljava/lang/Object;

    iput-object v2, v0, Lv2/t0;->d:Ljava/lang/Object;

    iput-object v4, v0, Lv2/t0;->e:Ljava/lang/Object;

    iput-object v4, v0, Lv2/t0;->f:Ljava/lang/Object;

    iput-object v4, v0, Lv2/t0;->g:Ljava/lang/Object;

    iput-object v4, v0, Lv2/t0;->h:Lv2/C0;

    const/16 v7, 0xa

    iput v7, v0, Lv2/t0;->k:I

    invoke-static {p1, v6, v5, v0}, Lv2/C0;->c(Lv2/C0;Lv2/P;Lv2/C1;Lv2/t0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_e

    return-object v1

    :cond_e
    move-object v6, p0

    move-object p0, v2

    move-object v5, v8

    move-object v7, v10

    :goto_10
    sget-object p1, Lv2/P;->REFRESH:Lv2/P;

    if-ne p0, p1, :cond_10

    iget-object v2, v6, Lv2/C0;->i:Lv2/D0;

    iget-object p0, v2, Lv2/D0;->a:LYc/d;

    iput-object v7, v0, Lv2/t0;->a:Ljava/lang/Object;

    iput-object v6, v0, Lv2/t0;->b:Ljava/lang/Object;

    iput-object v5, v0, Lv2/t0;->c:Ljava/lang/Object;

    iput-object v2, v0, Lv2/t0;->d:Ljava/lang/Object;

    iput-object p0, v0, Lv2/t0;->e:Ljava/lang/Object;

    const/16 p1, 0xb

    iput p1, v0, Lv2/t0;->k:I

    invoke-virtual {p0, v0}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_f

    return-object v1

    :cond_f
    :goto_11
    :try_start_9
    iget-object p1, v2, Lv2/D0;->b:Lv2/H0;

    iget-object p1, p1, Lv2/H0;->l:LZ3/x;

    sget-object v2, Lv2/P;->REFRESH:Lv2/P;

    invoke-virtual {p1, v2}, LZ3/x;->r(Lv2/P;)LEc/g;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    invoke-interface {p0, v4}, LYc/a;->b(Ljava/lang/Object;)V

    instance-of p0, p1, Lv2/K;

    if-nez p0, :cond_10

    invoke-static {v6, v5}, Lv2/C0;->d(Lv2/C0;LNc/B;)V

    :cond_10
    move-object v2, v6

    move-object v6, v5

    move-object v5, v7

    goto :goto_12

    :catchall_5
    move-exception p1

    invoke-interface {p0, v4}, LYc/a;->b(Ljava/lang/Object;)V

    throw p1

    :catchall_6
    move-exception p0

    invoke-interface {v5, v4}, LYc/a;->b(Ljava/lang/Object;)V

    throw p0

    :cond_11
    :goto_12
    sget-object p0, Lv2/P;->APPEND:Lv2/P;

    iget-object p1, v5, Lv2/O;->c:LEc/g;

    instance-of p1, p1, Lv2/K;

    if-eqz p1, :cond_19

    sget-object p1, Lv2/P;->REFRESH:Lv2/P;

    if-eq p0, p1, :cond_14

    iget-object p1, v2, Lv2/C0;->i:Lv2/D0;

    iget-object v5, p1, Lv2/D0;->a:LYc/d;

    iput-object v2, v0, Lv2/t0;->a:Ljava/lang/Object;

    iput-object v6, v0, Lv2/t0;->b:Ljava/lang/Object;

    iput-object p0, v0, Lv2/t0;->c:Ljava/lang/Object;

    iput-object p1, v0, Lv2/t0;->d:Ljava/lang/Object;

    iput-object v5, v0, Lv2/t0;->e:Ljava/lang/Object;

    const/16 v7, 0xc

    iput v7, v0, Lv2/t0;->k:I

    invoke-virtual {v5, v0}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_12

    return-object v1

    :cond_12
    move-object v7, v2

    move-object v2, p1

    move-object v11, v5

    move-object v5, p0

    move-object p0, v11

    :goto_13
    :try_start_a
    iget-object p1, v2, Lv2/D0;->b:Lv2/H0;

    iput-object v7, v0, Lv2/t0;->a:Ljava/lang/Object;

    iput-object v6, v0, Lv2/t0;->b:Ljava/lang/Object;

    iput-object v5, v0, Lv2/t0;->c:Ljava/lang/Object;

    iput-object p0, v0, Lv2/t0;->d:Ljava/lang/Object;

    iput-object v4, v0, Lv2/t0;->e:Ljava/lang/Object;

    const/16 v2, 0xd

    iput v2, v0, Lv2/t0;->k:I

    invoke-virtual {v7, p1, v5, v0}, Lv2/C0;->k(Lv2/H0;Lv2/P;Lkb/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-ne p1, v1, :cond_13

    return-object v1

    :cond_13
    move-object v2, v5

    move-object v5, v6

    move-object v6, v7

    :goto_14
    invoke-interface {p0, v4}, LYc/a;->b(Ljava/lang/Object;)V

    move-object v7, v5

    move-object p0, v6

    goto :goto_16

    :goto_15
    invoke-interface {p0, v4}, LYc/a;->b(Ljava/lang/Object;)V

    throw p1

    :cond_14
    move-object v7, v6

    move-object v11, v2

    move-object v2, p0

    move-object p0, v11

    :goto_16
    sget-object p1, Lv2/s0;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget p1, p1, v5

    if-ne p1, v3, :cond_15

    move-object p1, p0

    move-object v5, v2

    move-object v3, v4

    goto :goto_18

    :cond_15
    iget-object v5, p0, Lv2/C0;->i:Lv2/D0;

    iget-object v3, v5, Lv2/D0;->a:LYc/d;

    iput-object p0, v0, Lv2/t0;->a:Ljava/lang/Object;

    iput-object v7, v0, Lv2/t0;->b:Ljava/lang/Object;

    iput-object v2, v0, Lv2/t0;->c:Ljava/lang/Object;

    iput-object v5, v0, Lv2/t0;->d:Ljava/lang/Object;

    iput-object v3, v0, Lv2/t0;->e:Ljava/lang/Object;

    iput-object v2, v0, Lv2/t0;->f:Ljava/lang/Object;

    iput-object p0, v0, Lv2/t0;->g:Ljava/lang/Object;

    const/16 p1, 0xe

    iput p1, v0, Lv2/t0;->k:I

    invoke-virtual {v3, v0}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_16

    return-object v1

    :cond_16
    move-object v8, p0

    move-object v6, v2

    :goto_17
    :try_start_b
    iget-object p1, v5, Lv2/D0;->b:Lv2/H0;

    iget-object p1, p1, Lv2/H0;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/C1;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    invoke-interface {v3, v4}, LYc/a;->b(Ljava/lang/Object;)V

    move-object v3, p1

    move-object v5, v2

    move-object v2, v6

    move-object p1, p0

    move-object p0, v8

    :goto_18
    iput-object p0, v0, Lv2/t0;->a:Ljava/lang/Object;

    iput-object v7, v0, Lv2/t0;->b:Ljava/lang/Object;

    iput-object v2, v0, Lv2/t0;->c:Ljava/lang/Object;

    iput-object v4, v0, Lv2/t0;->d:Ljava/lang/Object;

    iput-object v4, v0, Lv2/t0;->e:Ljava/lang/Object;

    iput-object v4, v0, Lv2/t0;->f:Ljava/lang/Object;

    iput-object v4, v0, Lv2/t0;->g:Ljava/lang/Object;

    const/16 v6, 0xf

    iput v6, v0, Lv2/t0;->k:I

    invoke-static {p1, v5, v3, v0}, Lv2/C0;->c(Lv2/C0;Lv2/P;Lv2/C1;Lv2/t0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_17

    return-object v1

    :cond_17
    move-object v3, p0

    move-object p0, v2

    move-object v2, v7

    :goto_19
    sget-object p1, Lv2/P;->REFRESH:Lv2/P;

    if-ne p0, p1, :cond_19

    iget-object p0, v3, Lv2/C0;->i:Lv2/D0;

    iget-object p1, p0, Lv2/D0;->a:LYc/d;

    iput-object v3, v0, Lv2/t0;->a:Ljava/lang/Object;

    iput-object v2, v0, Lv2/t0;->b:Ljava/lang/Object;

    iput-object p0, v0, Lv2/t0;->c:Ljava/lang/Object;

    iput-object p1, v0, Lv2/t0;->d:Ljava/lang/Object;

    const/16 v5, 0x10

    iput v5, v0, Lv2/t0;->k:I

    invoke-virtual {p1, v0}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_18

    return-object v1

    :cond_18
    move-object v1, p0

    move-object p0, p1

    move-object v0, v3

    :goto_1a
    :try_start_c
    iget-object p1, v1, Lv2/D0;->b:Lv2/H0;

    iget-object p1, p1, Lv2/H0;->l:LZ3/x;

    sget-object v1, Lv2/P;->REFRESH:Lv2/P;

    invoke-virtual {p1, v1}, LZ3/x;->r(Lv2/P;)LEc/g;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    invoke-interface {p0, v4}, LYc/a;->b(Ljava/lang/Object;)V

    instance-of p0, p1, Lv2/K;

    if-nez p0, :cond_19

    invoke-static {v0, v2}, Lv2/C0;->d(Lv2/C0;LNc/B;)V

    goto :goto_1b

    :catchall_7
    move-exception p1

    invoke-interface {p0, v4}, LYc/a;->b(Ljava/lang/Object;)V

    throw p1

    :catchall_8
    move-exception p0

    invoke-interface {v3, v4}, LYc/a;->b(Ljava/lang/Object;)V

    throw p0

    :cond_19
    :goto_1b
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :catchall_9
    move-exception p1

    invoke-interface {p0, v4}, LYc/a;->b(Ljava/lang/Object;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final bridge synthetic emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ldb/r;

    invoke-virtual {p0, p2}, Lv2/u0;->b(Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
