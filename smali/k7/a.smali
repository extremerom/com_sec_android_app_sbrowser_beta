.class public final Lk7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lk7/g;

.field public final c:Ln7/g;

.field public final d:I


# direct methods
.method public constructor <init>(ILk7/g;Ln7/g;I)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_12

    :try_start_0
    iget-boolean v0, p2, LEc/g;->a:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "mutable instance"

    const/4 v2, 0x0

    if-nez v0, :cond_11

    iget-object v0, p2, Ln7/e;->b:[Ljava/lang/Object;

    array-length v0, v0

    if-eqz v0, :cond_10

    add-int/lit8 v3, v0, -0x2

    :goto_0
    const/4 v4, 0x1

    if-ltz v3, :cond_1

    invoke-virtual {p2, v3}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk7/f;

    iget-object v5, v5, Lk7/f;->a:Lk7/n;

    iget v5, v5, Lk7/n;->e:I

    if-ne v5, v4, :cond_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "insns["

    const-string p2, "] is a branch or can throw"

    invoke-static {v3, p1, p2}, Lt/b;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sub-int/2addr v0, v4

    invoke-virtual {p2, v0}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk7/f;

    iget-object v0, v0, Lk7/f;->a:Lk7/n;

    iget v0, v0, Lk7/n;->e:I

    if-eq v0, v4, :cond_f

    :try_start_1
    iget-boolean v0, p3, LEc/g;->a:Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_e

    const/4 v0, -0x1

    if-lt p4, v0, :cond_d

    if-ltz p4, :cond_c

    iget v1, p3, Ln7/g;->c:I

    iget-boolean v2, p3, Ln7/g;->d:Z

    const/4 v3, 0x0

    if-nez v2, :cond_4

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_3

    iget-object v5, p3, Ln7/g;->b:[I

    aget v5, v5, v2

    if-ne v5, p4, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    neg-int v2, v1

    goto :goto_3

    :cond_4
    move v5, v0

    move v2, v1

    :goto_2
    add-int/lit8 v6, v5, 0x1

    if-le v2, v6, :cond_6

    sub-int v6, v2, v5

    shr-int/2addr v6, v4

    add-int/2addr v6, v5

    iget-object v7, p3, Ln7/g;->b:[I

    aget v7, v7, v6

    if-gt p4, v7, :cond_5

    move v2, v6

    goto :goto_2

    :cond_5
    move v5, v6

    goto :goto_2

    :cond_6
    if-eq v2, v1, :cond_8

    iget-object v1, p3, Ln7/g;->b:[I

    aget v1, v1, v2

    if-ne p4, v1, :cond_7

    goto :goto_3

    :cond_7
    neg-int v1, v2

    sub-int/2addr v1, v4

    move v2, v1

    goto :goto_3

    :cond_8
    neg-int v1, v1

    add-int/lit8 v2, v1, -0x1

    :goto_3
    if-ltz v2, :cond_9

    move v0, v2

    :cond_9
    if-ltz v0, :cond_a

    goto :goto_4

    :cond_a
    move v4, v3

    :goto_4
    if-eqz v4, :cond_b

    goto :goto_5

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "primarySuccessor "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " not in successors "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_5
    iput p1, p0, Lk7/a;->a:I

    iput-object p2, p0, Lk7/a;->b:Lk7/g;

    iput-object p3, p0, Lk7/a;->c:Ln7/g;

    iput p4, p0, Lk7/a;->d:I

    return-void

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "primarySuccessor < -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :try_start_2
    new-instance p0, Ln7/c;

    invoke-direct {p0, v1, v2}, Ln7/d;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p0
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "successors == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "insns does not end with a branch or throwing instruction"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "insns.size() == 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :try_start_3
    new-instance p0, Ln7/c;

    invoke-direct {p0, v1, v2}, Ln7/d;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p0
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "insns == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "label < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lk7/a;->a:I

    invoke-static {p0}, Lqd/d;->e(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
