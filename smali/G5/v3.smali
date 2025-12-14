.class public abstract LG5/v3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lg7/k;)Ljava/lang/String;
    .locals 6

    check-cast p0, Lg7/v;

    invoke-virtual {p0}, Lg7/v;->l()I

    move-result p0

    int-to-short v0, p0

    const/16 v1, 0x10

    const/16 v2, 0x2b

    const/16 v3, 0x2d

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-ne p0, v0, :cond_2

    const/4 v0, 0x5

    new-array v0, v0, [C

    if-gez p0, :cond_0

    aput-char v3, v0, v4

    neg-int p0, p0

    goto :goto_0

    :cond_0
    aput-char v2, v0, v4

    :goto_0
    if-ge v4, v5, :cond_1

    rsub-int/lit8 v2, v4, 0x4

    and-int/lit8 v3, p0, 0xf

    invoke-static {v3, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v0, v2

    shr-int/2addr p0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_2

    :cond_2
    const/16 v0, 0x9

    new-array v0, v0, [C

    if-gez p0, :cond_3

    aput-char v3, v0, v4

    neg-int p0, p0

    goto :goto_1

    :cond_3
    aput-char v2, v0, v4

    :goto_1
    const/16 v2, 0x8

    if-ge v4, v2, :cond_4

    rsub-int/lit8 v2, v4, 0x8

    and-int/lit8 v3, p0, 0xf

    invoke-static {v3, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    aput-char v3, v0, v2

    shr-int/2addr p0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    :goto_2
    return-object p0
.end method

.method public static c(Lg7/k;)Ljava/lang/String;
    .locals 1

    check-cast p0, Lg7/v;

    iget-object p0, p0, Lg7/v;->f:Lg7/e;

    invoke-virtual {p0}, Lg7/g;->c()I

    move-result p0

    int-to-char v0, p0

    if-ne p0, v0, :cond_0

    invoke-static {p0}, Lqd/d;->e(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static e(II)S
    .locals 1

    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_1

    and-int/lit16 v0, p1, 0xff

    if-ne v0, p1, :cond_0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "high out of range 0..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "low out of range 0..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Lg7/k;)Ljava/lang/String;
    .locals 2

    check-cast p0, Lg7/f;

    iget v0, p0, Lg7/f;->g:I

    if-ltz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lg7/f;->l()I

    move-result v1

    iget-object p0, p0, Lg7/f;->f:Ll7/a;

    invoke-virtual {p0}, Ll7/a;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x40

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/high16 p0, 0x10000

    if-ge v1, p0, :cond_0

    invoke-static {v1}, Lqd/d;->e(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static h(Lg7/k;)Ljava/lang/String;
    .locals 1

    check-cast p0, Lg7/f;

    iget-object p0, p0, Lg7/f;->f:Ll7/a;

    instance-of v0, p0, Ll7/t;

    if-eqz v0, :cond_0

    check-cast p0, Ll7/t;

    invoke-virtual {p0}, Ll7/t;->g()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ln7/h;->a()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static l(Lk7/l;)Z
    .locals 7

    iget-object v0, p0, Ln7/e;->b:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk7/k;

    iget v3, v3, Lk7/k;->a:I

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {p0, v4}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk7/k;

    iget v6, v5, Lk7/k;->a:I

    if-eq v6, v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v5}, Lk7/k;->e()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static m(Ll7/n;I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    instance-of v1, p0, Ll7/m;

    if-eqz v1, :cond_0

    check-cast p0, Ll7/m;

    iget-wide v1, p0, Ll7/m;->a:J

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ll7/n;->h()I

    move-result p0

    int-to-long v1, p0

    :goto_0
    const/4 p0, 0x4

    const/16 v3, 0x10

    if-eq p1, p0, :cond_5

    const/16 p0, 0x8

    if-eq p1, p0, :cond_4

    if-eq p1, v3, :cond_3

    const/16 p0, 0x20

    if-eq p1, p0, :cond_2

    const/16 p0, 0x40

    if-ne p1, p0, :cond_1

    invoke-static {v1, v2}, Lqd/d;->g(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "shouldn\'t happen"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    long-to-int p0, v1

    invoke-static {p0}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    long-to-int p0, v1

    invoke-static {p0}, Lqd/d;->e(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    long-to-int p0, v1

    invoke-static {p0}, Lqd/d;->d(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    long-to-int p0, v1

    and-int/lit8 p0, p0, 0xf

    invoke-static {p0, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result p0

    const/4 p1, 0x1

    new-array p1, p1, [C

    const/4 v1, 0x0

    aput-char p0, p1, v1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ll7/n;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    instance-of v1, p0, Ll7/k;

    if-eqz v1, :cond_0

    const-string p0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ll7/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Ln7/h;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static o(II)I
    .locals 1

    and-int/lit8 v0, p0, 0xf

    if-ne v0, p0, :cond_1

    and-int/lit8 v0, p1, 0xf

    if-ne v0, p1, :cond_0

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "high out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "low out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static p(Lg7/g;I)S
    .locals 1

    and-int/lit16 v0, p1, 0xff

    if-ne v0, p1, :cond_1

    iget-object p0, p0, Lg7/g;->b:Lg7/i;

    iget p0, p0, Lg7/i;->a:I

    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "opcode out of range 0..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "arg out of range 0..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static q(Lg7/k;)S
    .locals 1

    iget-object p0, p0, Lg7/g;->b:Lg7/i;

    iget p0, p0, Lg7/i;->a:I

    const/16 v0, 0xff

    if-lt p0, v0, :cond_0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "extended opcode out of range 255..65535"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static r(Lk7/l;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Ln7/e;->b:[Ljava/lang/Object;

    array-length v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk7/k;

    invoke-virtual {v0}, Lk7/k;->e()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget v3, v0, Lk7/k;->a:I

    add-int/lit8 v4, v3, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lk7/k;->b:Lm7/d;

    invoke-static {v4, v0}, Lk7/k;->f(ILm7/d;)Lk7/k;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk7/k;

    invoke-virtual {p0}, Lk7/k;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lk7/k;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk7/k;

    invoke-virtual {p0}, Lk7/k;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    const-string p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static s(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method public static t(I)Z
    .locals 1

    and-int/lit16 v0, p0, 0xff

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static u(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0xf

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static v(I)Z
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public b(Lg7/v;)Z
    .locals 0

    instance-of p0, p0, Lh7/b;

    return p0
.end method

.method public abstract d()I
.end method

.method public f(Lg7/g;)Ljava/util/BitSet;
    .locals 0

    new-instance p0, Ljava/util/BitSet;

    invoke-direct {p0}, Ljava/util/BitSet;-><init>()V

    return-object p0
.end method

.method public abstract i(Lg7/k;)Ljava/lang/String;
.end method

.method public abstract j(Lg7/k;)Ljava/lang/String;
.end method

.method public abstract k(Lg7/g;)Z
.end method

.method public abstract w(Ln7/b;Lg7/k;)V
.end method
