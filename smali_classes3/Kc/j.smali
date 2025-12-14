.class public final LKc/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/google/common/cache/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/common/cache/d;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LKc/j;->a:I

    new-instance v0, Lcom/google/common/cache/P;

    invoke-direct {v0, p1}, Lcom/google/common/cache/P;-><init>(Lcom/google/common/cache/d;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LKc/j;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LKc/j;->a:I

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    const-string v0, "compile(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LKc/j;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/c;)Ljava/lang/Object;
    .locals 5

    iget-object p0, p0, LKc/j;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/cache/P;

    new-instance v0, LG5/J2;

    invoke-direct {v0, p2}, LG5/J2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/P;->c(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/common/cache/P;->d(I)Lcom/google/common/cache/y;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget v1, p0, Lcom/google/common/cache/y;->b:I

    if-eqz v1, :cond_1

    invoke-virtual {p0, p2, p1}, Lcom/google/common/cache/y;->h(ILjava/lang/Object;)Lcom/google/common/cache/Q;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/common/cache/y;->a:Lcom/google/common/cache/P;

    iget-object v2, v2, Lcom/google/common/cache/P;->m:Lcom/google/common/base/C;

    invoke-virtual {v2}, Lcom/google/common/base/C;->t()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/common/cache/y;->i(Lcom/google/common/cache/Q;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/common/cache/y;->n(Lcom/google/common/cache/Q;J)V

    iget-object p1, p0, Lcom/google/common/cache/y;->n:LE5/v;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/google/common/cache/y;->a:Lcom/google/common/cache/P;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/cache/y;->k()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/common/cache/Q;->d()Lcom/google/common/cache/I;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/cache/I;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1, p1, v2}, Lcom/google/common/cache/y;->x(Lcom/google/common/cache/Q;Ljava/lang/String;Lcom/google/common/cache/I;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/cache/y;->j(Ljava/lang/String;ILG5/J2;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object v4

    :goto_2
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of v0, p2, Ljava/lang/Error;

    if-nez v0, :cond_3

    instance-of v0, p2, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_2

    new-instance p1, LI5/b;

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    throw p1

    :cond_3
    new-instance p1, LDb/z0;

    check-cast p2, Ljava/lang/Error;

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    invoke-virtual {p0}, Lcom/google/common/cache/y;->k()V

    throw p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LKc/j;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, LKc/j;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, LKc/j;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
