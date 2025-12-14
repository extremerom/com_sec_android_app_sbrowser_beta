.class public final LQc/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/i;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LPc/y;


# direct methods
.method public synthetic constructor <init>(LPc/y;I)V
    .locals 0

    iput p2, p0, LQc/q;->a:I

    iput-object p1, p0, LQc/q;->b:LPc/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, LQc/q;->a:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p2, LRc/y;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LRc/y;

    iget v1, v0, LRc/y;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LRc/y;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, LRc/y;

    invoke-direct {v0, p0, p2}, LRc/y;-><init>(LQc/q;Lib/c;)V

    :goto_0
    iget-object p2, v0, LRc/y;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LRc/y;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p0, p0, LQc/q;->b:LPc/y;

    check-cast p0, LPc/x;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_3

    sget-object p1, LRc/c;->b:LQ6/i;

    :cond_3
    iput v3, v0, LRc/y;->c:I

    iget-object p0, p0, LPc/x;->d:LPc/i;

    invoke-interface {p0, v0, p1}, LPc/B;->g(Lib/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_2
    return-object v1

    :pswitch_0
    instance-of v0, p2, LQc/p;

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, LQc/p;

    iget v1, v0, LQc/p;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_5

    sub-int/2addr v1, v2

    iput v1, v0, LQc/p;->c:I

    goto :goto_3

    :cond_5
    new-instance v0, LQc/p;

    invoke-direct {v0, p0, p2}, LQc/p;-><init>(LQc/q;Lib/c;)V

    :goto_3
    iget-object p2, v0, LQc/p;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LQc/p;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    if-ne v2, v3, :cond_6

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    if-nez p1, :cond_8

    sget-object p1, LRc/c;->b:LQ6/i;

    :cond_8
    iput v3, v0, LQc/p;->c:I

    iget-object p0, p0, LQc/q;->b:LPc/y;

    check-cast p0, LPc/x;

    iget-object p0, p0, LPc/x;->d:LPc/i;

    invoke-interface {p0, v0, p1}, LPc/B;->g(Lib/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    goto :goto_5

    :cond_9
    :goto_4
    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_5
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
