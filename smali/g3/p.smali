.class public abstract Lg3/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;Lf3/c;)Lg3/n;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "context"

    invoke-static {p0, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "configuration"

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lr3/a;

    iget-object v3, p1, Lf3/c;->b:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v2, v3}, Lr3/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context.applicationContext"

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v2, Lr3/a;->a:LJ2/k0;

    const-string v6, "workTaskExecutor.serialTaskExecutor"

    invoke-static {v5, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f05000e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iget-object v7, p1, Lf3/c;->c:Lf3/w;

    const-string v8, "clock"

    invoke-static {v7, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v8, Landroidx/work/impl/WorkDatabase;

    if-eqz v6, :cond_0

    new-instance v6, LJ2/N;

    const/4 v9, 0x0

    invoke-direct {v6, v3, v8, v9}, LJ2/N;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    iput-boolean v1, v6, LJ2/N;->i:Z

    goto :goto_0

    :cond_0
    const-string v6, "androidx.work.workdb"

    invoke-static {v3, v8, v6}, LG5/y3;->f(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)LJ2/N;

    move-result-object v6

    new-instance v8, Lcom/sec/android/app/sbrowser/common/account/b;

    const/16 v9, 0x8

    invoke-direct {v8, v3, v9}, Lcom/sec/android/app/sbrowser/common/account/b;-><init>(Landroid/content/Context;I)V

    iput-object v8, v6, LJ2/N;->h:Lcom/sec/android/app/sbrowser/common/account/b;

    :goto_0
    iput-object v5, v6, LJ2/N;->f:Ljava/util/concurrent/Executor;

    new-instance v5, LJ2/J;

    invoke-direct {v5, v7}, LJ2/J;-><init>(Lf3/w;)V

    iget-object v7, v6, LJ2/N;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v5, v1, [LN2/a;

    sget-object v7, Lg3/c;->f:Lg3/c;

    aput-object v7, v5, v0

    invoke-virtual {v6, v5}, LJ2/N;->a([LN2/a;)V

    new-instance v5, Lg3/e;

    const/4 v7, 0x2

    const/4 v8, 0x3

    invoke-direct {v5, v3, v7, v8}, Lg3/e;-><init>(Landroid/content/Context;II)V

    new-array v7, v1, [LN2/a;

    aput-object v5, v7, v0

    invoke-virtual {v6, v7}, LJ2/N;->a([LN2/a;)V

    new-array v5, v1, [LN2/a;

    sget-object v7, Lg3/c;->g:Lg3/c;

    aput-object v7, v5, v0

    invoke-virtual {v6, v5}, LJ2/N;->a([LN2/a;)V

    new-array v5, v1, [LN2/a;

    sget-object v7, Lg3/c;->h:Lg3/c;

    aput-object v7, v5, v0

    invoke-virtual {v6, v5}, LJ2/N;->a([LN2/a;)V

    new-instance v5, Lg3/e;

    const/4 v7, 0x5

    const/4 v8, 0x6

    invoke-direct {v5, v3, v7, v8}, Lg3/e;-><init>(Landroid/content/Context;II)V

    new-array v7, v1, [LN2/a;

    aput-object v5, v7, v0

    invoke-virtual {v6, v7}, LJ2/N;->a([LN2/a;)V

    new-array v5, v1, [LN2/a;

    sget-object v7, Lg3/c;->i:Lg3/c;

    aput-object v7, v5, v0

    invoke-virtual {v6, v5}, LJ2/N;->a([LN2/a;)V

    new-array v5, v1, [LN2/a;

    sget-object v7, Lg3/c;->j:Lg3/c;

    aput-object v7, v5, v0

    invoke-virtual {v6, v5}, LJ2/N;->a([LN2/a;)V

    new-array v5, v1, [LN2/a;

    sget-object v7, Lg3/c;->k:Lg3/c;

    aput-object v7, v5, v0

    invoke-virtual {v6, v5}, LJ2/N;->a([LN2/a;)V

    new-instance v5, Lg3/e;

    invoke-direct {v5, v3}, Lg3/e;-><init>(Landroid/content/Context;)V

    new-array v7, v1, [LN2/a;

    aput-object v5, v7, v0

    invoke-virtual {v6, v7}, LJ2/N;->a([LN2/a;)V

    new-instance v5, Lg3/e;

    const/16 v7, 0xa

    const/16 v8, 0xb

    invoke-direct {v5, v3, v7, v8}, Lg3/e;-><init>(Landroid/content/Context;II)V

    new-array v3, v1, [LN2/a;

    aput-object v5, v3, v0

    invoke-virtual {v6, v3}, LJ2/N;->a([LN2/a;)V

    new-array v3, v1, [LN2/a;

    sget-object v5, Lg3/c;->b:Lg3/c;

    aput-object v5, v3, v0

    invoke-virtual {v6, v3}, LJ2/N;->a([LN2/a;)V

    new-array v3, v1, [LN2/a;

    sget-object v5, Lg3/c;->c:Lg3/c;

    aput-object v5, v3, v0

    invoke-virtual {v6, v3}, LJ2/N;->a([LN2/a;)V

    new-array v3, v1, [LN2/a;

    sget-object v5, Lg3/c;->d:Lg3/c;

    aput-object v5, v3, v0

    invoke-virtual {v6, v3}, LJ2/N;->a([LN2/a;)V

    new-array v3, v1, [LN2/a;

    sget-object v5, Lg3/c;->e:Lg3/c;

    aput-object v5, v3, v0

    invoke-virtual {v6, v3}, LJ2/N;->a([LN2/a;)V

    iput-boolean v0, v6, LJ2/N;->p:Z

    iput-boolean v1, v6, LJ2/N;->q:Z

    invoke-virtual {v6}, LJ2/N;->b()LJ2/U;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/WorkDatabase;

    new-instance v10, Lm3/j;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v1, v2}, Lm3/j;-><init>(Landroid/content/Context;Lr3/a;)V

    new-instance v1, Lg3/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, p1, v2, v0}, Lg3/d;-><init>(Landroid/content/Context;Lf3/c;Lr3/a;Landroidx/work/impl/WorkDatabase;)V

    sget-object v3, Lg3/o;->a:Lg3/o;

    move-object v4, p0

    move-object v5, p1

    move-object v6, v2

    move-object v7, v0

    move-object v8, v10

    move-object v9, v1

    invoke-virtual/range {v3 .. v9}, Lg3/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/util/List;

    new-instance v11, Lg3/n;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lg3/n;-><init>(Landroid/content/Context;Lf3/c;Lr3/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Lg3/d;Lm3/j;)V

    return-object v11
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static c()Ljava/util/Set;
    .locals 3

    :try_start_0
    const-string v0, "android.text.EmojiConsistency"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getEmojiConsistencySet"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, [I

    if-nez v2, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object v0

    :catchall_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)LG5/g4;
    .locals 8

    const-string v0, "statusLine"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "HTTP/1."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x4

    const/16 v3, 0x20

    const-string v4, "Unexpected status line: "

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_2

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    sget-object v0, Lhd/K;->HTTP_1_1:Lhd/K;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lhd/K;->HTTP_1_0:Lhd/K;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v0, "ICY "

    invoke-static {p0, v0, v1}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lhd/K;->HTTP_1_0:Lhd/K;

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v1, 0x3

    if-lt v5, v6, :cond_6

    :try_start_0
    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v7, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v5, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v6, :cond_5

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "this as java.lang.String).substring(startIndex)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/net/ProtocolException;

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string p0, ""

    :goto_1
    new-instance v1, LG5/g4;

    invoke-direct {v1, v0, v5, p0}, LG5/g4;-><init>(Lhd/K;ILjava/lang/String;)V

    return-object v1

    :catch_0
    new-instance v0, Ljava/net/ProtocolException;

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/net/ProtocolException;

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/net/ProtocolException;

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
