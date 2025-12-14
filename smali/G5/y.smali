.class public abstract LG5/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LA4/a;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, LA4/a;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    return-void
.end method

.method public static final a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p1, p0}, LG5/y2;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final l(Lkb/c;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p0, Lc2/c;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lc2/c;

    iget v1, v0, Lc2/c;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc2/c;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc2/c;

    invoke-direct {v0, p0}, Lkb/c;-><init>(Lib/c;)V

    :goto_0
    iget-object p0, v0, Lc2/c;->e:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lc2/c;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    iget-object v2, v0, Lc2/c;->d:LPc/b;

    iget-object v6, v0, Lc2/c;->c:LPc/A;

    iget-object v7, v0, Lc2/c;->b:Lk0/g;

    iget-object v8, v0, Lc2/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    :try_start_0
    invoke-static {p0}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p0}, LG5/A2;->f(Ljava/lang/Object;)V

    const/4 p0, 0x6

    invoke-static {v5, p0, v4}, LG5/r;->a(IILPc/a;)LPc/i;

    move-result-object v6

    new-instance p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v2, LZ1/o;

    const/4 v7, 0x1

    invoke-direct {v2, p0, v6, v7}, LZ1/o;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;LPc/i;I)V

    sget-object v7, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter v7

    :try_start_1
    sget-object v8, Lk0/n;->h:Ljava/lang/Object;

    check-cast v8, Ljava/util/Collection;

    invoke-static {v8, v2}, Lfb/n;->S(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    sput-object v8, Lk0/n;->h:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    monitor-exit v7

    invoke-static {}, Lk0/n;->a()V

    new-instance v7, Lk0/g;

    invoke-direct {v7, v2}, Lk0/g;-><init>(Lsb/k;)V

    :try_start_2
    new-instance v2, LPc/b;

    invoke-direct {v2, v6}, LPc/b;-><init>(LPc/i;)V

    move-object v8, p0

    :cond_3
    :goto_1
    iput-object v8, v0, Lc2/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v7, v0, Lc2/c;->b:Lk0/g;

    iput-object v6, v0, Lc2/c;->c:LPc/A;

    iput-object v2, v0, Lc2/c;->d:LPc/b;

    iput v5, v0, Lc2/c;->f:I

    invoke-virtual {v2, v0}, LPc/b;->b(Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v2}, LPc/b;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldb/r;

    invoke-virtual {v8, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p0, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v9, Lk0/n;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lk0/b;

    iget-object v9, v9, Lk0/c;->h:LN/v;

    if-eqz v9, :cond_5

    invoke-virtual {v9}, LN/v;->h()Z

    move-result v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v9, v5, :cond_5

    move v9, v5

    goto :goto_3

    :cond_5
    move v9, v3

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :goto_3
    :try_start_4
    monitor-exit p0

    if-eqz v9, :cond_3

    invoke-static {}, Lk0/n;->a()V

    goto :goto_1

    :goto_4
    monitor-exit p0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    :try_start_5
    invoke-interface {v6, v4}, LPc/A;->a(Ljava/util/concurrent/CancellationException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-virtual {v7}, Lk0/g;->a()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :goto_5
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_7
    invoke-static {v6, p0}, LG5/s;->a(LPc/A;Ljava/lang/Throwable;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    invoke-virtual {v7}, Lk0/g;->a()V

    throw p0

    :catchall_4
    move-exception p0

    monitor-exit v7

    throw p0
.end method

.method public static final m(LAb/b;)Z
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, LAb/j;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, LAb/u;

    invoke-static {v0}, LG5/A;->b(LAb/u;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_14

    invoke-interface {v0}, LAb/u;->b()LAb/n;

    move-result-object v0

    invoke-static {v0}, LG5/A;->c(LAb/f;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_14

    check-cast p0, LAb/j;

    invoke-interface {p0}, LAb/j;->c()LAb/g;

    move-result-object p0

    invoke-static {p0}, LG5/A;->c(LAb/f;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result p0

    goto :goto_2

    :cond_2
    move p0, v2

    :goto_2
    if-eqz p0, :cond_14

    :goto_3
    move v1, v2

    goto/16 :goto_10

    :cond_3
    instance-of v0, p0, LAb/u;

    if-eqz v0, :cond_6

    check-cast p0, LAb/u;

    invoke-static {p0}, LG5/A;->b(LAb/u;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    if-eqz v0, :cond_14

    invoke-interface {p0}, LAb/u;->b()LAb/n;

    move-result-object p0

    invoke-static {p0}, LG5/A;->c(LAb/f;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result p0

    goto :goto_5

    :cond_5
    move p0, v2

    :goto_5
    if-eqz p0, :cond_14

    goto :goto_3

    :cond_6
    instance-of v0, p0, LAb/n;

    if-eqz v0, :cond_9

    move-object v0, p0

    check-cast v0, LAb/n;

    invoke-interface {v0}, LAb/m;->a()LAb/u;

    move-result-object v0

    invoke-static {v0}, LG5/A;->b(LAb/u;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    goto :goto_6

    :cond_7
    move v0, v2

    :goto_6
    if-eqz v0, :cond_14

    check-cast p0, LAb/f;

    invoke-static {p0}, LG5/A;->c(LAb/f;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result p0

    goto :goto_7

    :cond_8
    move p0, v2

    :goto_7
    if-eqz p0, :cond_14

    goto :goto_3

    :cond_9
    instance-of v0, p0, LAb/g;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, LAb/g;

    invoke-interface {v0}, LAb/m;->a()LAb/u;

    move-result-object v0

    invoke-static {v0}, LG5/A;->b(LAb/u;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    goto :goto_8

    :cond_a
    move v0, v2

    :goto_8
    if-eqz v0, :cond_14

    check-cast p0, LAb/f;

    invoke-static {p0}, LG5/A;->c(LAb/f;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result p0

    goto :goto_9

    :cond_b
    move p0, v2

    :goto_9
    if-eqz p0, :cond_14

    goto :goto_3

    :cond_c
    instance-of v0, p0, LAb/f;

    if-eqz v0, :cond_15

    move-object v0, p0

    check-cast v0, LAb/f;

    invoke-static {v0}, LG5/A;->c(LAb/f;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v3

    goto :goto_a

    :cond_d
    move v3, v2

    :goto_a
    if-eqz v3, :cond_14

    invoke-static {p0}, LDb/I0;->a(LAb/b;)LDb/s;

    move-result-object p0

    const/4 v3, 0x0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, LDb/s;->f()LEb/g;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-interface {p0}, LEb/g;->r()Ljava/lang/reflect/Member;

    move-result-object p0

    goto :goto_b

    :cond_e
    move-object p0, v3

    :goto_b
    instance-of v4, p0, Ljava/lang/reflect/AccessibleObject;

    if-eqz v4, :cond_f

    check-cast p0, Ljava/lang/reflect/AccessibleObject;

    goto :goto_c

    :cond_f
    move-object p0, v3

    :goto_c
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result p0

    goto :goto_d

    :cond_10
    move p0, v2

    :goto_d
    if-eqz p0, :cond_14

    invoke-static {v0}, LDb/I0;->a(LAb/b;)LDb/s;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-virtual {p0}, LDb/s;->d()LEb/g;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-interface {p0}, LEb/g;->r()Ljava/lang/reflect/Member;

    move-result-object p0

    goto :goto_e

    :cond_11
    move-object p0, v3

    :goto_e
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_12

    move-object v3, p0

    check-cast v3, Ljava/lang/reflect/Constructor;

    :cond_12
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result p0

    goto :goto_f

    :cond_13
    move p0, v2

    :goto_f
    if-eqz p0, :cond_14

    goto/16 :goto_3

    :cond_14
    :goto_10
    return v1

    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown callable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public b(FF)I
    .locals 1

    invoke-virtual {p0}, LG5/y;->j()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_3

    invoke-virtual {p0}, LG5/y;->f()F

    move-result p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    sget p0, LM1/b;->b:I

    const/16 p0, 0x40

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LG5/y;->e()F

    move-result p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1

    sget p0, LM1/b;->b:I

    const/16 p0, 0x20

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LG5/y;->d()F

    move-result p0

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_2

    sget p0, LM1/b;->b:I

    const/16 p0, 0x10

    goto :goto_0

    :cond_2
    sget p0, LM1/b;->b:I

    const/4 p0, 0x4

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, LG5/y;->i()F

    move-result v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_5

    invoke-virtual {p0}, LG5/y;->d()F

    move-result p0

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_4

    sget p0, LM1/b;->b:I

    const/16 p0, 0x8

    goto :goto_0

    :cond_4
    sget p0, LM1/b;->b:I

    const/4 p0, 0x2

    goto :goto_0

    :cond_5
    sget p0, LM1/b;->b:I

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public abstract c()F
.end method

.method public abstract d()F
.end method

.method public abstract e()F
.end method

.method public abstract f()F
.end method

.method public abstract g()F
.end method

.method public abstract h()F
.end method

.method public abstract i()F
.end method

.method public abstract j()F
.end method

.method public abstract k()F
.end method
