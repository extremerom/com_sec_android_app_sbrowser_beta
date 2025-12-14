.class public final Ll7/q;
.super Ll7/p;
.source "SourceFile"


# instance fields
.field public final c:Lm7/a;

.field public d:Lm7/a;


# direct methods
.method public constructor <init>(Ll7/u;Ll7/r;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ll7/p;-><init>(Ll7/u;Ll7/r;)V

    iget-object p1, p2, Ll7/r;->b:Ll7/t;

    iget-object p1, p1, Ll7/t;->a:Ljava/lang/String;

    invoke-static {p1}, Lm7/a;->d(Ljava/lang/String;)Lm7/a;

    move-result-object p1

    iput-object p1, p0, Ll7/q;->c:Lm7/a;

    const/4 p1, 0x0

    iput-object p1, p0, Ll7/q;->d:Lm7/a;

    return-void
.end method


# virtual methods
.method public final e(Ll7/a;)I
    .locals 3

    move-object v0, p1

    check-cast v0, Ll7/p;

    iget-object v1, v0, Ll7/p;->a:Ll7/u;

    iget-object v2, p0, Ll7/p;->a:Ll7/u;

    invoke-virtual {v2, v1}, Ll7/a;->d(Ll7/a;)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ll7/p;->b:Ll7/r;

    iget-object v1, v1, Ll7/r;->a:Ll7/t;

    iget-object v0, v0, Ll7/p;->b:Ll7/r;

    iget-object v0, v0, Ll7/r;->a:Ll7/t;

    invoke-virtual {v1, v0}, Ll7/a;->d(Ll7/a;)I

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    return v1

    :cond_1
    check-cast p1, Ll7/q;

    iget-object p0, p0, Ll7/q;->c:Lm7/a;

    iget-object p1, p1, Ll7/q;->c:Lm7/a;

    invoke-virtual {p0, p1}, Lm7/a;->a(Lm7/a;)I

    move-result p0

    return p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    const-string p0, "method"

    return-object p0
.end method

.method public final g(Z)I
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Ll7/q;->c:Lm7/a;

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Ll7/q;->d:Lm7/a;

    if-nez p1, :cond_2

    iget-object p1, p0, Ll7/p;->a:Ll7/u;

    iget-object p1, p1, Ll7/u;->a:Lm7/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lm7/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lm7/a;->a:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lm7/a;->c:Lm7/b;

    iget-object v3, v3, Ln7/e;->b:[Ljava/lang/Object;

    array-length v4, v3

    new-instance v5, Lm7/b;

    add-int/lit8 v6, v4, 0x1

    invoke-direct {v5, v6}, Ln7/e;-><init>(I)V

    invoke-virtual {v5, v0, p1}, Ln7/e;->f(ILjava/lang/Object;)V

    move p1, v0

    :goto_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v6, p1, 0x1

    aget-object p1, v3, p1

    invoke-virtual {v5, v6, p1}, Ln7/e;->f(ILjava/lang/Object;)V

    move p1, v6

    goto :goto_0

    :cond_1
    iput-boolean v0, v5, LEc/g;->a:Z

    new-instance p1, Lm7/a;

    iget-object v1, v1, Lm7/a;->b:Lm7/c;

    invoke-direct {p1, v2, v1, v5}, Lm7/a;-><init>(Ljava/lang/String;Lm7/c;Lm7/b;)V

    invoke-static {p1}, Lm7/a;->e(Lm7/a;)Lm7/a;

    move-result-object p1

    iput-object p1, p0, Ll7/q;->d:Lm7/a;

    :cond_2
    iget-object v1, p0, Ll7/q;->d:Lm7/a;

    :goto_1
    iget-object p0, v1, Lm7/a;->c:Lm7/b;

    iget-object p1, p0, Ln7/e;->b:[Ljava/lang/Object;

    array-length p1, p1

    move v1, v0

    :goto_2
    if-ge v0, p1, :cond_3

    invoke-virtual {p0, v0}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm7/c;

    invoke-virtual {v2}, Lm7/c;->f()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return v1
.end method

.method public final getType()Lm7/c;
    .locals 0

    iget-object p0, p0, Ll7/q;->c:Lm7/a;

    iget-object p0, p0, Lm7/a;->b:Lm7/c;

    return-object p0
.end method
