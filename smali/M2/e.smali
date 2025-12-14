.class public final LM2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ2/m0;
.implements LL2/x;


# instance fields
.field public final a:LM2/a;


# direct methods
.method public constructor <init>(LM2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM2/e;->a:LM2/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lsb/k;Lkb/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LM2/e;->a:LM2/a;

    invoke-virtual {p0, p1}, LM2/a;->a(Ljava/lang/String;)LM2/h;

    move-result-object p0

    :try_start_0
    invoke-interface {p2, p0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    invoke-static {p0, p2}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p0, p1}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final b(Lkb/i;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LM2/e;->a:LM2/a;

    iget-object p0, p0, LM2/a;->a:LT2/a;

    invoke-interface {p0}, LT2/a;->p0()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final c()LS2/a;
    .locals 0

    iget-object p0, p0, LM2/e;->a:LM2/a;

    return-object p0
.end method

.method public final d(LJ2/l0;Lsb/n;Lkb/i;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LM2/e;->e(LJ2/l0;Lsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e(LJ2/l0;Lsb/n;Lkb/c;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, LM2/d;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, LM2/d;

    iget v1, v0, LM2/d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LM2/d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, LM2/d;

    invoke-direct {v0, p0, p3}, LM2/d;-><init>(LM2/e;Lkb/c;)V

    :goto_0
    iget-object p3, v0, LM2/d;->c:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LM2/d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, LM2/d;->b:LT2/a;

    iget-object p1, v0, LM2/d;->a:LM2/e;

    :try_start_0
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p3, p0, LM2/e;->a:LM2/a;

    iget-object p3, p3, LM2/a;->a:LT2/a;

    invoke-interface {p3}, LT2/a;->p0()Z

    sget-object v2, LM2/c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v3, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    invoke-interface {p3}, LT2/a;->n()V

    goto :goto_1

    :cond_3
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_4
    invoke-interface {p3}, LT2/a;->z()V

    goto :goto_1

    :cond_5
    invoke-interface {p3}, LT2/a;->a0()V

    :goto_1
    :try_start_1
    new-instance p1, LL2/p;

    const/4 v2, 0x1

    invoke-direct {p1, v2, p0}, LL2/p;-><init>(ILjava/lang/Object;)V

    iput-object p0, v0, LM2/d;->a:LM2/e;

    iput-object p3, v0, LM2/d;->b:LT2/a;

    iput v3, v0, LM2/d;->e:I

    invoke-interface {p2, p1, v0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v4, p1

    move-object p1, p0

    move-object p0, p3

    move-object p3, v4

    :goto_2
    :try_start_2
    invoke-interface {p0}, LT2/a;->y()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p0}, LT2/a;->F()V

    invoke-interface {p0}, LT2/a;->p0()Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_7
    return-object p3

    :catchall_1
    move-exception p2

    move-object p1, p0

    move-object p0, p3

    :goto_3
    invoke-interface {p0}, LT2/a;->F()V

    invoke-interface {p0}, LT2/a;->p0()Z

    move-result p0

    if-nez p0, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_8
    throw p2
.end method
