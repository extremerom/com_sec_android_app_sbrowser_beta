.class public abstract Lc2/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:LPc/i;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2/m;->a:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lc2/m;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x6

    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, LG5/r;->a(IILPc/a;)LPc/i;

    move-result-object p1

    iput-object p1, p0, Lc2/m;->c:LPc/i;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "close: this="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le7/a;->a:Ljava/lang/String;

    const-string v2, " "

    const-string v3, "GWT:GlanceSession"

    invoke-static {v1, v2, v0, v3}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lc2/m;->c:LPc/i;

    invoke-virtual {v1, v0}, LPc/i;->f(Ljava/lang/Throwable;)Z

    iget-object v0, p0, Lc2/m;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lc2/m;->c()V

    return-void
.end method

.method public abstract b()Lz1/Q0;
.end method

.method public abstract c()V
.end method

.method public d(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 0

    const-string p0, "tr"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Le7/a;->a:Ljava/lang/String;

    const-string p1, " Error running composition"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "GWT:GlanceSession"

    invoke-static {p1, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public abstract e(Landroid/content/Context;Lx1/n;Lib/c;)Ljava/lang/Object;
.end method

.method public abstract f(Landroid/content/Context;Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
.end method

.method public abstract g(Landroid/content/Context;)Li0/a;
.end method

.method public final h(Landroid/content/Context;Lsb/k;Lkb/c;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const-string v2, "receiveEvents : "

    instance-of v3, v0, Lc2/k;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lc2/k;

    iget v4, v3, Lc2/k;->g:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lc2/k;->g:I

    goto :goto_0

    :cond_0
    new-instance v3, Lc2/k;

    invoke-direct {v3, v1, v0}, Lc2/k;-><init>(Lc2/m;Lkb/c;)V

    :goto_0
    iget-object v0, v3, Lc2/k;->e:Ljava/lang/Object;

    sget-object v4, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v5, v3, Lc2/k;->g:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    const-string v8, " "

    const-string v9, "msg"

    const-string v10, "GWT:GlanceSession"

    if-eqz v5, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v1, v3, Lc2/k;->d:LPc/b;

    iget-object v2, v3, Lc2/k;->c:Lsb/k;

    iget-object v5, v3, Lc2/k;->b:Landroid/content/Context;

    iget-object v11, v3, Lc2/k;->a:Lc2/m;

    :try_start_0
    invoke-static {v0}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch LPc/r; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    move-object v5, v3

    move-object v3, v1

    move-object v1, v11

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v11

    goto/16 :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, v3, Lc2/k;->d:LPc/b;

    iget-object v2, v3, Lc2/k;->c:Lsb/k;

    iget-object v5, v3, Lc2/k;->b:Landroid/content/Context;

    iget-object v11, v3, Lc2/k;->a:Lc2/m;

    :try_start_1
    invoke-static {v0}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_1
    .catch LPc/r; {:try_start_1 .. :try_end_1} :catch_0

    move-object v15, v3

    move-object v3, v1

    move-object v1, v11

    move-object v11, v5

    move-object v5, v15

    goto :goto_2

    :cond_3
    invoke-static {v0}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v0, v1, Lc2/m;->c:LPc/i;

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Le7/a;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LPc/b;

    invoke-direct {v2, v0}, LPc/b;-><init>(LPc/i;)V

    move-object/from16 v0, p1

    move-object v5, v3

    move-object v3, v2

    move-object/from16 v2, p2

    :goto_1
    iput-object v1, v5, Lc2/k;->a:Lc2/m;

    iput-object v0, v5, Lc2/k;->b:Landroid/content/Context;

    iput-object v2, v5, Lc2/k;->c:Lsb/k;

    iput-object v3, v5, Lc2/k;->d:LPc/b;

    iput v7, v5, Lc2/k;->g:I

    invoke-virtual {v3, v5}, LPc/b;->b(Lkb/c;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v4, :cond_4

    return-object v4

    :cond_4
    move-object v15, v11

    move-object v11, v0

    move-object v0, v15

    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, LPc/b;->c()Ljava/lang/Object;

    move-result-object v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "receiveEvent: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v13, Le7/a;->a:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v5, Lc2/k;->a:Lc2/m;

    iput-object v11, v5, Lc2/k;->b:Landroid/content/Context;

    iput-object v2, v5, Lc2/k;->c:Lsb/k;

    iput-object v3, v5, Lc2/k;->d:LPc/b;

    iput v6, v5, Lc2/k;->g:I

    invoke-virtual {v1, v11, v0, v5}, Lc2/m;->f(Landroid/content/Context;Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch LPc/r; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v0, v4, :cond_5

    return-object v4

    :cond_5
    move-object v0, v11

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "receiveEvents: this="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ex="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le7/a;->a:Ljava/lang/String;

    invoke-static {v1, v8, v0, v10}, Lw2/j;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0
.end method

.method public final i(Ljava/lang/Object;Lkb/c;)Ljava/lang/Object;
    .locals 10

    const-string v0, "sendEvent:"

    instance-of v1, p2, Lc2/l;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lc2/l;

    iget v2, v1, Lc2/l;->d:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lc2/l;->d:I

    goto :goto_0

    :cond_0
    new-instance v1, Lc2/l;

    invoke-direct {v1, p0, p2}, Lc2/l;-><init>(Lc2/m;Lkb/c;)V

    :goto_0
    iget-object p2, v1, Lc2/l;->b:Ljava/lang/Object;

    sget-object v2, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v3, v1, Lc2/l;->d:I

    const-string v4, " "

    const-string v5, "msg"

    const-string v6, "GWT:GlanceSession"

    const/4 v7, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v7, :cond_1

    iget-object p0, v1, Lc2/l;->a:Lc2/m;

    :try_start_0
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch LPc/s; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p2, p0, Lc2/m;->c:LPc/i;

    :try_start_1
    invoke-virtual {p2}, LPc/i;->z()Z

    move-result v3

    invoke-virtual {p2}, LPc/i;->y()Z

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", eventChannel:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Le7/a;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, v1, Lc2/l;->a:Lc2/m;

    iput v7, v1, Lc2/l;->d:I

    invoke-interface {p2, v1, p1}, LPc/B;->g(Lib/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch LPc/s; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v2, :cond_3

    return-object v2

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "sendEvent: this="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " ex="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Le7/a;->a:Ljava/lang/String;

    invoke-static {p1, v4, p0, v6}, Lw2/j;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
