.class public final LS/z;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:Ltb/w;

.field public b:Ltb/w;

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:LPc/m;

.field public final synthetic f:LS/K;

.field public final synthetic g:La0/a0;

.field public final synthetic h:LS/I;


# direct methods
.method public constructor <init>(LPc/m;LS/K;La0/a0;LS/I;Lib/c;)V
    .locals 0

    iput-object p1, p0, LS/z;->e:LPc/m;

    iput-object p2, p0, LS/z;->f:LS/K;

    iput-object p3, p0, LS/z;->g:La0/a0;

    iput-object p4, p0, LS/z;->h:LS/I;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 7

    new-instance v6, LS/z;

    iget-object v3, p0, LS/z;->g:La0/a0;

    iget-object v4, p0, LS/z;->h:LS/I;

    iget-object v2, p0, LS/z;->f:LS/K;

    iget-object v1, p0, LS/z;->e:LPc/m;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LS/z;-><init>(LPc/m;LS/K;La0/a0;LS/I;Lib/c;)V

    iput-object p1, v6, LS/z;->d:Ljava/lang/Object;

    return-object v6
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LS/z;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LS/z;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LS/z;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LS/z;->c:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    iget-object v3, p0, LS/z;->g:La0/a0;

    iget-object v4, p0, LS/z;->e:LPc/m;

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object v1, p0, LS/z;->d:Ljava/lang/Object;

    check-cast v1, LNc/B;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_1
    iget-object v1, p0, LS/z;->d:Ljava/lang/Object;

    check-cast v1, LNc/B;

    :goto_0
    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_6

    :pswitch_2
    iget-object v1, p0, LS/z;->d:Ljava/lang/Object;

    check-cast v1, LNc/B;

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, LS/z;->a:Ltb/w;

    iget-object v6, p0, LS/z;->d:Ljava/lang/Object;

    check-cast v6, LNc/B;

    :try_start_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :catch_0
    move-object v1, v6

    goto/16 :goto_7

    :pswitch_4
    iget-object v1, p0, LS/z;->a:Ltb/w;

    iget-object v6, p0, LS/z;->d:Ljava/lang/Object;

    check-cast v6, LNc/B;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_5
    iget-object v1, p0, LS/z;->b:Ltb/w;

    iget-object v6, p0, LS/z;->a:Ltb/w;

    iget-object v7, p0, LS/z;->d:Ljava/lang/Object;

    check-cast v7, LNc/B;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_6
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LS/z;->d:Ljava/lang/Object;

    check-cast p1, LNc/B;

    :goto_1
    invoke-static {p1}, LNc/E;->u(LNc/B;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ltb/w;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS/z;->d:Ljava/lang/Object;

    iput-object v1, p0, LS/z;->a:Ltb/w;

    iput-object v1, p0, LS/z;->b:Ltb/w;

    const/4 v6, 0x1

    iput v6, p0, LS/z;->c:I

    invoke-interface {v4, p0}, LPc/A;->r(Lkb/i;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_0

    return-object v0

    :cond_0
    move-object v7, p1

    move-object p1, v6

    move-object v6, v1

    :goto_2
    iput-object p1, v1, Ltb/w;->a:Ljava/lang/Object;

    iget-object p1, v6, Ltb/w;->a:Ljava/lang/Object;

    instance-of p1, p1, LS/m;

    if-eqz p1, :cond_8

    invoke-interface {v3}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LS/t;

    iget-object v1, v6, Ltb/w;->a:Ljava/lang/Object;

    const-string v8, "null cannot be cast to non-null type androidx.compose.foundation.gestures.DragEvent.DragStarted"

    invoke-static {v1, v8}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, LS/m;

    iput-object v7, p0, LS/z;->d:Ljava/lang/Object;

    iput-object v6, p0, LS/z;->a:Ltb/w;

    iput-object v5, p0, LS/z;->b:Ltb/w;

    const/4 v8, 0x2

    iput v8, p0, LS/z;->c:I

    invoke-virtual {p1, v7, v1, p0}, LS/t;->b(LNc/B;LS/m;Lkb/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    :cond_1
    move-object v1, v6

    move-object v6, v7

    :goto_3
    :try_start_2
    iget-object p1, p0, LS/z;->f:LS/K;

    sget-object v7, LR/s;->UserInput:LR/s;

    new-instance v8, LS/y;

    iget-object v9, p0, LS/z;->h:LS/I;

    invoke-direct {v8, v1, v4, v9, v5}, LS/y;-><init>(Ltb/w;LPc/m;LS/I;Lib/c;)V

    iput-object v6, p0, LS/z;->d:Ljava/lang/Object;

    iput-object v1, p0, LS/z;->a:Ltb/w;

    const/4 v9, 0x3

    iput v9, p0, LS/z;->c:I

    iget-object v9, p1, LS/K;->a:La0/a0;

    invoke-interface {v9}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LS/k0;

    iget-object v9, v9, LS/k0;->d:LV/J;

    new-instance v10, LS/J;

    invoke-direct {v10, p1, v8, v5}, LS/J;-><init>(LS/K;LS/y;Lib/c;)V

    invoke-virtual {v9, v7, v10, p0}, LV/J;->a(LR/s;Lsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object p1

    sget-object v7, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p1, v7, :cond_2

    goto :goto_4

    :cond_2
    move-object p1, v2

    :goto_4
    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_5
    invoke-interface {v3}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LS/t;

    iget-object v1, v1, Ltb/w;->a:Ljava/lang/Object;

    instance-of v7, v1, LS/n;

    if-eqz v7, :cond_6

    const-string v7, "null cannot be cast to non-null type androidx.compose.foundation.gestures.DragEvent.DragStopped"

    invoke-static {v1, v7}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, LS/n;

    iput-object v6, p0, LS/z;->d:Ljava/lang/Object;

    iput-object v5, p0, LS/z;->a:Ltb/w;

    const/4 v7, 0x4

    iput v7, p0, LS/z;->c:I

    invoke-virtual {p1, v6, v1, p0}, LS/t;->c(LNc/B;LS/n;Lkb/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v1, v6

    :cond_5
    :goto_6
    move-object p1, v1

    goto/16 :goto_1

    :cond_6
    instance-of v1, v1, LS/k;

    if-eqz v1, :cond_7

    iput-object v6, p0, LS/z;->d:Ljava/lang/Object;

    iput-object v5, p0, LS/z;->a:Ltb/w;

    const/4 v1, 0x5

    iput v1, p0, LS/z;->c:I

    invoke-virtual {p1, v6, p0}, LS/t;->a(LNc/B;Lkb/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_7
    move-object p1, v6

    goto/16 :goto_1

    :catch_1
    :goto_7
    invoke-interface {v3}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LS/t;

    iput-object v1, p0, LS/z;->d:Ljava/lang/Object;

    iput-object v5, p0, LS/z;->a:Ltb/w;

    const/4 v6, 0x6

    iput v6, p0, LS/z;->c:I

    invoke-virtual {p1, v1, p0}, LS/t;->a(LNc/B;Lkb/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_8
    move-object p1, v7

    goto/16 :goto_1

    :cond_9
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
