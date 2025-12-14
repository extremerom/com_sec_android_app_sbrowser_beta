.class public final LU0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    invoke-static {v0, v1, p1}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    :goto_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, LU0/h;->a:Z

    iput-boolean v1, p0, LU0/h;->b:Z

    iput-object v0, p0, LU0/h;->c:Ljava/lang/Object;

    invoke-static {p2}, LU0/o;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, LU0/h;->d:Ljava/lang/Object;

    iput-object p3, p0, LU0/h;->e:Ljava/lang/Object;

    iput-object p1, p0, LU0/h;->f:Ljava/lang/Object;

    iput-boolean v1, p0, LU0/h;->a:Z

    iput-boolean v1, p0, LU0/h;->b:Z

    return-void
.end method

.method public constructor <init>(Lld/i;Lld/e;Lmd/d;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finder"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU0/h;->c:Ljava/lang/Object;

    iput-object p2, p0, LU0/h;->d:Ljava/lang/Object;

    iput-object p3, p0, LU0/h;->e:Ljava/lang/Object;

    invoke-interface {p3}, Lmd/d;->b()Lld/k;

    move-result-object p1

    iput-object p1, p0, LU0/h;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 2

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, LU0/h;->f(Ljava/io/IOException;)V

    :cond_0
    const-string v0, "call"

    iget-object v1, p0, LU0/h;->c:Ljava/lang/Object;

    check-cast v1, Lld/i;

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    if-eqz p3, :cond_3

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_1
    invoke-virtual {v1, p0, p2, p1, p3}, Lld/i;->f(LU0/h;ZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0
.end method

.method public b()LU0/i;
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v10, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [LU0/y;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LU0/y;

    move-object v10, v0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    move-object v9, v3

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [LU0/y;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [LU0/y;

    goto :goto_1

    :goto_2
    new-instance v0, LU0/i;

    iget-boolean v11, p0, LU0/h;->a:Z

    iget-boolean v12, p0, LU0/h;->b:Z

    iget-object v1, p0, LU0/h;->c:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Landroidx/core/graphics/drawable/IconCompat;

    iget-object v1, p0, LU0/h;->d:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Ljava/lang/CharSequence;

    iget-object v1, p0, LU0/h;->e:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Landroid/app/PendingIntent;

    iget-object p0, p0, LU0/h;->f:Ljava/lang/Object;

    move-object v8, p0

    check-cast v8, Landroid/os/Bundle;

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, LU0/i;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[LU0/y;[LU0/y;ZZ)V

    return-object v0
.end method

.method public c(Lhd/M;Z)Lld/c;
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p2, p0, LU0/h;->a:Z

    iget-object p2, p1, Lhd/M;->d:Lhd/Q;

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lhd/Q;->contentLength()J

    move-result-wide v0

    const-string p2, "call"

    iget-object v2, p0, LU0/h;->c:Ljava/lang/Object;

    check-cast v2, Lld/i;

    invoke-static {v2, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, LU0/h;->e:Ljava/lang/Object;

    check-cast p2, Lmd/d;

    invoke-interface {p2, p1, v0, v1}, Lmd/d;->e(Lhd/M;J)Lwd/x;

    move-result-object p1

    new-instance p2, Lld/c;

    invoke-direct {p2, p0, p1, v0, v1}, Lld/c;-><init>(LU0/h;Lwd/x;J)V

    return-object p2
.end method

.method public d(Lhd/T;)Lhd/V;
    .locals 8

    iget-object v0, p0, LU0/h;->e:Ljava/lang/Object;

    check-cast v0, Lmd/d;

    :try_start_0
    const-string v1, "Content-Type"

    invoke-static {p1, v1}, Lhd/T;->b(Lhd/T;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1}, Lmd/d;->d(Lhd/T;)J

    move-result-wide v4

    invoke-interface {v0, p1}, Lmd/d;->h(Lhd/T;)Lwd/z;

    move-result-object p1

    new-instance v0, Lld/d;

    invoke-direct {v0, p0, p1, v4, v5}, Lld/d;-><init>(LU0/h;Lwd/z;J)V

    new-instance p1, Lhd/V;

    invoke-static {v0}, LG5/u2;->c(Lwd/z;)Lwd/t;

    move-result-object v6

    const/4 v7, 0x1

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lhd/V;-><init>(Ljava/lang/Object;JLwd/i;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "call"

    iget-object v1, p0, LU0/h;->c:Ljava/lang/Object;

    check-cast v1, Lld/i;

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LU0/h;->f(Ljava/io/IOException;)V

    throw p1
.end method

.method public e(Z)Lhd/S;
    .locals 2

    :try_start_0
    iget-object v0, p0, LU0/h;->e:Ljava/lang/Object;

    check-cast v0, Lmd/d;

    invoke-interface {v0, p1}, Lmd/d;->f(Z)Lhd/S;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p0, p1, Lhd/S;->m:LU0/h;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "call"

    iget-object v1, p0, LU0/h;->c:Ljava/lang/Object;

    check-cast v1, Lld/i;

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LU0/h;->f(Ljava/io/IOException;)V

    throw p1
.end method

.method public f(Ljava/io/IOException;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, LU0/h;->b:Z

    iget-object v1, p0, LU0/h;->d:Ljava/lang/Object;

    check-cast v1, Lld/e;

    invoke-virtual {v1, p1}, Lld/e;->c(Ljava/io/IOException;)V

    iget-object v1, p0, LU0/h;->e:Ljava/lang/Object;

    check-cast v1, Lmd/d;

    invoke-interface {v1}, Lmd/d;->b()Lld/k;

    move-result-object v1

    iget-object p0, p0, LU0/h;->c:Ljava/lang/Object;

    check-cast p0, Lld/i;

    monitor-enter v1

    :try_start_0
    const-string v2, "call"

    invoke-static {p0, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v2, p1, Lod/D;

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lod/D;

    iget-object v2, v2, Lod/D;->a:Lod/c;

    sget-object v3, Lod/c;->REFUSED_STREAM:Lod/c;

    if-ne v2, v3, :cond_0

    iget p0, v1, Lld/k;->n:I

    add-int/2addr p0, v0

    iput p0, v1, Lld/k;->n:I

    if-le p0, v0, :cond_5

    iput-boolean v0, v1, Lld/k;->j:Z

    iget p0, v1, Lld/k;->l:I

    add-int/2addr p0, v0

    iput p0, v1, Lld/k;->l:I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    check-cast p1, Lod/D;

    iget-object p1, p1, Lod/D;->a:Lod/c;

    sget-object v2, Lod/c;->CANCEL:Lod/c;

    if-ne p1, v2, :cond_1

    iget-boolean p0, p0, Lld/i;->n:Z

    if-nez p0, :cond_5

    :cond_1
    iput-boolean v0, v1, Lld/k;->j:Z

    iget p0, v1, Lld/k;->l:I

    add-int/2addr p0, v0

    iput p0, v1, Lld/k;->l:I

    goto :goto_1

    :cond_2
    iget-object v2, v1, Lld/k;->g:Lod/q;

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    instance-of v2, p1, Lod/a;

    if-eqz v2, :cond_5

    :cond_4
    iput-boolean v0, v1, Lld/k;->j:Z

    iget v2, v1, Lld/k;->m:I

    if-nez v2, :cond_5

    iget-object p0, p0, Lld/i;->a:Lhd/I;

    iget-object v2, v1, Lld/k;->b:Lhd/Y;

    invoke-static {p0, v2, p1}, Lld/k;->d(Lhd/I;Lhd/Y;Ljava/io/IOException;)V

    iget p0, v1, Lld/k;->l:I

    add-int/2addr p0, v0

    iput p0, v1, Lld/k;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
