.class public final LQd/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:I

.field public b:[Ljava/lang/String;

.field public c:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LQd/c;->a:I

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, LQd/c;->b:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, LQd/c;->c:[Ljava/lang/Object;

    return-void
.end method

.method public static w(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x2f

    if-ne p0, v1, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, LQd/c;->m()LQd/c;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, LQd/c;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, LQd/c;

    iget v2, p0, LQd/c;->a:I

    iget v3, p1, LQd/c;->a:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move v2, v1

    :goto_0
    iget v3, p0, LQd/c;->a:I

    if-ge v2, v3, :cond_6

    iget-object v3, p0, LQd/c;->b:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, LQd/c;->s(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    return v1

    :cond_3
    iget-object v4, p0, LQd/c;->c:[Ljava/lang/Object;

    aget-object v4, v4, v2

    iget-object v5, p1, LQd/c;->c:[Ljava/lang/Object;

    aget-object v3, v5, v3

    if-nez v4, :cond_4

    if-eqz v3, :cond_5

    return v1

    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return v0

    :cond_7
    :goto_1
    return v1
.end method

.method public final g(LQd/c;)V
    .locals 5

    iget v0, p1, LQd/c;->a:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, LQd/c;->a:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, LQd/c;->l(I)V

    iget v0, p0, LQd/c;->a:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget v2, p1, LQd/c;->a:I

    if-ge v1, v2, :cond_2

    iget-object v2, p1, LQd/c;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, LQd/c;->w(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v2, p1, LQd/c;->a:I

    if-ge v1, v2, :cond_5

    new-instance v2, LQd/a;

    iget-object v3, p1, LQd/c;->b:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p1, LQd/c;->c:[Ljava/lang/Object;

    aget-object v4, v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4, p1}, LQd/a;-><init>(Ljava/lang/String;Ljava/lang/String;LQd/c;)V

    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, LQd/c;->x(LQd/a;)V

    goto :goto_0

    :cond_3
    iget-object v3, v2, LQd/a;->a:Ljava/lang/String;

    iget-object v2, v2, LQd/a;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string v2, ""

    :cond_4
    invoke-virtual {p0, v3, v2}, LQd/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, LQd/c;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LQd/c;->b:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, LQd/c;->c:[Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, LQd/c;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, LQd/c;->l(I)V

    iget-object v0, p0, LQd/c;->b:[Ljava/lang/String;

    iget v1, p0, LQd/c;->a:I

    aput-object p1, v0, v1

    iget-object p1, p0, LQd/c;->c:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LQd/c;->a:I

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, LQd/b;

    invoke-direct {v0, p0}, LQd/b;-><init>(LQd/c;)V

    return-object v0
.end method

.method public final l(I)V
    .locals 3

    iget v0, p0, LQd/c;->a:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LOd/b;->d(Z)V

    iget-object v0, p0, LQd/c;->b:[Ljava/lang/String;

    array-length v1, v0

    if-lt v1, p1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    iget v1, p0, LQd/c;->a:I

    mul-int/lit8 v2, v1, 0x2

    :cond_2
    if-le p1, v2, :cond_3

    goto :goto_1

    :cond_3
    move p1, v2

    :goto_1
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, LQd/c;->b:[Ljava/lang/String;

    iget-object v0, p0, LQd/c;->c:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LQd/c;->c:[Ljava/lang/Object;

    return-void
.end method

.method public final m()LQd/c;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQd/c;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, p0, LQd/c;->a:I

    iput v1, v0, LQd/c;->a:I

    iget-object v1, p0, LQd/c;->b:[Ljava/lang/String;

    iget v2, p0, LQd/c;->a:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, LQd/c;->b:[Ljava/lang/String;

    iget-object v1, p0, LQd/c;->c:[Ljava/lang/Object;

    iget p0, p0, LQd/c;->a:I

    invoke-static {v1, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, LQd/c;->c:[Ljava/lang/Object;

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final n(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, LQd/c;->s(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    const-string v1, ""

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, LQd/c;->c:[Ljava/lang/Object;

    aget-object p0, p0, p1

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method public final p(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, LQd/c;->u(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    const-string v1, ""

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, LQd/c;->c:[Ljava/lang/Object;

    aget-object p0, p0, p1

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method public final r(Ljava/lang/StringBuilder;LQd/h;)V
    .locals 5

    iget v0, p0, LQd/c;->a:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, LQd/c;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, LQd/c;->w(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, LQd/c;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, p2, LQd/h;->h:LQd/g;

    invoke-static {v2, v3}, LQd/a;->a(Ljava/lang/String;LQd/g;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, LQd/c;->c:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    move-result-object v4

    invoke-static {v2, v3, v4, p2}, LQd/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Appendable;LQd/h;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final s(Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, LOd/b;->g(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, LQd/c;->a:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LQd/c;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, LPd/b;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    :try_start_0
    new-instance v1, LQd/j;

    const-string v2, ""

    invoke-direct {v1, v2}, LQd/j;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, LQd/j;->j:LQd/h;

    invoke-virtual {p0, v0, v1}, LQd/c;->r(Ljava/lang/StringBuilder;LQd/h;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, LPd/b;->g(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, LI5/b;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final u(Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, LOd/b;->g(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, LQd/c;->a:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LQd/c;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final x(LQd/a;)V
    .locals 2

    iget-object v0, p1, LQd/a;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v1, p1, LQd/a;->a:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, LQd/c;->y(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, p1, LQd/a;->c:LQd/c;

    return-void
.end method

.method public final y(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, LOd/b;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, LQd/c;->s(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, LQd/c;->c:[Ljava/lang/Object;

    aput-object p2, p0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, LQd/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final z(I)V
    .locals 3

    iget v0, p0, LQd/c;->a:I

    if-ge p1, v0, :cond_1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_0

    iget-object v1, p0, LQd/c;->b:[Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, LQd/c;->c:[Ljava/lang/Object;

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget p1, p0, LQd/c;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, LQd/c;->a:I

    iget-object v0, p0, LQd/c;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    iget-object p0, p0, LQd/c;->c:[Ljava/lang/Object;

    aput-object v1, p0, p1

    return-void

    :cond_1
    new-instance p0, LOd/c;

    const-string p1, "Must be false"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
