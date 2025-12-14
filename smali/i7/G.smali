.class public final Li7/G;
.super Li7/z;
.source "SourceFile"


# instance fields
.field public final e:Lm7/e;


# direct methods
.method public constructor <init>(Lm7/e;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Ln7/e;

    iget-object v0, v0, Ln7/e;->b:[Ljava/lang/Object;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    add-int/2addr v0, v1

    invoke-direct {p0, v1, v0}, Li7/z;-><init>(II)V

    iput-object p1, p0, Li7/G;->e:Lm7/e;

    return-void
.end method


# virtual methods
.method public final a(Li7/f;)V
    .locals 3

    iget-object p1, p1, Li7/f;->f:Li7/B;

    iget-object p0, p0, Li7/G;->e:Lm7/e;

    move-object v0, p0

    check-cast v0, Ln7/e;

    iget-object v0, v0, Ln7/e;->b:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Lm7/e;->getType(I)Lm7/c;

    move-result-object v2

    invoke-virtual {p1, v2}, Li7/B;->q(Lm7/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()Li7/q;
    .locals 0

    sget-object p0, Li7/q;->TYPE_TYPE_LIST:Li7/q;

    return-object p0
.end method

.method public final f(Li7/z;)I
    .locals 8

    const/4 v0, 0x1

    check-cast p1, Li7/G;

    iget-object p1, p1, Li7/G;->e:Lm7/e;

    sget-object v1, Lm7/b;->c:Lm7/b;

    iget-object p0, p0, Li7/G;->e:Lm7/e;

    move-object v1, p0

    check-cast v1, Ln7/e;

    iget-object v1, v1, Ln7/e;->b:[Ljava/lang/Object;

    array-length v1, v1

    move-object v2, p1

    check-cast v2, Ln7/e;

    iget-object v2, v2, Ln7/e;->b:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    invoke-interface {p0, v5}, Lm7/e;->getType(I)Lm7/c;

    move-result-object v6

    invoke-interface {p1, v5}, Lm7/e;->getType(I)Lm7/c;

    move-result-object v7

    iget-object v6, v6, Lm7/c;->a:Ljava/lang/String;

    iget-object v7, v7, Lm7/c;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    move v0, v6

    goto :goto_1

    :cond_0
    add-int/2addr v5, v0

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    if-ge v1, v2, :cond_3

    const/4 v0, -0x1

    :cond_3
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Lm7/b;->c:Lm7/b;

    iget-object p0, p0, Li7/G;->e:Lm7/e;

    move-object v0, p0

    check-cast v0, Ln7/e;

    iget-object v0, v0, Ln7/e;->b:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    invoke-interface {p0, v1}, Lm7/e;->getType(I)Lm7/c;

    move-result-object v3

    iget-object v3, v3, Lm7/c;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final n(Li7/f;Ln7/b;)V
    .locals 7

    iget-object p1, p1, Li7/f;->f:Li7/B;

    iget-object v0, p0, Li7/G;->e:Lm7/e;

    move-object v1, v0

    check-cast v1, Ln7/e;

    iget-object v1, v1, Ln7/e;->b:[Ljava/lang/Object;

    array-length v1, v1

    invoke-virtual {p2}, Ln7/b;->d()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Li7/z;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " type_list"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v3, p0}, Ln7/b;->b(ILjava/lang/String;)V

    invoke-static {v1}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "  size: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x4

    invoke-virtual {p2, v2, p0}, Ln7/b;->b(ILjava/lang/String;)V

    move p0, v3

    :goto_0
    if-ge p0, v1, :cond_0

    invoke-interface {v0, p0}, Lm7/e;->getType(I)Lm7/c;

    move-result-object v2

    invoke-virtual {p1, v2}, Li7/B;->n(Lm7/c;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lqd/d;->e(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " // "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lm7/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {p2, v4, v2}, Ln7/b;->b(ILjava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v1}, Ln7/b;->j(I)V

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Lm7/e;->getType(I)Lm7/c;

    move-result-object p0

    invoke-virtual {p1, p0}, Li7/B;->n(Lm7/c;)I

    move-result p0

    invoke-virtual {p2, p0}, Ln7/b;->k(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
