.class public final Le0/d;
.super Le0/b;
.source "SourceFile"


# instance fields
.field public final a:[Ljava/lang/Object;

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Lfb/e;-><init>()V

    iput-object p1, p0, Le0/d;->a:[Ljava/lang/Object;

    iput-object p2, p0, Le0/d;->b:[Ljava/lang/Object;

    iput p3, p0, Le0/d;->c:I

    iput p4, p0, Le0/d;->d:I

    invoke-virtual {p0}, Le0/d;->g()I

    move-result p1

    const/16 p3, 0x20

    if-le p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    array-length p0, p2

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Trie-based persistent vector should have at least 33 elements, got "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Le0/d;->g()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, La0/d;->N(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static I([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    invoke-static {p2, p1}, LG5/E2;->b(II)I

    move-result v0

    const/16 v1, 0x20

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    aput-object p3, p0, v0

    goto :goto_0

    :cond_0
    aget-object v1, p0, v0

    const-string v2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-static {v1, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x5

    invoke-static {v1, p1, p2, p3}, Le0/d;->I([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p0, v0

    :goto_0
    return-object p0
.end method

.method public static w([Ljava/lang/Object;IILjava/lang/Object;Lo3/f;)[Ljava/lang/Object;
    .locals 5

    invoke-static {p2, p1}, LG5/E2;->b(II)I

    move-result v0

    const-string v1, "copyOf(this, newSize)"

    const/16 v2, 0x20

    if-nez p1, :cond_1

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    add-int/lit8 p2, v0, 0x1

    const/16 v1, 0x1f

    invoke-static {p2, v0, v1, p0, p1}, Lfb/l;->i(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    aget-object p0, p0, v1

    iput-object p0, p4, Lo3/f;->b:Ljava/lang/Object;

    aput-object p3, p1, v0

    return-object p1

    :cond_1
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p1, p1, -0x5

    aget-object v1, p0, v0

    const-string v4, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-static {v1, v4}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1, p1, p2, p3, p4}, Le0/d;->w([Ljava/lang/Object;IILjava/lang/Object;Lo3/f;)[Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v3, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v2, :cond_2

    aget-object p2, v3, v0

    if-eqz p2, :cond_2

    aget-object p2, p0, v0

    invoke-static {p2, v4}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, [Ljava/lang/Object;

    iget-object p3, p4, Lo3/f;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, p3, p4}, Le0/d;->w([Ljava/lang/Object;IILjava/lang/Object;Lo3/f;)[Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v3, v0

    goto :goto_1

    :cond_2
    return-object v3
.end method

.method public static y([Ljava/lang/Object;IILo3/f;)[Ljava/lang/Object;
    .locals 5

    invoke-static {p2, p1}, LG5/E2;->b(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    aget-object p1, p0, v0

    iput-object p1, p3, Lo3/f;->b:Ljava/lang/Object;

    move-object p1, v1

    goto :goto_0

    :cond_0
    aget-object v3, p0, v0

    const-string v4, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-static {v3, v4}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [Ljava/lang/Object;

    sub-int/2addr p1, v2

    invoke-static {v3, p1, p2, p3}, Le0/d;->y([Ljava/lang/Object;IILo3/f;)[Ljava/lang/Object;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/16 p2, 0x20

    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p2, "copyOf(this, newSize)"

    invoke-static {p0, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p1, p0, v0

    return-object p0
.end method


# virtual methods
.method public final A(I[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Le0/d;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1}, LG5/E2;->b(II)I

    move-result v0

    const/16 v1, 0x20

    if-eqz p2, :cond_0

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string v1, "copyOf(this, newSize)"

    invoke-static {p2, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-array p2, v1, [Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    aput-object p3, p2, v0

    goto :goto_1

    :cond_1
    aget-object v2, p2, v0

    check-cast v2, [Ljava/lang/Object;

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1, v2, p3}, Le0/d;->A(I[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p2, v0

    :goto_1
    return-object p2
.end method

.method public final C([Ljava/lang/Object;IILo3/f;)[Ljava/lang/Object;
    .locals 6

    invoke-static {p3, p2}, LG5/E2;->b(II)I

    move-result v0

    const/16 v1, 0x1f

    const-string v2, "copyOf(this, newSize)"

    const/16 v3, 0x20

    if-nez p2, :cond_1

    if-nez v0, :cond_0

    new-array p0, v3, [Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    add-int/lit8 p2, v0, 0x1

    invoke-static {v0, p2, v3, p1, p0}, Lfb/l;->i(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object p2, p4, Lo3/f;->b:Ljava/lang/Object;

    aput-object p2, p0, v1

    aget-object p1, p1, v0

    iput-object p1, p4, Lo3/f;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    aget-object v4, p1, v1

    if-nez v4, :cond_2

    invoke-virtual {p0}, Le0/d;->F()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p2}, LG5/E2;->b(II)I

    move-result v1

    :cond_2
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x5

    add-int/lit8 v2, v0, 0x1

    const-string v3, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    if-gt v2, v1, :cond_3

    :goto_1
    aget-object v4, p1, v1

    invoke-static {v4, v3}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, p2, v5, p4}, Le0/d;->C([Ljava/lang/Object;IILo3/f;)[Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p1, v1

    if-eq v1, v2, :cond_3

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    aget-object v1, p1, v0

    invoke-static {v1, v3}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p2, p3, p4}, Le0/d;->C([Ljava/lang/Object;IILo3/f;)[Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p1, v0

    return-object p1
.end method

.method public final D([Ljava/lang/Object;III)Le0/b;
    .locals 6

    iget v0, p0, Le0/d;->c:I

    sub-int/2addr v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "copyOf(this, newSize)"

    const/16 v4, 0x20

    if-ne v0, v1, :cond_3

    if-nez p3, :cond_1

    array-length p0, p1

    const/16 p2, 0x21

    if-ne p0, p2, :cond_0

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance p0, Le0/h;

    invoke-direct {p0, p1}, Le0/h;-><init>([Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Lo3/f;

    const/16 p4, 0x12

    invoke-direct {p0, p4, v2}, Lo3/f;-><init>(ILjava/lang/Object;)V

    add-int/lit8 p4, p2, -0x1

    invoke-static {p1, p3, p4, p0}, Le0/d;->y([Ljava/lang/Object;IILo3/f;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object p0, p0, Lo3/f;->b:Ljava/lang/Object;

    const-string p4, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-static {p0, p4}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [Ljava/lang/Object;

    aget-object v0, p1, v1

    if-nez v0, :cond_2

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1, p4}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/Object;

    new-instance p4, Le0/d;

    add-int/lit8 p3, p3, -0x5

    invoke-direct {p4, p1, p0, p2, p3}, Le0/d;-><init>([Ljava/lang/Object;[Ljava/lang/Object;II)V

    :goto_0
    move-object p0, p4

    goto :goto_1

    :cond_2
    new-instance p4, Le0/d;

    invoke-direct {p4, p1, p0, p2, p3}, Le0/d;-><init>([Ljava/lang/Object;[Ljava/lang/Object;II)V

    goto :goto_0

    :goto_1
    return-object p0

    :cond_3
    iget-object p0, p0, Le0/d;->b:[Ljava/lang/Object;

    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v3, v0, -0x1

    if-ge p4, v3, :cond_4

    add-int/lit8 v5, p4, 0x1

    invoke-static {p4, v5, v0, p0, v4}, Lfb/l;->i(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_4
    aput-object v2, v4, v3

    new-instance p0, Le0/d;

    add-int/2addr p2, v0

    sub-int/2addr p2, v1

    invoke-direct {p0, p1, v4, p2, p3}, Le0/d;-><init>([Ljava/lang/Object;[Ljava/lang/Object;II)V

    return-object p0
.end method

.method public final F()I
    .locals 0

    iget p0, p0, Le0/d;->c:I

    add-int/lit8 p0, p0, -0x1

    and-int/lit8 p0, p0, -0x20

    return p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Le0/d;->c:I

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Le0/d;->g()I

    move-result v0

    invoke-static {p1, v0}, LG5/y3;->c(II)V

    invoke-virtual {p0}, Le0/d;->F()I

    move-result v0

    if-gt v0, p1, :cond_0

    iget-object p0, p0, Le0/d;->b:[Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Le0/d;->a:[Ljava/lang/Object;

    iget p0, p0, Le0/d;->d:I

    :goto_0
    if-lez p0, :cond_1

    invoke-static {p1, p0}, LG5/E2;->b(II)I

    move-result v1

    aget-object v0, v0, v1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    add-int/lit8 p0, p0, -0x5

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_1
    and-int/lit8 p1, p1, 0x1f

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final i(ILjava/lang/Object;)Le0/b;
    .locals 4

    iget v0, p0, Le0/d;->c:I

    invoke-static {p1, v0}, LG5/y3;->d(II)V

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Le0/d;->m(Ljava/lang/Object;)Le0/b;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Le0/d;->F()I

    move-result v0

    iget-object v1, p0, Le0/d;->a:[Ljava/lang/Object;

    if-lt p1, v0, :cond_1

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, p2, v1}, Le0/d;->x(ILjava/lang/Object;[Ljava/lang/Object;)Le0/d;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lo3/f;

    const/4 v2, 0x0

    const/16 v3, 0x12

    invoke-direct {v0, v3, v2}, Lo3/f;-><init>(ILjava/lang/Object;)V

    iget v2, p0, Le0/d;->d:I

    invoke-static {v1, v2, p1, p2, v0}, Le0/d;->w([Ljava/lang/Object;IILjava/lang/Object;Lo3/f;)[Ljava/lang/Object;

    move-result-object p1

    iget-object p2, v0, Lo3/f;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p1}, Le0/d;->x(ILjava/lang/Object;[Ljava/lang/Object;)Le0/d;

    move-result-object p0

    return-object p0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 7

    iget v0, p0, Le0/d;->c:I

    invoke-static {p1, v0}, LG5/y3;->d(II)V

    new-instance v0, Le0/f;

    iget v1, p0, Le0/d;->d:I

    div-int/lit8 v1, v1, 0x5

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Le0/d;->a:[Ljava/lang/Object;

    iget-object v6, p0, Le0/d;->b:[Ljava/lang/Object;

    iget v3, p0, Le0/d;->c:I

    move-object v1, v0

    move v2, p1

    invoke-direct/range {v1 .. v6}, Le0/f;-><init>(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public final m(Ljava/lang/Object;)Le0/b;
    .locals 5

    invoke-virtual {p0}, Le0/d;->F()I

    move-result v0

    iget v1, p0, Le0/d;->c:I

    sub-int v0, v1, v0

    const/16 v2, 0x20

    iget-object v3, p0, Le0/d;->a:[Ljava/lang/Object;

    iget-object v4, p0, Le0/d;->b:[Ljava/lang/Object;

    if-ge v0, v2, :cond_0

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v4, "copyOf(this, newSize)"

    invoke-static {v2, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p1, v2, v0

    new-instance p1, Le0/d;

    add-int/lit8 v1, v1, 0x1

    iget p0, p0, Le0/d;->d:I

    invoke-direct {p1, v3, v2, v1, p0}, Le0/d;-><init>([Ljava/lang/Object;[Ljava/lang/Object;II)V

    return-object p1

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v3, v4, v0}, Le0/d;->z([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)Le0/d;

    move-result-object p0

    return-object p0
.end method

.method public final p()Le0/e;
    .locals 4

    new-instance v0, Le0/e;

    iget-object v1, p0, Le0/d;->a:[Ljava/lang/Object;

    iget-object v2, p0, Le0/d;->b:[Ljava/lang/Object;

    iget v3, p0, Le0/d;->d:I

    invoke-direct {v0, p0, v1, v2, v3}, Le0/e;-><init>(Le0/b;[Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final r(Landroidx/fragment/app/n;)Le0/b;
    .locals 4

    new-instance v0, Le0/e;

    iget-object v1, p0, Le0/d;->a:[Ljava/lang/Object;

    iget-object v2, p0, Le0/d;->b:[Ljava/lang/Object;

    iget v3, p0, Le0/d;->d:I

    invoke-direct {v0, p0, v1, v2, v3}, Le0/e;-><init>(Le0/b;[Ljava/lang/Object;[Ljava/lang/Object;I)V

    invoke-virtual {v0, p1}, Le0/e;->R(Lsb/k;)Z

    invoke-virtual {v0}, Le0/e;->m()Le0/b;

    move-result-object p0

    return-object p0
.end method

.method public final s(I)Le0/b;
    .locals 7

    iget v0, p0, Le0/d;->c:I

    invoke-static {p1, v0}, LG5/y3;->c(II)V

    invoke-virtual {p0}, Le0/d;->F()I

    move-result v0

    iget-object v1, p0, Le0/d;->a:[Ljava/lang/Object;

    iget v2, p0, Le0/d;->d:I

    if-lt p1, v0, :cond_0

    sub-int/2addr p1, v0

    invoke-virtual {p0, v1, v0, v2, p1}, Le0/d;->D([Ljava/lang/Object;III)Le0/b;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v3, Lo3/f;

    iget-object v4, p0, Le0/d;->b:[Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v6, 0x12

    invoke-direct {v3, v6, v4}, Lo3/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1, v2, p1, v3}, Le0/d;->C([Ljava/lang/Object;IILo3/f;)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v2, v5}, Le0/d;->D([Ljava/lang/Object;III)Le0/b;

    move-result-object p0

    return-object p0
.end method

.method public final u(ILjava/lang/Object;)Le0/b;
    .locals 4

    iget v0, p0, Le0/d;->c:I

    invoke-static {p1, v0}, LG5/y3;->c(II)V

    invoke-virtual {p0}, Le0/d;->F()I

    move-result v1

    iget-object v2, p0, Le0/d;->a:[Ljava/lang/Object;

    iget-object v3, p0, Le0/d;->b:[Ljava/lang/Object;

    iget p0, p0, Le0/d;->d:I

    if-gt v1, p1, :cond_0

    const/16 v1, 0x20

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "copyOf(this, newSize)"

    invoke-static {v1, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p1, 0x1f

    aput-object p2, v1, p1

    new-instance p1, Le0/d;

    invoke-direct {p1, v2, v1, v0, p0}, Le0/d;-><init>([Ljava/lang/Object;[Ljava/lang/Object;II)V

    return-object p1

    :cond_0
    invoke-static {v2, p0, p1, p2}, Le0/d;->I([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    new-instance p2, Le0/d;

    invoke-direct {p2, p1, v3, v0, p0}, Le0/d;-><init>([Ljava/lang/Object;[Ljava/lang/Object;II)V

    return-object p2
.end method

.method public final x(ILjava/lang/Object;[Ljava/lang/Object;)Le0/d;
    .locals 6

    invoke-virtual {p0}, Le0/d;->F()I

    move-result v0

    iget v1, p0, Le0/d;->c:I

    sub-int v0, v1, v0

    iget-object v2, p0, Le0/d;->b:[Ljava/lang/Object;

    const/16 v3, 0x20

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "copyOf(this, newSize)"

    invoke-static {v4, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3, p1, v0, v2, v4}, Lfb/l;->i(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    aput-object p2, v4, p1

    new-instance p1, Le0/d;

    add-int/lit8 v1, v1, 0x1

    iget p0, p0, Le0/d;->d:I

    invoke-direct {p1, p3, v4, v1, p0}, Le0/d;-><init>([Ljava/lang/Object;[Ljava/lang/Object;II)V

    return-object p1

    :cond_0
    const/16 v1, 0x1f

    aget-object v1, v2, v1

    add-int/lit8 v5, p1, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v5, p1, v0, v2, v4}, Lfb/l;->i(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    aput-object p2, v4, p1

    new-array p1, v3, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object v1, p1, p2

    invoke-virtual {p0, p3, v4, p1}, Le0/d;->z([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)Le0/d;

    move-result-object p0

    return-object p0
.end method

.method public final z([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)Le0/d;
    .locals 5

    iget v0, p0, Le0/d;->c:I

    shr-int/lit8 v1, v0, 0x5

    const/4 v2, 0x1

    iget v3, p0, Le0/d;->d:I

    shl-int v4, v2, v3

    if-le v1, v4, :cond_0

    const/16 v1, 0x20

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {p0, v3, v1, p2}, Le0/d;->A(I[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Le0/d;

    add-int/2addr v0, v2

    invoke-direct {p1, p0, p3, v0, v3}, Le0/d;-><init>([Ljava/lang/Object;[Ljava/lang/Object;II)V

    return-object p1

    :cond_0
    invoke-virtual {p0, v3, p1, p2}, Le0/d;->A(I[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Le0/d;

    add-int/2addr v0, v2

    invoke-direct {p1, p0, p3, v0, v3}, Le0/d;-><init>([Ljava/lang/Object;[Ljava/lang/Object;II)V

    return-object p1
.end method
