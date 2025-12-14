.class public final Lac/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/Set;

.field public static final c:Ljava/util/Set;

.field public static final d:Lec/f;

.field public static final e:Lec/f;


# instance fields
.field public a:Luc/k;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lbc/b;->CLASS:Lbc/b;

    invoke-static {v0}, Lfb/F;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lac/f;->b:Ljava/util/Set;

    sget-object v0, Lbc/b;->FILE_FACADE:Lbc/b;

    sget-object v1, Lbc/b;->MULTIFILE_CLASS_PART:Lbc/b;

    filled-new-array {v0, v1}, [Lbc/b;

    move-result-object v0

    invoke-static {v0}, Lfb/l;->I([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lac/f;->c:Ljava/util/Set;

    new-instance v0, Lec/f;

    const/4 v1, 0x1

    const/4 v2, 0x2

    filled-new-array {v1, v1, v2}, [I

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2}, Lec/f;-><init>(Z[I)V

    new-instance v0, Lec/f;

    const/16 v2, 0xb

    filled-new-array {v1, v1, v2}, [I

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lec/f;-><init>(Z[I)V

    sput-object v0, Lac/f;->d:Lec/f;

    new-instance v0, Lec/f;

    const/16 v2, 0xd

    filled-new-array {v1, v1, v2}, [I

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lec/f;-><init>(Z[I)V

    sput-object v0, Lac/f;->e:Lec/f;

    return-void
.end method


# virtual methods
.method public final a(LJb/H;LOb/b;)Lwc/q;
    .locals 12

    const-string v4, "Could not read data from "

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinClass"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, LOb/b;->b:Lbc/c;

    iget-object v5, v0, Lbc/c;->e:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    if-nez v5, :cond_0

    iget-object v5, v0, Lbc/c;->f:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    :cond_0
    const/4 v6, 0x0

    if-eqz v5, :cond_1

    iget-object v7, v0, Lbc/c;->c:Ljava/lang/Object;

    check-cast v7, Lbc/b;

    sget-object v8, Lac/f;->c:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, v6

    :goto_0
    if-nez v5, :cond_2

    return-object v6

    :cond_2
    iget-object v7, v0, Lbc/c;->d:Ljava/lang/Object;

    check-cast v7, Lec/f;

    iget-object v0, v0, Lbc/c;->g:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    if-nez v0, :cond_3

    return-object v6

    :cond_3
    :try_start_0
    invoke-static {v5, v0}, Lgc/h;->h([Ljava/lang/String;[Ljava/lang/String;)Ldb/j;

    move-result-object v0
    :try_end_0
    .catch Lic/t; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v5, v0

    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, LOb/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lac/f;->c()Luc/k;

    move-result-object v4

    iget-object v4, v4, Luc/k;->c:Luc/l;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lac/f;->e()Lec/f;

    move-result-object v4

    invoke-virtual {v7, v4}, Lec/f;->b(Lec/f;)Z

    move-result v4

    if-nez v4, :cond_5

    move-object v0, v6

    :goto_2
    if-nez v0, :cond_4

    return-object v6

    :cond_4
    iget-object v4, v0, Ldb/j;->a:Ljava/lang/Object;

    check-cast v4, Lgc/f;

    iget-object v0, v0, Ldb/j;->b:Ljava/lang/Object;

    check-cast v0, Lcc/E;

    new-instance v6, Lac/h;

    invoke-virtual {p0, p2}, Lac/f;->d(LOb/b;)Luc/q;

    invoke-virtual {p0, p2}, Lac/f;->f(LOb/b;)Z

    invoke-virtual {p0, p2}, Lac/f;->b(LOb/b;)Lwc/j;

    move-result-object v5

    invoke-direct {v6, p2, v0, v4, v5}, Lac/h;-><init>(LOb/b;Lcc/E;Lgc/f;Lwc/j;)V

    new-instance v10, Lwc/q;

    invoke-virtual {p0}, Lac/f;->c()Luc/k;

    move-result-object v8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "scope for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lac/e;->a:Lac/e;

    move-object v1, v10

    move-object v2, p1

    move-object v3, v0

    move-object v5, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v11

    invoke-direct/range {v1 .. v9}, Lwc/q;-><init>(LJb/H;Lcc/E;Lec/g;Lec/a;Lac/h;Luc/k;Ljava/lang/String;Lsb/a;)V

    return-object v10

    :cond_5
    throw v0
.end method

.method public final b(LOb/b;)Lwc/j;
    .locals 0

    invoke-virtual {p0}, Lac/f;->c()Luc/k;

    move-result-object p0

    iget-object p0, p0, Luc/k;->c:Luc/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, LOb/b;->b:Lbc/c;

    iget p0, p0, Lbc/c;->b:I

    and-int/lit8 p1, p0, 0x10

    if-eqz p1, :cond_1

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lwc/j;->UNSTABLE:Lwc/j;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lwc/j;->STABLE:Lwc/j;

    :goto_1
    return-object p0
.end method

.method public final c()Luc/k;
    .locals 0

    iget-object p0, p0, Lac/f;->a:Luc/k;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "components"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final d(LOb/b;)Luc/q;
    .locals 8

    invoke-virtual {p0}, Lac/f;->c()Luc/k;

    move-result-object v0

    iget-object v0, v0, Luc/k;->c:Luc/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, LOb/b;->b:Lbc/c;

    iget-object v0, v0, Lbc/c;->d:Ljava/lang/Object;

    check-cast v0, Lec/f;

    invoke-virtual {p0}, Lac/f;->e()Lec/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lec/f;->b(Lec/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v7, Luc/q;

    iget-object v0, p1, LOb/b;->b:Lbc/c;

    iget-object v0, v0, Lbc/c;->d:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lec/f;

    sget-object v2, Lec/f;->g:Lec/f;

    invoke-virtual {p0}, Lac/f;->e()Lec/f;

    move-result-object v3

    invoke-virtual {p0}, Lac/f;->e()Lec/f;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, v1, Lec/f;->f:Z

    if-eqz v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    sget-object v0, Lec/f;->h:Lec/f;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, p0, Lec/a;->b:I

    iget v5, v0, Lec/a;->b:I

    if-le v5, v4, :cond_2

    goto :goto_1

    :cond_2
    if-ge v5, v4, :cond_3

    goto :goto_2

    :cond_3
    iget v4, v0, Lec/a;->c:I

    iget v5, p0, Lec/a;->c:I

    if-le v4, v5, :cond_4

    :goto_1
    move-object v4, v0

    goto :goto_3

    :cond_4
    :goto_2
    move-object v4, p0

    :goto_3
    invoke-virtual {p1}, LOb/b;->a()Ljava/lang/String;

    move-result-object v5

    iget-object p0, p1, LOb/b;->a:Ljava/lang/Class;

    invoke-static {p0}, LPb/c;->a(Ljava/lang/Class;)Lhc/b;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Luc/q;-><init>(Ljava/lang/Object;Lec/f;Lec/f;Lec/f;Ljava/lang/String;Lhc/b;)V

    return-object v7
.end method

.method public final e()Lec/f;
    .locals 0

    invoke-virtual {p0}, Lac/f;->c()Luc/k;

    move-result-object p0

    iget-object p0, p0, Luc/k;->c:Luc/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lec/f;->g:Lec/f;

    return-object p0
.end method

.method public final f(LOb/b;)Z
    .locals 1

    invoke-virtual {p0}, Lac/f;->c()Luc/k;

    move-result-object v0

    iget-object v0, v0, Luc/k;->c:Luc/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lac/f;->c()Luc/k;

    move-result-object p0

    iget-object p0, p0, Luc/k;->c:Luc/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, LOb/b;->b:Lbc/c;

    iget p1, p0, Lbc/c;->b:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    iget-object p0, p0, Lbc/c;->d:Ljava/lang/Object;

    check-cast p0, Lec/f;

    sget-object p1, Lac/f;->d:Lec/f;

    invoke-virtual {p0, p1}, Lec/a;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g(LOb/b;)Luc/f;
    .locals 6

    const-string v0, "Could not read data from "

    iget-object v1, p1, LOb/b;->b:Lbc/c;

    iget-object v2, v1, Lbc/c;->e:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, v1, Lbc/c;->f:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    :cond_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v4, v1, Lbc/c;->c:Ljava/lang/Object;

    check-cast v4, Lbc/b;

    sget-object v5, Lac/f;->b:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_2

    return-object v3

    :cond_2
    iget-object v4, v1, Lbc/c;->d:Ljava/lang/Object;

    check-cast v4, Lec/f;

    iget-object v1, v1, Lbc/c;->g:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    if-nez v1, :cond_3

    return-object v3

    :cond_3
    :try_start_0
    invoke-static {v2, v1}, Lgc/h;->f([Ljava/lang/String;[Ljava/lang/String;)Ldb/j;

    move-result-object v0
    :try_end_0
    .catch Lic/t; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, LOb/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lac/f;->c()Luc/k;

    move-result-object v1

    iget-object v1, v1, Luc/k;->c:Luc/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lac/f;->e()Lec/f;

    move-result-object v1

    invoke-virtual {v4, v1}, Lec/f;->b(Lec/f;)Z

    move-result v1

    if-nez v1, :cond_5

    move-object v0, v3

    :goto_2
    if-nez v0, :cond_4

    return-object v3

    :cond_4
    iget-object v1, v0, Ldb/j;->a:Ljava/lang/Object;

    check-cast v1, Lgc/f;

    iget-object v0, v0, Ldb/j;->b:Ljava/lang/Object;

    check-cast v0, Lcc/k;

    new-instance v2, Lac/p;

    invoke-virtual {p0, p1}, Lac/f;->d(LOb/b;)Luc/q;

    invoke-virtual {p0, p1}, Lac/f;->f(LOb/b;)Z

    invoke-virtual {p0, p1}, Lac/f;->b(LOb/b;)Lwc/j;

    move-result-object p0

    invoke-direct {v2, p1, p0}, Lac/p;-><init>(LOb/b;Lwc/j;)V

    new-instance p0, Luc/f;

    invoke-direct {p0, v1, v0, v4, v2}, Luc/f;-><init>(Lec/g;Lcc/k;Lec/a;LJb/S;)V

    return-object p0

    :cond_5
    throw v0
.end method
