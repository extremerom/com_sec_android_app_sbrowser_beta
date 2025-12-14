.class public final LD4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ4/b;
.implements Lac/n;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LO9/a;Lcb/a;Lcb/a;Lo3/t;Lcb/a;Lcb/a;Lcb/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD4/d;->a:Ljava/lang/Object;

    iput-object p2, p0, LD4/d;->b:Ljava/lang/Object;

    iput-object p3, p0, LD4/d;->c:Ljava/lang/Object;

    iput-object p4, p0, LD4/d;->d:Ljava/lang/Object;

    iput-object p5, p0, LD4/d;->e:Ljava/lang/Object;

    iput-object p6, p0, LD4/d;->f:Ljava/lang/Object;

    iput-object p7, p0, LD4/d;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LQ9/a;LJb/f;Lhc/b;Ljava/util/List;LJb/S;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD4/d;->c:Ljava/lang/Object;

    iput-object p2, p0, LD4/d;->d:Ljava/lang/Object;

    iput-object p3, p0, LD4/d;->e:Ljava/lang/Object;

    iput-object p4, p0, LD4/d;->f:Ljava/lang/Object;

    iput-object p5, p0, LD4/d;->g:Ljava/lang/Object;

    iput-object p1, p0, LD4/d;->a:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LD4/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LU/q;Lsb/q;FLU/A;LG5/x2;Ljava/util/List;[Lz0/G;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD4/d;->a:Ljava/lang/Object;

    check-cast p2, Ltb/m;

    iput-object p2, p0, LD4/d;->b:Ljava/lang/Object;

    iput-object p4, p0, LD4/d;->c:Ljava/lang/Object;

    iput-object p5, p0, LD4/d;->d:Ljava/lang/Object;

    iput-object p6, p0, LD4/d;->e:Ljava/lang/Object;

    iput-object p7, p0, LD4/d;->f:Ljava/lang/Object;

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p1

    new-array p2, p1, [LU/w;

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_1

    iget-object p4, p0, LD4/d;->e:Ljava/lang/Object;

    check-cast p4, Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lz0/w;

    const-string p5, "<this>"

    invoke-static {p4, p5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p4}, Lz0/w;->e()Ljava/lang/Object;

    move-result-object p4

    instance-of p5, p4, LU/w;

    if-eqz p5, :cond_0

    check-cast p4, LU/w;

    goto :goto_1

    :cond_0
    const/4 p4, 0x0

    :goto_1
    aput-object p4, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    iput-object p2, p0, LD4/d;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LV3/e;LV3/e;LV3/e;LV3/e;LS3/p;LS3/p;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LI3/c;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, LI3/c;-><init>(ILjava/lang/Object;)V

    const/16 v1, 0x96

    invoke-static {v1, v0}, Lm4/d;->a(ILm4/a;)LZ3/x;

    move-result-object v0

    iput-object v0, p0, LD4/d;->g:Ljava/lang/Object;

    iput-object p1, p0, LD4/d;->a:Ljava/lang/Object;

    iput-object p2, p0, LD4/d;->b:Ljava/lang/Object;

    iput-object p3, p0, LD4/d;->c:Ljava/lang/Object;

    iput-object p4, p0, LD4/d;->d:Ljava/lang/Object;

    iput-object p5, p0, LD4/d;->e:Ljava/lang/Object;

    iput-object p6, p0, LD4/d;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lib/h;Lib/h;Lcom/google/android/appfunctions/internal/AggregateAppFunctionInvoker;Lcom/google/android/appfunctions/internal/AggregateAppFunctionInventory;)V
    .locals 1

    const-string v0, "workerCoroutineContext"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainCoroutineContext"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appFunctionInvoker"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appFunctionInventory"

    invoke-static {p5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, LD4/d;->a:Ljava/lang/Object;

    iput-object p4, p0, LD4/d;->b:Ljava/lang/Object;

    iput-object p5, p0, LD4/d;->c:Ljava/lang/Object;

    invoke-static {}, LNc/E;->d()LNc/m0;

    move-result-object p3

    iput-object p3, p0, LD4/d;->d:Ljava/lang/Object;

    invoke-interface {p2, p3}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object p2

    invoke-static {p2}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p2

    iput-object p2, p0, LD4/d;->e:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LD4/d;->f:Ljava/lang/Object;

    new-instance p1, LA4/a;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p0}, LA4/a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, LD4/d;->g:Ljava/lang/Object;

    return-void
.end method

.method public static final a(LD4/d;Ly/b;)Lcom/google/android/appfunctions/AppFunctionMetadata;
    .locals 0

    iget-object p0, p0, LD4/d;->g:Ljava/lang/Object;

    check-cast p0, Ldb/o;

    invoke-virtual {p0}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    iget-object p1, p1, Ly/b;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/appfunctions/AppFunctionMetadata;

    return-object p0
.end method

.method public static final c(LD4/d;Ly/b;Lcom/google/android/appfunctions/AppFunctionMetadata;)Lgb/f;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lgb/f;

    invoke-direct {p0}, Lgb/f;-><init>()V

    iget-object p2, p2, Lcom/google/android/appfunctions/AppFunctionMetadata;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/appfunctions/AppFunctionParameterMetadata;

    iget-object v1, v0, Lcom/google/android/appfunctions/AppFunctionParameterMetadata;->c:Ljava/lang/String;

    iget-object v2, p1, Ly/b;->d:Ljava/lang/Object;

    check-cast v2, Lz4/c;

    iget-object v3, v0, Lcom/google/android/appfunctions/AppFunctionParameterMetadata;->e:Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;

    iget-boolean v4, v3, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;->d:Z

    iget v5, v3, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;->c:I

    iget-object v6, v0, Lcom/google/android/appfunctions/AppFunctionParameterMetadata;->a:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-static {v0}, LD4/d;->f(Lcom/google/android/appfunctions/AppFunctionParameterMetadata;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v2, v6, v5, v4}, LG5/p;->d(Lz4/c;Ljava/lang/String;ILjava/lang/Class;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-static {v0}, LD4/d;->f(Lcom/google/android/appfunctions/AppFunctionParameterMetadata;)Ljava/lang/Class;

    move-result-object v4

    const-string v7, "path"

    invoke-static {v6, v7}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v6, v5, v4}, LG5/p;->d(Lz4/c;Ljava/lang/String;ILjava/lang/Class;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    invoke-static {v2}, Lfb/n;->C(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    iget-boolean v3, v3, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;->e:Z

    if-nez v3, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Parameter ["

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v0, Lcom/google/android/appfunctions/AppFunctionParameterMetadata;->c:Ljava/lang/String;

    const-string p2, "] cannot be null"

    invoke-static {p0, p1, p2}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    invoke-virtual {p0, v1, v2}, Lgb/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Properties under ["

    const-string p2, "] contains more than one element"

    invoke-static {p1, v6, p2}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {p0}, Lgb/f;->b()Lgb/f;

    move-result-object p0

    return-object p0
.end method

.method public static final d(LD4/d;Ly/b;Ljava/lang/String;Lcom/google/android/appfunctions/AppFunctionMetadata;Lgb/f;Lkb/c;)Ljava/lang/Object;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p5, LD4/a;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, LD4/a;

    iget v1, v0, LD4/a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LD4/a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, LD4/a;

    invoke-direct {v0, p0, p5}, LD4/a;-><init>(LD4/d;Lkb/c;)V

    :goto_0
    iget-object p5, v0, LD4/a;->c:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LD4/a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p3, v0, LD4/a;->b:Lcom/google/android/appfunctions/AppFunctionMetadata;

    iget-object p0, v0, LD4/a;->a:LD4/d;

    invoke-static {p5}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p5}, LG5/A2;->f(Ljava/lang/Object;)V

    new-instance p5, LD4/b;

    const/4 v9, 0x0

    move-object v4, p5

    move-object v5, p0

    move-object v6, p2

    move-object v7, p1

    move-object v8, p4

    invoke-direct/range {v4 .. v9}, LD4/b;-><init>(LD4/d;Ljava/lang/String;Ly/b;Lgb/f;Lib/c;)V

    iput-object p0, v0, LD4/a;->a:LD4/d;

    iput-object p3, v0, LD4/a;->b:Lcom/google/android/appfunctions/AppFunctionMetadata;

    iput v3, v0, LD4/a;->e:I

    iget-object p1, p0, LD4/d;->a:Ljava/lang/Object;

    check-cast p1, Lib/h;

    invoke-static {p1, p5, v0}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_3

    goto/16 :goto_5

    :cond_3
    :goto_1
    new-instance v1, Lz4/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p3, Lcom/google/android/appfunctions/AppFunctionMetadata;->f:Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;

    iget-boolean p1, p0, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;->d:Z

    iget p2, p0, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;->c:I

    iget-boolean p0, p0, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;->e:Z

    const-string p4, "["

    iget-object p3, p3, Lcom/google/android/appfunctions/AppFunctionMetadata;->a:Ljava/lang/String;

    if-eqz p1, :cond_7

    if-nez p5, :cond_5

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    const-string p0, "] is specified to return non-null List. But result is null"

    invoke-static {p3, p0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    instance-of p0, p5, Ljava/util/List;

    if-eqz p0, :cond_6

    :goto_2
    check-cast p5, Ljava/util/List;

    invoke-static {p2, p5}, LG5/p;->c(ILjava/util/List;)Lz4/c;

    move-result-object p0

    goto :goto_4

    :cond_6
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] is specified to return a List. But ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "] is returned"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    if-nez p0, :cond_9

    if-eqz p5, :cond_8

    goto :goto_3

    :cond_8
    const-string p0, "] is specified to return non-null. But null is returned"

    invoke-static {p4, p3, p0}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_3
    if-nez p5, :cond_a

    sget-object p0, Lz4/c;->c:Lz4/c;

    goto :goto_4

    :cond_a
    invoke-static {p5}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p2, p0}, LG5/p;->c(ILjava/util/List;)Lz4/c;

    move-result-object p0

    :goto_4
    invoke-direct {v1, p0}, Lz4/f;-><init>(Lz4/c;)V

    :goto_5
    return-object v1
.end method

.method public static f(Lcom/google/android/appfunctions/AppFunctionParameterMetadata;)Ljava/lang/Class;
    .locals 4

    iget-object p0, p0, Lcom/google/android/appfunctions/AppFunctionParameterMetadata;->e:Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;

    iget v0, p0, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;->c:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unable to resolve java class for ["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AppFunction"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Document parameter must have document type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public E(Lhc/f;Lmc/f;)V
    .locals 2

    new-instance v0, Lmc/t;

    new-instance v1, Lmc/r;

    invoke-direct {v1, p2}, Lmc/r;-><init>(Lmc/f;)V

    invoke-direct {v0, v1}, Lmc/g;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, LD4/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public H(Lhc/b;Lhc/f;)Lac/n;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, LJb/S;->L:LJb/T;

    iget-object v2, p0, LD4/d;->a:Ljava/lang/Object;

    check-cast v2, LQ9/a;

    invoke-virtual {v2, p1, v1, v0}, LQ9/a;->t(Lhc/b;LJb/S;Ljava/util/List;)LD4/d;

    move-result-object p1

    new-instance v1, LA7/c;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p1, v1, LA7/c;->a:Ljava/lang/Object;

    iput-object p0, v1, LA7/c;->c:Ljava/lang/Object;

    iput-object p2, v1, LA7/c;->d:Ljava/lang/Object;

    iput-object v0, v1, LA7/c;->e:Ljava/lang/Object;

    iput-object p1, v1, LA7/c;->b:Ljava/lang/Object;

    return-object v1
.end method

.method public b()V
    .locals 7

    iget-object v0, p0, LD4/d;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, LD4/d;->c:Ljava/lang/Object;

    check-cast v1, LQ9/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, LD4/d;->e:Ljava/lang/Object;

    check-cast v2, Lhc/b;

    const-string v3, "arguments"

    invoke-static {v0, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, LFb/a;->b:Lhc/b;

    invoke-virtual {v2, v3}, Lhc/b;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "value"

    invoke-static {v3}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Lmc/t;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    check-cast v3, Lmc/t;

    goto :goto_0

    :cond_1
    move-object v3, v6

    :goto_0
    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v3, Lmc/g;->a:Ljava/lang/Object;

    instance-of v5, v3, Lmc/r;

    if-eqz v5, :cond_3

    move-object v6, v3

    check-cast v6, Lmc/r;

    :cond_3
    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    iget-object v3, v6, Lmc/r;->a:Lmc/f;

    iget-object v3, v3, Lmc/f;->a:Lhc/b;

    invoke-virtual {v1, v3}, LQ9/a;->s(Lhc/b;)Z

    move-result v4

    :goto_1
    if-eqz v4, :cond_5

    return-void

    :cond_5
    invoke-virtual {v1, v2}, LQ9/a;->s(Lhc/b;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    :cond_6
    new-instance v1, LKb/c;

    iget-object v2, p0, LD4/d;->d:Ljava/lang/Object;

    check-cast v2, LJb/f;

    invoke-interface {v2}, LJb/f;->n()Lyc/A;

    move-result-object v2

    iget-object v3, p0, LD4/d;->g:Ljava/lang/Object;

    check-cast v3, LJb/S;

    invoke-direct {v1, v2, v0, v3}, LKb/c;-><init>(Lyc/A;Ljava/util/Map;LJb/S;)V

    iget-object p0, p0, LD4/d;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(Lz0/G;)I
    .locals 1

    iget-object p0, p0, LD4/d;->a:Ljava/lang/Object;

    check-cast p0, LU/q;

    sget-object v0, LU/q;->Horizontal:LU/q;

    if-ne p0, v0, :cond_0

    iget p0, p1, Lz0/G;->b:I

    goto :goto_0

    :cond_0
    iget p0, p1, Lz0/G;->a:I

    :goto_0
    return p0
.end method

.method public g(Lz0/G;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LD4/d;->a:Ljava/lang/Object;

    check-cast p0, LU/q;

    sget-object v0, LU/q;->Horizontal:LU/q;

    if-ne p0, v0, :cond_0

    iget p0, p1, Lz0/G;->a:I

    goto :goto_0

    :cond_0
    iget p0, p1, Lz0/G;->b:I

    :goto_0
    return p0
.end method

.method public get()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, LD4/d;->a:Ljava/lang/Object;

    check-cast v0, LO9/a;

    iget-object v0, v0, LO9/a;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, LD4/d;->b:Ljava/lang/Object;

    check-cast v0, Lcb/a;

    invoke-interface {v0}, Lcb/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, LI4/f;

    iget-object v0, p0, LD4/d;->c:Ljava/lang/Object;

    check-cast v0, Lcb/a;

    invoke-interface {v0}, Lcb/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, LO4/d;

    iget-object v0, p0, LD4/d;->d:Ljava/lang/Object;

    check-cast v0, Lo3/t;

    invoke-virtual {v0}, Lo3/t;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, LN4/d;

    iget-object v0, p0, LD4/d;->e:Ljava/lang/Object;

    check-cast v0, Lcb/a;

    invoke-interface {v0}, Lcb/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/Executor;

    iget-object v0, p0, LD4/d;->f:Ljava/lang/Object;

    check-cast v0, Lcb/a;

    invoke-interface {v0}, Lcb/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, LP4/c;

    new-instance v8, LO7/a;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v9, LF6/e;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, LD4/d;->g:Ljava/lang/Object;

    check-cast p0, Lcb/a;

    invoke-interface {p0}, Lcb/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, LO4/c;

    new-instance p0, LN4/k;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, LN4/k;-><init>(Landroid/content/Context;LI4/f;LO4/d;LN4/d;Ljava/util/concurrent/Executor;LP4/c;LQ4/a;LQ4/a;LO4/c;)V

    return-object p0
.end method

.method public h()V
    .locals 1

    iget-object p0, p0, LD4/d;->d:Ljava/lang/Object;

    check-cast p0, LNc/m0;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LNc/t0;->a(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public i(Lhc/f;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LD4/d;->a:Ljava/lang/Object;

    check-cast v0, LQ9/a;

    invoke-static {v0, p1, p2}, LQ9/a;->l(LQ9/a;Lhc/f;Ljava/lang/Object;)Lmc/g;

    move-result-object p2

    iget-object p0, p0, LD4/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public q(Lhc/f;)Lac/o;
    .locals 2

    new-instance v0, Lo3/n;

    iget-object v1, p0, LD4/d;->a:Ljava/lang/Object;

    check-cast v1, LQ9/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lo3/n;->b:Ljava/lang/Object;

    iput-object p1, v0, Lo3/n;->c:Ljava/lang/Object;

    iput-object p0, v0, Lo3/n;->d:Ljava/lang/Object;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v0, Lo3/n;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public x(Lhc/f;Lhc/b;Lhc/f;)V
    .locals 1

    new-instance v0, Lmc/i;

    invoke-direct {v0, p2, p3}, Lmc/i;-><init>(Lhc/b;Lhc/f;)V

    iget-object p0, p0, LD4/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
