.class public abstract Lqd/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Class;)LOb/b;
    .locals 14

    const-string v0, "klass"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lbc/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lbc/g;->a:[I

    iput-object v1, v0, Lbc/g;->b:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v0, Lbc/g;->c:I

    iput-object v1, v0, Lbc/g;->d:[Ljava/lang/String;

    iput-object v1, v0, Lbc/g;->e:[Ljava/lang/String;

    iput-object v1, v0, Lbc/g;->f:[Ljava/lang/String;

    iput-object v1, v0, Lbc/g;->g:Lbc/b;

    iput-object v1, v0, Lbc/g;->h:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    invoke-static {v3}, Ltb/z;->g([Ljava/lang/Object;)Lbd/e;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-virtual {v3}, Lbd/e;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lbd/e;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/annotation/Annotation;

    invoke-static {v4}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v4}, LG5/D;->b(Ljava/lang/annotation/Annotation;)LAb/c;

    move-result-object v5

    invoke-static {v5}, LG5/D;->c(LAb/c;)Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, LPb/c;->a(Ljava/lang/Class;)Lhc/b;

    move-result-object v6

    invoke-virtual {v6}, Lhc/b;->a()Lhc/c;

    move-result-object v7

    sget-object v8, LSb/x;->a:Lhc/c;

    invoke-virtual {v7, v8}, Lhc/c;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v6, LJ7/c;

    const/16 v7, 0xd

    invoke-direct {v6, v7, v0}, LJ7/c;-><init>(ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    sget-object v8, LSb/x;->o:Lhc/c;

    invoke-virtual {v7, v8}, Lhc/c;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v6, LO9/a;

    const/16 v7, 0xa

    invoke-direct {v6, v7, v0}, LO9/a;-><init>(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    sget-boolean v7, Lbc/g;->i:Z

    if-eqz v7, :cond_4

    :cond_3
    :goto_1
    move-object v6, v1

    goto :goto_2

    :cond_4
    iget-object v7, v0, Lbc/g;->g:Lbc/b;

    if-eqz v7, :cond_5

    goto :goto_1

    :cond_5
    sget-object v7, Lbc/g;->j:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbc/b;

    if-eqz v6, :cond_3

    iput-object v6, v0, Lbc/g;->g:Lbc/b;

    new-instance v6, LP7/c;

    const/16 v7, 0xc

    invoke-direct {v6, v7, v0}, LP7/c;-><init>(ILjava/lang/Object;)V

    :goto_2
    if-eqz v6, :cond_0

    invoke-static {v6, v4, v5}, Lp7/b;->c(Lac/n;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    goto :goto_0

    :cond_6
    new-instance v3, LOb/b;

    sget-object v4, Lec/f;->g:Lec/f;

    iget-object v5, v0, Lbc/g;->g:Lbc/b;

    if-eqz v5, :cond_b

    iget-object v5, v0, Lbc/g;->a:[I

    if-nez v5, :cond_7

    goto :goto_3

    :cond_7
    new-instance v8, Lec/f;

    iget-object v5, v0, Lbc/g;->a:[I

    iget v6, v0, Lbc/g;->c:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_8

    const/4 v2, 0x1

    :cond_8
    invoke-direct {v8, v2, v5}, Lec/f;-><init>(Z[I)V

    invoke-virtual {v8, v4}, Lec/f;->b(Lec/f;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v0, Lbc/g;->d:[Ljava/lang/String;

    iput-object v2, v0, Lbc/g;->f:[Ljava/lang/String;

    iput-object v1, v0, Lbc/g;->d:[Ljava/lang/String;

    goto :goto_4

    :cond_9
    iget-object v2, v0, Lbc/g;->g:Lbc/b;

    sget-object v4, Lbc/b;->CLASS:Lbc/b;

    if-eq v2, v4, :cond_a

    sget-object v4, Lbc/b;->FILE_FACADE:Lbc/b;

    if-eq v2, v4, :cond_a

    sget-object v4, Lbc/b;->MULTIFILE_CLASS_PART:Lbc/b;

    if-ne v2, v4, :cond_c

    :cond_a
    iget-object v2, v0, Lbc/g;->d:[Ljava/lang/String;

    if-nez v2, :cond_c

    :cond_b
    :goto_3
    move-object v2, v1

    goto :goto_5

    :cond_c
    :goto_4
    iget-object v2, v0, Lbc/g;->h:[Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-static {v2}, Lgc/a;->a([Ljava/lang/String;)[B

    :cond_d
    new-instance v2, Lbc/c;

    iget-object v7, v0, Lbc/g;->g:Lbc/b;

    iget-object v9, v0, Lbc/g;->d:[Ljava/lang/String;

    iget-object v10, v0, Lbc/g;->f:[Ljava/lang/String;

    iget-object v11, v0, Lbc/g;->e:[Ljava/lang/String;

    iget-object v12, v0, Lbc/g;->b:Ljava/lang/String;

    iget v13, v0, Lbc/g;->c:I

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Lbc/c;-><init>(Lbc/b;Lec/f;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V

    :goto_5
    if-nez v2, :cond_e

    return-object v1

    :cond_e
    invoke-direct {v3, p0, v2}, LOb/b;-><init>(Ljava/lang/Class;Lbc/c;)V

    return-object v3
.end method

.method public static b(B)Z
    .locals 1

    const/16 v0, -0x41

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(I)I
    .locals 1

    shr-int/lit8 p0, p0, 0x7

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    shr-int/lit8 p0, p0, 0x7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method
