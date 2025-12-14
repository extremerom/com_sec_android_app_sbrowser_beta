.class public abstract Lg7/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Lg7/i;

.field public final c:Lk7/p;

.field public final d:Lk7/l;


# direct methods
.method public constructor <init>(Lg7/i;Lk7/p;Lk7/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lg7/g;->a:I

    iput-object p1, p0, Lg7/g;->b:Lg7/i;

    iput-object p2, p0, Lg7/g;->c:Lk7/p;

    iput-object p3, p0, Lg7/g;->d:Lk7/l;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "registers == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "position == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "opcode == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Lk7/p;Lk7/k;Lk7/k;)Lg7/u;
    .locals 5

    invoke-virtual {p1}, Lk7/k;->e()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p1, Lk7/k;->b:Lm7/d;

    invoke-interface {v3}, Lm7/d;->getType()Lm7/c;

    move-result-object v3

    iget v3, v3, Lm7/c;->b:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    move v1, v2

    :cond_1
    iget v2, p2, Lk7/k;->a:I

    iget v3, p1, Lk7/k;->a:I

    or-int/2addr v2, v3

    const/16 v4, 0x10

    if-ge v2, v4, :cond_4

    if-eqz v1, :cond_2

    sget-object v0, Lg7/j;->j:Lg7/i;

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    sget-object v0, Lg7/j;->d:Lg7/i;

    goto :goto_1

    :cond_3
    sget-object v0, Lg7/j;->g:Lg7/i;

    goto :goto_1

    :cond_4
    const/16 v2, 0x100

    if-ge v3, v2, :cond_7

    if-eqz v1, :cond_5

    sget-object v0, Lg7/j;->k:Lg7/i;

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    sget-object v0, Lg7/j;->e:Lg7/i;

    goto :goto_1

    :cond_6
    sget-object v0, Lg7/j;->h:Lg7/i;

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_8

    sget-object v0, Lg7/j;->l:Lg7/i;

    goto :goto_1

    :cond_8
    if-eqz v0, :cond_9

    sget-object v0, Lg7/j;->f:Lg7/i;

    goto :goto_1

    :cond_9
    sget-object v0, Lg7/j;->i:Lg7/i;

    :goto_1
    new-instance v1, Lg7/u;

    invoke-static {p1, p2}, Lk7/l;->l(Lk7/k;Lk7/k;)Lk7/l;

    move-result-object p1

    invoke-direct {v1, v0, p0, p1}, Lg7/k;-><init>(Lg7/i;Lk7/p;Lk7/l;)V

    return-object v1
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()I
.end method

.method public final c()I
    .locals 1

    iget p0, p0, Lg7/g;->a:I

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "address not yet known"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lg7/g;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%04x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract g(Lg7/i;)Lg7/g;
.end method

.method public abstract h(I)Lg7/g;
.end method

.method public abstract i(Lk7/l;)Lg7/g;
.end method

.method public abstract j(Ln7/b;)V
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Lg7/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lg7/g;->c:Lk7/p;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lg7/g;->b:Lg7/i;

    invoke-virtual {v2}, Lg7/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lg7/g;->d:Lk7/l;

    iget-object v3, v2, Ln7/e;->b:[Ljava/lang/Object;

    array-length v3, v3

    if-eqz v3, :cond_0

    const-string v3, " "

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Ln7/e;->g(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p0}, Lg7/g;->a()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    if-eqz v5, :cond_1

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
