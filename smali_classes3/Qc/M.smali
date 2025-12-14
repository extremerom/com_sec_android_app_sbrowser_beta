.class public final LQc/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/i;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lkb/i;

.field public final synthetic c:Ltb/w;


# direct methods
.method public constructor <init>(Lsb/n;Ltb/w;I)V
    .locals 0

    iput p3, p0, LQc/M;->a:I

    packed-switch p3, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lkb/i;

    iput-object p1, p0, LQc/M;->b:Lkb/i;

    iput-object p2, p0, LQc/M;->c:Ltb/w;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lkb/i;

    iput-object p1, p0, LQc/M;->b:Lkb/i;

    iput-object p2, p0, LQc/M;->c:Ltb/w;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, LQc/M;->a:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p2, LQc/P;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LQc/P;

    iget v1, v0, LQc/P;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LQc/P;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, LQc/P;

    invoke-direct {v0, p0, p2}, LQc/P;-><init>(LQc/M;Lib/c;)V

    :goto_0
    iget-object p2, v0, LQc/P;->b:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LQc/P;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, LQc/P;->e:Ljava/lang/Object;

    iget-object p0, v0, LQc/P;->a:LQc/M;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iput-object p0, v0, LQc/P;->a:LQc/M;

    iput-object p1, v0, LQc/P;->e:Ljava/lang/Object;

    iput v3, v0, LQc/P;->c:I

    iget-object p2, p0, LQc/M;->b:Lkb/i;

    invoke-interface {p2, p1, v0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_4

    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_2
    return-object v1

    :cond_4
    iget-object p2, p0, LQc/M;->c:Ltb/w;

    iput-object p1, p2, Ltb/w;->a:Ljava/lang/Object;

    new-instance p1, LRc/a;

    invoke-direct {p1, p0}, LRc/a;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    instance-of v0, p2, LQc/L;

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, LQc/L;

    iget v1, v0, LQc/L;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_5

    sub-int/2addr v1, v2

    iput v1, v0, LQc/L;->c:I

    goto :goto_3

    :cond_5
    new-instance v0, LQc/L;

    invoke-direct {v0, p0, p2}, LQc/L;-><init>(LQc/M;Lib/c;)V

    :goto_3
    iget-object p2, v0, LQc/L;->b:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LQc/L;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    if-ne v2, v3, :cond_6

    iget-object p1, v0, LQc/L;->e:Ljava/lang/Object;

    iget-object p0, v0, LQc/L;->a:LQc/M;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iput-object p0, v0, LQc/L;->a:LQc/M;

    iput-object p1, v0, LQc/L;->e:Ljava/lang/Object;

    iput v3, v0, LQc/L;->c:I

    iget-object p2, p0, LQc/M;->b:Lkb/i;

    invoke-interface {p2, p1, v0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    goto :goto_5

    :cond_8
    :goto_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_9

    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_5
    return-object v1

    :cond_9
    iget-object p2, p0, LQc/M;->c:Ltb/w;

    iput-object p1, p2, Ltb/w;->a:Ljava/lang/Object;

    new-instance p1, LRc/a;

    invoke-direct {p1, p0}, LRc/a;-><init>(Ljava/lang/Object;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
