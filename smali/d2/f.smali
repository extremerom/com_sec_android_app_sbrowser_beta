.class public final Ld2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/a;


# static fields
.field public static final a:Ld2/f;

.field public static final b:LYc/d;

.field public static final c:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld2/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ld2/f;->a:Ld2/f;

    invoke-static {}, LYc/e;->a()LYc/d;

    move-result-object v0

    sput-object v0, Ld2/f;->b:LYc/d;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ld2/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ld2/g;Ljava/lang/String;Lkb/c;)Ljava/lang/Object;
    .locals 8

    const-string v0, " State is deleted"

    instance-of v1, p4, Ld2/b;

    if-eqz v1, :cond_0

    move-object v1, p4

    check-cast v1, Ld2/b;

    iget v2, v1, Ld2/b;->g:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Ld2/b;->g:I

    goto :goto_0

    :cond_0
    new-instance v1, Ld2/b;

    invoke-direct {v1, p0, p4}, Ld2/b;-><init>(Ld2/f;Lkb/c;)V

    :goto_0
    iget-object p0, v1, Ld2/b;->e:Ljava/lang/Object;

    sget-object p4, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v1, Ld2/b;->g:I

    sget-object v3, Ldb/r;->a:Ldb/r;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v1, Ld2/b;->d:LYc/a;

    :try_start_0
    invoke-static {p0}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, v1, Ld2/b;->d:LYc/a;

    iget-object p3, v1, Ld2/b;->c:Ljava/lang/String;

    iget-object p2, v1, Ld2/b;->b:Ld2/g;

    iget-object v2, v1, Ld2/b;->a:Landroid/content/Context;

    invoke-static {p0}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object p0, p1

    move-object p1, v2

    goto :goto_1

    :cond_3
    invoke-static {p0}, LG5/A2;->f(Ljava/lang/Object;)V

    iput-object p1, v1, Ld2/b;->a:Landroid/content/Context;

    iput-object p2, v1, Ld2/b;->b:Ld2/g;

    iput-object p3, v1, Ld2/b;->c:Ljava/lang/String;

    sget-object p0, Ld2/f;->b:LYc/d;

    iput-object p0, v1, Ld2/b;->d:LYc/a;

    iput v5, v1, Ld2/b;->g:I

    invoke-virtual {p0, v1}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p4, :cond_4

    return-object p4

    :cond_4
    :goto_1
    :try_start_1
    iput-object p1, v1, Ld2/b;->a:Landroid/content/Context;

    iput-object p2, v1, Ld2/b;->b:Ld2/g;

    iput-object p3, v1, Ld2/b;->c:Ljava/lang/String;

    iput-object p0, v1, Ld2/b;->d:LYc/a;

    iput v4, v1, Ld2/b;->g:I

    new-instance v2, LNc/k;

    invoke-static {v1}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object v1

    invoke-direct {v2, v5, v1}, LNc/k;-><init>(ILib/c;)V

    invoke-virtual {v2}, LNc/k;->q()V

    sget-object v1, Ld2/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1, p3}, Ld2/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v4, LPc/w;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, LPc/w;-><init>(LNc/k;I)V

    invoke-virtual {v2, v4}, LNc/k;->t(Lsb/k;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const-string v1, "GWT:GlanceStateDefinition"

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "msg"

    invoke-static {v0, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Le7/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p2, Ld2/j;

    if-eqz v0, :cond_5

    check-cast p2, Ld2/j;

    invoke-static {p1, p3}, Ld2/j;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {v2, v3}, LNc/k;->resumeWith(Ljava/lang/Object;)V

    invoke-virtual {v2}, LNc/k;->p()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, p4, :cond_6

    return-object p4

    :cond_6
    move-object p1, p0

    :goto_4
    invoke-interface {p1, v6}, LYc/a;->b(Ljava/lang/Object;)V

    return-object v3

    :goto_5
    invoke-interface {p1, v6}, LYc/a;->b(Ljava/lang/Object;)V

    throw p0
.end method

.method public final b(Landroid/content/Context;Ld2/g;Ljava/lang/String;Lkb/c;)Ljava/lang/Object;
    .locals 10

    const-string v0, "getDataStore: "

    instance-of v1, p4, Ld2/c;

    if-eqz v1, :cond_0

    move-object v1, p4

    check-cast v1, Ld2/c;

    iget v2, v1, Ld2/c;->g:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Ld2/c;->g:I

    goto :goto_0

    :cond_0
    new-instance v1, Ld2/c;

    invoke-direct {v1, p0, p4}, Ld2/c;-><init>(Ld2/f;Lkb/c;)V

    :goto_0
    iget-object p0, v1, Ld2/c;->e:Ljava/lang/Object;

    sget-object p4, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v1, Ld2/c;->g:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v1, Ld2/c;->c:Ljava/io/Serializable;

    check-cast p1, Ljava/util/concurrent/ConcurrentMap;

    iget-object p2, v1, Ld2/c;->b:Ljava/lang/Object;

    check-cast p2, LYc/a;

    iget-object p3, v1, Ld2/c;->a:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    :try_start_0
    invoke-static {p0}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, v1, Ld2/c;->c:Ljava/io/Serializable;

    check-cast p1, Ljava/util/concurrent/ConcurrentMap;

    iget-object p2, v1, Ld2/c;->b:Ljava/lang/Object;

    check-cast p2, LYc/a;

    iget-object p3, v1, Ld2/c;->a:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    :try_start_1
    invoke-static {p0}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :cond_3
    iget-object p1, v1, Ld2/c;->d:LYc/a;

    iget-object p2, v1, Ld2/c;->c:Ljava/io/Serializable;

    move-object p3, p2

    check-cast p3, Ljava/lang/String;

    iget-object p2, v1, Ld2/c;->b:Ljava/lang/Object;

    check-cast p2, Ld2/g;

    iget-object v2, v1, Ld2/c;->a:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-static {p0}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object p0, p1

    move-object p1, v2

    goto :goto_1

    :cond_4
    invoke-static {p0}, LG5/A2;->f(Ljava/lang/Object;)V

    iput-object p1, v1, Ld2/c;->a:Ljava/lang/Object;

    iput-object p2, v1, Ld2/c;->b:Ljava/lang/Object;

    iput-object p3, v1, Ld2/c;->c:Ljava/io/Serializable;

    sget-object p0, Ld2/f;->b:LYc/d;

    iput-object p0, v1, Ld2/c;->d:LYc/a;

    iput v5, v1, Ld2/c;->g:I

    invoke-virtual {p0, v1}, LYc/d;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p4, :cond_5

    return-object p4

    :cond_5
    :goto_1
    :try_start_2
    const-string v2, "GWT:GlanceStateDefinition"

    sget-object v5, Ld2/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    instance-of v8, p2, Ld2/j;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", file exist: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", PreferenceStateDefinition type: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "msg"

    invoke-static {v0, v7}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Le7/a;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    instance-of v0, p2, Ld2/j;

    if-eqz v0, :cond_7

    check-cast p2, Ld2/j;

    iput-object p3, v1, Ld2/c;->a:Ljava/lang/Object;

    iput-object p0, v1, Ld2/c;->b:Ljava/lang/Object;

    iput-object v5, v1, Ld2/c;->c:Ljava/io/Serializable;

    iput-object v6, v1, Ld2/c;->d:LYc/a;

    iput v4, v1, Ld2/c;->g:I

    invoke-virtual {p2, p1, p3, v1}, Ld2/j;->e(Landroid/content/Context;Ljava/lang/String;Ld2/c;)Lp1/d;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p1, p4, :cond_6

    return-object p4

    :cond_6
    move-object p2, p0

    move-object p0, p1

    move-object p1, v5

    :goto_2
    :try_start_3
    check-cast p0, Lm1/h;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :goto_3
    move-object p2, p0

    move-object p0, p1

    goto :goto_7

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_7
    :try_start_4
    iput-object p3, v1, Ld2/c;->a:Ljava/lang/Object;

    iput-object p0, v1, Ld2/c;->b:Ljava/lang/Object;

    iput-object v5, v1, Ld2/c;->c:Ljava/io/Serializable;

    iput-object v6, v1, Ld2/c;->d:LYc/a;

    iput v3, v1, Ld2/c;->g:I

    invoke-interface {p2, p1, p3}, Ld2/g;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne p1, p4, :cond_8

    return-object p4

    :cond_8
    move-object p2, p0

    move-object p0, p1

    move-object p1, v5

    :goto_4
    :try_start_5
    check-cast p0, Lm1/h;

    :goto_5
    invoke-interface {p1, p3, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9

    move-object v0, p0

    goto :goto_6

    :cond_9
    move-object v0, p1

    goto :goto_6

    :cond_a
    move-object p2, p0

    :goto_6
    const-string p0, "null cannot be cast to non-null type androidx.datastore.core.DataStore<T of androidx.glance.state.GlanceState.getDataStore$lambda$3>"

    invoke-static {v0, p0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lm1/h;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-interface {p2, v6}, LYc/a;->b(Ljava/lang/Object;)V

    return-object v0

    :goto_7
    invoke-interface {p2, v6}, LYc/a;->b(Ljava/lang/Object;)V

    throw p0
.end method

.method public final c(Landroid/content/Context;Ld2/g;Ljava/lang/String;Lkb/c;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p4, Ld2/d;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Ld2/d;

    iget v1, v0, Ld2/d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ld2/d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Ld2/d;

    invoke-direct {v0, p0, p4}, Ld2/d;-><init>(Ld2/f;Lkb/c;)V

    :goto_0
    iget-object p4, v0, Ld2/d;->c:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Ld2/d;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p3, v0, Ld2/d;->b:Ljava/lang/String;

    iget-object p2, v0, Ld2/d;->a:Ld2/g;

    :try_start_0
    invoke-static {p4}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p3, v0, Ld2/d;->b:Ljava/lang/String;

    iget-object p2, v0, Ld2/d;->a:Ld2/g;

    :try_start_1
    invoke-static {p4}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    invoke-static {p4}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_2
    iput-object p2, v0, Ld2/d;->a:Ld2/g;

    iput-object p3, v0, Ld2/d;->b:Ljava/lang/String;

    iput v4, v0, Ld2/d;->e:I

    invoke-virtual {p0, p1, p2, p3, v0}, Ld2/f;->b(Landroid/content/Context;Ld2/g;Ljava/lang/String;Lkb/c;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p4, Lm1/h;

    invoke-interface {p4}, Lm1/h;->getData()LQc/h;

    move-result-object p0

    iput-object p2, v0, Ld2/d;->a:Ld2/g;

    iput-object p3, v0, Ld2/d;->b:Ljava/lang/String;

    iput v3, v0, Ld2/d;->e:I

    invoke-static {p0, v0}, LQc/n0;->n(LQc/h;Lib/c;)Ljava/lang/Object;

    move-result-object p4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne p4, v1, :cond_5

    return-object v1

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "Error "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " occurred while reading data from "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " DataStore"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "msg"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Le7/a;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GWT:GlanceStateDefinition"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Ld2/g;->c()Ljava/lang/Object;

    move-result-object p4

    :cond_5
    :goto_3
    return-object p4
.end method

.method public final d(Landroid/content/Context;Ld2/g;Ljava/lang/String;Lsb/n;Lkb/c;)Ljava/lang/Object;
    .locals 9

    const-string v0, "updateValue "

    instance-of v1, p5, Ld2/e;

    if-eqz v1, :cond_0

    move-object v1, p5

    check-cast v1, Ld2/e;

    iget v2, v1, Ld2/e;->f:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Ld2/e;->f:I

    goto :goto_0

    :cond_0
    new-instance v1, Ld2/e;

    invoke-direct {v1, p0, p5}, Ld2/e;-><init>(Ld2/f;Lkb/c;)V

    :goto_0
    iget-object p5, v1, Ld2/e;->d:Ljava/lang/Object;

    sget-object v2, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v3, v1, Ld2/e;->f:I

    const-string v4, "msg"

    const-string v5, "GWT:GlanceStateDefinition"

    const/4 v6, 0x2

    const/4 v7, 0x1

    const-string v8, " "

    if-eqz v3, :cond_3

    if-eq v3, v7, :cond_2

    if-ne v3, v6, :cond_1

    iget-object p3, v1, Ld2/e;->b:Ljava/lang/String;

    iget-object p2, v1, Ld2/e;->a:Ld2/g;

    :try_start_0
    invoke-static {p5}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p4, v1, Ld2/e;->c:Lsb/n;

    iget-object p3, v1, Ld2/e;->b:Ljava/lang/String;

    iget-object p2, v1, Ld2/e;->a:Ld2/g;

    :try_start_1
    invoke-static {p5}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    invoke-static {p5}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_2
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Le7/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v5, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, v1, Ld2/e;->a:Ld2/g;

    iput-object p3, v1, Ld2/e;->b:Ljava/lang/String;

    iput-object p4, v1, Ld2/e;->c:Lsb/n;

    iput v7, v1, Ld2/e;->f:I

    invoke-virtual {p0, p1, p2, p3, v1}, Ld2/f;->b(Landroid/content/Context;Ld2/g;Ljava/lang/String;Lkb/c;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v2, :cond_4

    return-object v2

    :cond_4
    :goto_1
    check-cast p5, Lm1/h;

    iput-object p2, v1, Ld2/e;->a:Ld2/g;

    iput-object p3, v1, Ld2/e;->b:Ljava/lang/String;

    const/4 p0, 0x0

    iput-object p0, v1, Ld2/e;->c:Lsb/n;

    iput v6, v1, Ld2/e;->f:I

    invoke-interface {p5, p4, v1}, Lm1/h;->a(Lsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object p5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne p5, v2, :cond_5

    return-object v2

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "Error "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " occurred while update data from "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " DataStore"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Le7/a;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Ld2/g;->c()Ljava/lang/Object;

    move-result-object p5

    :cond_5
    :goto_3
    return-object p5
.end method
