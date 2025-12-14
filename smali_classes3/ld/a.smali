.class public final Lld/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd/C;


# static fields
.field public static final a:Lld/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lld/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lld/a;->a:Lld/a;

    return-void
.end method


# virtual methods
.method public final intercept(Lhd/B;)Lhd/T;
    .locals 9

    check-cast p1, Lmd/f;

    iget-object p0, p1, Lmd/f;->a:Lld/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lld/i;->m:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lld/i;->l:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lld/i;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    monitor-exit p0

    iget-object v0, p0, Lld/i;->g:Lld/e;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v7, p0, Lld/i;->a:Lhd/I;

    const-string v1, "client"

    invoke-static {v7, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_1
    iget v2, p1, Lmd/f;->f:I

    iget v3, p1, Lmd/f;->g:I

    iget v4, p1, Lmd/f;->h:I

    iget-boolean v5, v7, Lhd/I;->f:Z

    iget-object v1, p1, Lmd/f;->e:Lhd/M;

    iget-object v1, v1, Lhd/M;->b:Ljava/lang/String;

    const-string v6, "GET"

    invoke-static {v1, v6}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v8, 0x1

    xor-int/lit8 v6, v1, 0x1

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lld/e;->a(IIIZZ)Lld/k;

    move-result-object v1

    invoke-virtual {v1, v7, p1}, Lld/k;->j(Lhd/I;Lmd/f;)Lmd/d;

    move-result-object v1
    :try_end_1
    .catch Lld/l; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v2, LU0/h;

    invoke-direct {v2, p0, v0, v1}, LU0/h;-><init>(Lld/i;Lld/e;Lmd/d;)V

    iput-object v2, p0, Lld/i;->j:LU0/h;

    iput-object v2, p0, Lld/i;->o:LU0/h;

    monitor-enter p0

    :try_start_2
    iput-boolean v8, p0, Lld/i;->k:Z

    iput-boolean v8, p0, Lld/i;->l:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    iget-boolean p0, p0, Lld/i;->n:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    const/16 v1, 0x3d

    invoke-static {p1, p0, v2, v0, v1}, Lmd/f;->a(Lmd/f;ILU0/h;Lhd/M;I)Lmd/f;

    move-result-object p0

    iget-object p1, p1, Lmd/f;->e:Lhd/M;

    invoke-virtual {p0, p1}, Lmd/f;->b(Lhd/M;)Lhd/T;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Canceled"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-virtual {v0, p0}, Lld/e;->c(Ljava/io/IOException;)V

    new-instance p1, Lld/l;

    invoke-direct {p1, p0}, Lld/l;-><init>(Ljava/io/IOException;)V

    throw p1

    :goto_1
    iget-object p1, p0, Lld/l;->b:Ljava/io/IOException;

    invoke-virtual {v0, p1}, Lld/e;->c(Ljava/io/IOException;)V

    throw p0

    :cond_1
    :try_start_3
    const-string p1, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_2
    const-string p1, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p1, "released"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    monitor-exit p0

    throw p1
.end method
