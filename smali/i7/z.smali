.class public abstract Li7/z;
.super Li7/p;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:I

.field public b:I

.field public c:Li7/y;

.field public d:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_1

    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    iput p1, p0, Li7/z;->a:I

    iput p2, p0, Li7/z;->b:I

    const/4 p1, 0x0

    iput-object p1, p0, Li7/z;->c:Li7/y;

    iput v0, p0, Li7/z;->d:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "writeSize < -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid alignment"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Li7/z;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Li7/p;->c()Li7/q;

    move-result-object v0

    invoke-virtual {p1}, Li7/p;->c()Li7/q;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Li7/z;->f(Li7/z;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final d()I
    .locals 1

    iget p0, p0, Li7/z;->b:I

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "writeSize is unknown"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Li7/f;Ln7/b;)V
    .locals 3

    iget v0, p0, Li7/z;->a:I

    invoke-virtual {p2, v0}, Ln7/b;->a(I)V

    :try_start_0
    iget v0, p0, Li7/z;->b:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Li7/z;->g()I

    move-result v0

    iget v1, p2, Ln7/b;->c:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Li7/z;->n(Li7/f;Ln7/b;)V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ln7/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected cursor "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; actual value: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Ln7/b;->c:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Ln7/d;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "writeSize is unknown"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "...while writing "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Ln7/d;->a(Ljava/lang/String;Ljava/lang/Exception;)Ln7/d;

    move-result-object p0

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    check-cast p1, Li7/z;

    invoke-virtual {p0}, Li7/p;->c()Li7/q;

    move-result-object v1

    invoke-virtual {p1}, Li7/p;->c()Li7/q;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0, p1}, Li7/z;->f(Li7/z;)I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    return v0
.end method

.method public f(Li7/z;)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Li7/z;->d:I

    if-ltz v0, :cond_2

    iget-object p0, p0, Li7/z;->c:Li7/y;

    if-ltz v0, :cond_1

    iget p0, p0, Li7/C;->d:I

    if-ltz p0, :cond_0

    add-int/2addr p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "fileOffset not yet set"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "relative < 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "offset not yet known"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Li7/z;->g()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final k(Li7/y;I)I
    .locals 1

    if-ltz p2, :cond_1

    iget-object v0, p0, Li7/z;->c:Li7/y;

    if-nez v0, :cond_0

    iget v0, p0, Li7/z;->a:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr p2, v0

    not-int v0, v0

    and-int/2addr p2, v0

    iput-object p1, p0, Li7/z;->c:Li7/y;

    iput p2, p0, Li7/z;->d:I

    invoke-virtual {p0, p1, p2}, Li7/z;->l(Li7/y;I)V

    return p2

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "already written"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "offset < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public l(Li7/y;I)V
    .locals 0

    return-void
.end method

.method public final m(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Li7/z;->b:I

    if-gez v0, :cond_0

    iput p1, p0, Li7/z;->b:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "writeSize already set"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "writeSize < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract n(Li7/f;Ln7/b;)V
.end method
