.class public final Lk7/l;
.super Ln7/e;
.source "SourceFile"

# interfaces
.implements Lm7/e;


# static fields
.field public static final c:Lk7/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk7/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln7/e;-><init>(I)V

    sput-object v0, Lk7/l;->c:Lk7/l;

    return-void
.end method

.method public static k(Lk7/k;)Lk7/l;
    .locals 2

    new-instance v0, Lk7/l;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ln7/e;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ln7/e;->f(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static l(Lk7/k;Lk7/k;)Lk7/l;
    .locals 2

    new-instance v0, Lk7/l;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ln7/e;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ln7/e;->f(ILjava/lang/Object;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0, p1}, Ln7/e;->f(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final getType(I)Lm7/c;
    .locals 0

    invoke-virtual {p0, p1}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk7/k;

    iget-object p0, p0, Lk7/k;->b:Lm7/d;

    invoke-interface {p0}, Lm7/d;->getType()Lm7/c;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final h()I
    .locals 4

    iget-object v0, p0, Ln7/e;->b:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lk7/l;->getType(I)Lm7/c;

    move-result-object v3

    invoke-virtual {v3}, Lm7/c;->f()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final m(ZLjava/util/BitSet;)Lk7/l;
    .locals 7

    iget-object v0, p0, Ln7/e;->b:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lk7/l;

    invoke-direct {v1, v0}, Ln7/e;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_6

    invoke-virtual {p0, v3}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk7/k;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_3

    :goto_1
    iget v6, v5, Lk7/k;->a:I

    if-ne v6, v4, :cond_2

    move-object v6, v5

    goto :goto_2

    :cond_2
    iget-object v6, v5, Lk7/k;->b:Lm7/d;

    invoke-static {v4, v6}, Lk7/k;->f(ILm7/d;)Lk7/k;

    move-result-object v6

    :goto_2
    invoke-virtual {v1, v3, v6}, Ln7/e;->f(ILjava/lang/Object;)V

    if-nez p1, :cond_4

    invoke-virtual {v5}, Lk7/k;->e()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v3, v5}, Ln7/e;->f(ILjava/lang/Object;)V

    :cond_4
    :goto_3
    if-eqz p1, :cond_5

    move p1, v2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    iget-boolean p0, p0, LEc/g;->a:Z

    if-nez p0, :cond_7

    iput-boolean v2, v1, LEc/g;->a:Z

    :cond_7
    return-object v1
.end method

.method public final n(I)Lk7/l;
    .locals 7

    iget-object v0, p0, Ln7/e;->b:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lk7/l;

    invoke-direct {v1, v0}, Ln7/e;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    invoke-virtual {p0, v3}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk7/k;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget v5, v4, Lk7/k;->a:I

    add-int v6, v5, p1

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, v4, Lk7/k;->b:Lm7/d;

    invoke-static {v6, v4}, Lk7/k;->f(ILm7/d;)Lk7/k;

    move-result-object v4

    :goto_1
    invoke-virtual {v1, v3, v4}, Ln7/e;->f(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-boolean p0, p0, LEc/g;->a:Z

    if-nez p0, :cond_4

    iput-boolean v2, v1, LEc/g;->a:Z

    :cond_4
    return-object v1
.end method
