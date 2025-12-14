.class public abstract LQd/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final c:Ljava/util/List;


# instance fields
.field public a:LQd/u;

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, LQd/u;->c:Ljava/util/List;

    return-void
.end method

.method public static n(Ljava/lang/StringBuilder;ILQd/h;)V
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    move-result-object p0

    iget v1, p2, LQd/h;->f:I

    mul-int/2addr p1, v1

    sget-object v1, LPd/b;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_5

    iget p2, p2, LQd/h;->g:I

    const/4 v2, -0x1

    if-lt p2, v2, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-static {v3}, LOd/b;->d(Z)V

    if-eq p2, v2, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_2
    const/16 p2, 0x15

    if-ge p1, p2, :cond_3

    sget-object p2, LPd/b;->a:[Ljava/lang/String;

    aget-object p1, p2, p1

    goto :goto_3

    :cond_3
    new-array p2, p1, [C

    :goto_2
    if-ge v1, p1, :cond_4

    const/16 v2, 0x20

    aput-char v2, p2, v1

    add-int/2addr v1, v0

    goto :goto_2

    :cond_4
    invoke-static {p2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    :cond_5
    new-instance p0, LOd/c;

    const-string p1, "width must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, LOd/b;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, LQd/u;->m()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LQd/u;->e()LQd/c;

    move-result-object v0

    invoke-virtual {v0, p1}, LQd/c;->u(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, LQd/u;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LQd/u;->e()LQd/c;

    move-result-object p0

    invoke-virtual {p0, p1}, LQd/c;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, LPd/b;->d:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1, p0}, LPd/b;->h(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    sget-object p1, LPd/b;->c:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    move-object v1, p0

    :cond_0
    move-object p0, v1

    :goto_0
    return-object p0

    :cond_1
    return-object v1
.end method

.method public final varargs b(I[LQd/u;)V
    .locals 7

    invoke-static {p2}, LOd/b;->g(Ljava/lang/Object;)V

    array-length v0, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LQd/u;->k()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, p2, v1

    invoke-virtual {v2}, LQd/u;->u()LQd/u;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, LQd/u;->g()I

    move-result v3

    array-length v4, p2

    if-ne v3, v4, :cond_7

    invoke-virtual {v2}, LQd/u;->k()Ljava/util/List;

    move-result-object v3

    array-length v4, p2

    :goto_0
    add-int/lit8 v5, v4, -0x1

    if-lez v4, :cond_2

    aget-object v4, p2, v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v4, v6, :cond_1

    goto :goto_3

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, LQd/u;->g()I

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    invoke-virtual {v2}, LQd/u;->j()LQd/u;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    array-length v0, p2

    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_4

    aget-object v0, p2, v2

    iput-object p0, v0, LQd/u;->a:LQd/u;

    move v0, v2

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    aget-object p2, p2, v1

    iget p2, p2, LQd/u;->b:I

    if-eqz p2, :cond_6

    :cond_5
    invoke-virtual {p0, p1}, LQd/u;->v(I)V

    :cond_6
    return-void

    :cond_7
    :goto_3
    array-length v2, p2

    move v3, v1

    :goto_4
    if-ge v3, v2, :cond_9

    aget-object v4, p2, v3

    if-eqz v4, :cond_8

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    new-instance p0, LOd/c;

    const-string p1, "Array must not contain any null objects"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    array-length v2, p2

    :goto_5
    if-ge v1, v2, :cond_b

    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, LQd/u;->a:LQd/u;

    if-eqz v4, :cond_a

    invoke-virtual {v4, v3}, LQd/u;->x(LQd/u;)V

    :cond_a
    iput-object p0, v3, LQd/u;->a:LQd/u;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {p0, p1}, LQd/u;->v(I)V

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, LOd/b;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, LQd/u;->m()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, LQd/u;->e()LQd/c;

    move-result-object v0

    invoke-virtual {v0, p1}, LQd/c;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    return-object v0

    :cond_1
    const-string v0, "abs:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LQd/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, LQd/u;->h()LQd/u;

    move-result-object p0

    return-object p0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, LG5/C;->e(LQd/u;)LZ3/x;

    move-result-object v0

    iget-object v0, v0, LZ3/x;->d:Ljava/lang/Object;

    check-cast v0, Lorg/jsoup/parser/E;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, v0, Lorg/jsoup/parser/E;->b:Z

    if-nez v0, :cond_0

    invoke-static {p1}, LG5/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p0}, LQd/u;->e()LQd/c;

    move-result-object p0

    invoke-virtual {p0, p1}, LQd/c;->u(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, LQd/c;->c:[Ljava/lang/Object;

    aput-object p2, v1, v0

    iget-object p2, p0, LQd/c;->b:[Ljava/lang/String;

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p0, p0, LQd/c;->b:[Ljava/lang/String;

    aput-object p1, p0, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, LQd/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public abstract e()LQd/c;
.end method

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

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()I
.end method

.method public h()LQd/u;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LQd/u;->i(LQd/u;)LQd/u;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQd/u;

    invoke-virtual {v1}, LQd/u;->g()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1}, LQd/u;->k()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LQd/u;

    invoke-virtual {v5, v1}, LQd/u;->i(LQd/u;)LQd/u;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public i(LQd/u;)LQd/u;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQd/u;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, v0, LQd/u;->a:LQd/u;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, LQd/u;->b:I

    :goto_0
    iput v1, v0, LQd/u;->b:I

    if-nez p1, :cond_3

    instance-of p1, p0, LQd/j;

    if-nez p1, :cond_3

    invoke-virtual {p0}, LQd/u;->y()LQd/u;

    move-result-object p0

    instance-of p1, p0, LQd/j;

    if-eqz p1, :cond_1

    check-cast p0, LQd/j;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_3

    new-instance p1, LQd/j;

    invoke-virtual {p0}, LQd/n;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, LQd/j;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LQd/n;->g:LQd/c;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, LQd/c;->m()LQd/c;

    move-result-object v1

    iput-object v1, p1, LQd/n;->g:LQd/c;

    :cond_2
    iget-object p0, p0, LQd/j;->j:LQd/h;

    invoke-virtual {p0}, LQd/h;->a()LQd/h;

    move-result-object p0

    iput-object p0, p1, LQd/j;->j:LQd/h;

    iput-object p1, v0, LQd/u;->a:LQd/u;

    invoke-virtual {p1}, LQd/n;->k()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public abstract j()LQd/u;
.end method

.method public abstract k()Ljava/util/List;
.end method

.method public l(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p1}, LOd/b;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, LQd/u;->m()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "abs:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LQd/u;->e()LQd/c;

    move-result-object v4

    invoke-virtual {v4, v0}, LQd/c;->u(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v3, :cond_1

    invoke-virtual {p0, v0}, LQd/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, LQd/u;->e()LQd/c;

    move-result-object p0

    invoke-virtual {p0, p1}, LQd/c;->u(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v3, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public abstract m()Z
.end method

.method public final o()LQd/u;
    .locals 3

    iget-object v0, p0, LQd/u;->a:LQd/u;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, LQd/u;->k()Ljava/util/List;

    move-result-object v0

    iget p0, p0, LQd/u;->b:I

    add-int/lit8 p0, p0, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQd/u;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public abstract p()Ljava/lang/String;
.end method

.method public q()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, LQd/u;->p()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 4

    invoke-static {}, LPd/b;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/auth/j;

    invoke-virtual {p0}, LQd/u;->y()LQd/u;

    move-result-object v2

    instance-of v3, v2, LQd/j;

    if-eqz v3, :cond_0

    check-cast v2, LQd/j;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    iget-object v2, v2, LQd/j;->j:LQd/h;

    goto :goto_2

    :cond_1
    new-instance v2, LQd/j;

    const-string v3, ""

    invoke-direct {v2, v3}, LQd/j;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/auth/j;-><init>(Ljava/lang/StringBuilder;LQd/h;)V

    invoke-static {v1, p0}, LG5/I;->h(LRd/p;LQd/u;)V

    invoke-static {v0}, LPd/b;->g(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract s(Ljava/lang/StringBuilder;ILQd/h;)V
.end method

.method public abstract t(Ljava/lang/StringBuilder;ILQd/h;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, LQd/u;->r()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()LQd/u;
    .locals 0

    iget-object p0, p0, LQd/u;->a:LQd/u;

    return-object p0
.end method

.method public final v(I)V
    .locals 2

    invoke-virtual {p0}, LQd/u;->g()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LQd/u;->k()Ljava/util/List;

    move-result-object p0

    :goto_0
    if-ge p1, v0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQd/u;

    iput p1, v1, LQd/u;->b:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final w()V
    .locals 1

    iget-object v0, p0, LQd/u;->a:LQd/u;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, LQd/u;->x(LQd/u;)V

    :cond_0
    return-void
.end method

.method public x(LQd/u;)V
    .locals 2

    iget-object v0, p1, LQd/u;->a:LQd/u;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LOd/b;->d(Z)V

    iget v0, p1, LQd/u;->b:I

    invoke-virtual {p0}, LQd/u;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v0}, LQd/u;->v(I)V

    const/4 p0, 0x0

    iput-object p0, p1, LQd/u;->a:LQd/u;

    return-void
.end method

.method public y()LQd/u;
    .locals 1

    :goto_0
    iget-object v0, p0, LQd/u;->a:LQd/u;

    if-eqz v0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    return-object p0
.end method
