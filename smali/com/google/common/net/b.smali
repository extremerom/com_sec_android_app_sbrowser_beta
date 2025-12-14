.class public final Lcom/google/common/net/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/google/common/base/C;

.field public static final e:LG5/g4;

.field public static final f:Lcom/google/common/base/p;

.field public static final g:Lcom/google/common/base/C;

.field public static final h:Lcom/google/common/base/g;

.field public static final i:Lcom/google/common/base/C;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/common/collect/u;

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, ".\u3002\uff0e\uff61"

    invoke-static {v0}, Lcom/google/common/base/C;->b(Ljava/lang/String;)Lcom/google/common/base/C;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/b;->d:Lcom/google/common/base/C;

    new-instance v0, Lcom/google/common/base/h;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Lcom/google/common/base/h;-><init>(C)V

    new-instance v2, LG5/g4;

    new-instance v3, Lo3/f;

    const/16 v4, 0x11

    invoke-direct {v3, v4, v0}, Lo3/f;-><init>(ILjava/lang/Object;)V

    invoke-direct {v2, v3}, LG5/g4;-><init>(Lo3/f;)V

    sput-object v2, Lcom/google/common/net/b;->e:LG5/g4;

    new-instance v0, Lcom/google/common/base/p;

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/net/b;->f:Lcom/google/common/base/p;

    const-string v0, "-_"

    invoke-static {v0}, Lcom/google/common/base/C;->b(Ljava/lang/String;)Lcom/google/common/base/C;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/b;->g:Lcom/google/common/base/C;

    new-instance v1, Lcom/google/common/base/g;

    const/16 v2, 0x30

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/common/base/g;-><init>(CCI)V

    sput-object v1, Lcom/google/common/net/b;->h:Lcom/google/common/base/g;

    new-instance v2, Lcom/google/common/base/g;

    const/16 v3, 0x61

    const/16 v4, 0x7a

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/google/common/base/g;-><init>(CCI)V

    new-instance v3, Lcom/google/common/base/g;

    const/16 v4, 0x41

    const/16 v5, 0x5a

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/common/base/g;-><init>(CCI)V

    new-instance v4, Lcom/google/common/base/j;

    invoke-direct {v4, v2, v3}, Lcom/google/common/base/j;-><init>(Lcom/google/common/base/C;Lcom/google/common/base/C;)V

    new-instance v2, Lcom/google/common/base/j;

    invoke-direct {v2, v1, v4}, Lcom/google/common/base/j;-><init>(Lcom/google/common/base/C;Lcom/google/common/base/C;)V

    new-instance v1, Lcom/google/common/base/j;

    invoke-direct {v1, v2, v0}, Lcom/google/common/base/j;-><init>(Lcom/google/common/base/C;Lcom/google/common/base/C;)V

    sput-object v1, Lcom/google/common/net/b;->i:Lcom/google/common/base/C;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/common/net/b;->c:I

    sget-object v0, Lcom/google/common/net/b;->d:Lcom/google/common/base/C;

    invoke-virtual {v0, p1}, Lcom/google/common/base/C;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/C;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {v2, v1, p1}, LB/e;->n(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xfd

    if-gt v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const-string v3, "Domain name too long: \'%s\':"

    invoke-static {v3, p1, v0}, Lcom/google/common/base/C;->d(Ljava/lang/String;Ljava/lang/Object;Z)V

    iput-object p1, p0, Lcom/google/common/net/b;->a:Ljava/lang/String;

    sget-object v0, Lcom/google/common/net/b;->e:LG5/g4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/common/base/v;

    invoke-direct {v3, v0, p1}, Lcom/google/common/base/v;-><init>(LG5/g4;Ljava/lang/String;)V

    sget-object v0, Lcom/google/common/collect/u;->b:Lcom/google/common/collect/s;

    instance-of v0, v3, Ljava/util/Collection;

    if-eqz v0, :cond_2

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lcom/google/common/collect/u;->u(Ljava/util/Collection;)Lcom/google/common/collect/u;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/google/common/base/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/u;

    invoke-virtual {v0}, Lcom/google/common/base/u;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v0, Lcom/google/common/collect/L;->e:Lcom/google/common/collect/L;

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/google/common/base/u;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/common/base/u;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/u;->s([Ljava/lang/Object;)Lcom/google/common/collect/L;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v4, "initialCapacity"

    const/4 v5, 0x4

    invoke-static {v5, v4}, LG5/G;->e(ILjava/lang/String;)V

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput-object v3, v4, v1

    move v3, v2

    :goto_1
    invoke-virtual {v0}, Lcom/google/common/base/u;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Lcom/google/common/base/u;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v6, v3, 0x1

    array-length v7, v4

    if-ge v7, v6, :cond_5

    array-length v7, v4

    invoke-static {v7, v6}, LG5/J;->a(II)I

    move-result v7

    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    :cond_5
    aput-object v5, v4, v3

    move v3, v6

    goto :goto_1

    :cond_6
    invoke-static {v3, v4}, Lcom/google/common/collect/u;->r(I[Ljava/lang/Object;)Lcom/google/common/collect/L;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/google/common/net/b;->b:Lcom/google/common/collect/u;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    const/16 v3, 0x7f

    if-gt p0, v3, :cond_7

    move p0, v2

    goto :goto_3

    :cond_7
    move p0, v1

    :goto_3
    const-string v3, "Domain has too many parts: \'%s\'"

    invoke-static {v3, p1, p0}, Lcom/google/common/base/C;->d(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/google/common/net/b;->c(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    move v3, v1

    :goto_4
    if-ge v3, p0, :cond_a

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/google/common/net/b;->c(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_5

    :cond_9
    add-int/2addr v3, v2

    goto :goto_4

    :cond_a
    move v1, v2

    :goto_5
    const-string p0, "Not a valid domain name: \'%s\'"

    invoke-static {p0, p1, v1}, Lcom/google/common/base/C;->d(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static c(Ljava/lang/String;Z)Z
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x3f

    if-le v0, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v0, Lcom/google/common/base/e;->c:Lcom/google/common/base/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/common/base/d;

    invoke-direct {v3, v0}, Lcom/google/common/base/d;-><init>(Lcom/google/common/base/C;)V

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/common/base/C;->n(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move v5, v2

    :goto_0
    add-int/2addr v4, v2

    :goto_1
    array-length v6, v0

    if-ne v4, v6, :cond_6

    new-instance v3, Ljava/lang/String;

    sub-int/2addr v4, v5

    invoke-direct {v3, v0, v1, v4}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v3

    :goto_2
    sget-object v3, Lcom/google/common/net/b;->i:Lcom/google/common/base/C;

    invoke-virtual {v3, v0}, Lcom/google/common/base/C;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-object v3, Lcom/google/common/net/b;->g:Lcom/google/common/base/C;

    invoke-virtual {v3, v0}, Lcom/google/common/base/C;->q(C)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/common/base/C;->q(C)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    sget-object p1, Lcom/google/common/net/b;->h:Lcom/google/common/base/g;

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/common/base/g;->q(C)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v2

    :cond_5
    :goto_3
    return v1

    :cond_6
    aget-char v6, v0, v4

    invoke-virtual {v3, v6}, Lcom/google/common/base/d;->q(C)Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    sub-int v6, v4, v5

    aget-char v7, v0, v4

    aput-char v7, v0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    :goto_4
    return v1
.end method


# virtual methods
.method public final a()I
    .locals 7

    iget v0, p0, Lcom/google/common/net/b;->c:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/common/net/b;->b:Lcom/google/common/collect/u;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    sget-object v3, Lcom/google/common/net/b;->f:Lcom/google/common/base/p;

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/u;->x(II)Lcom/google/common/collect/u;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/base/p;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/common/base/a;->a:Lcom/google/common/base/a;

    if-lez v2, :cond_1

    sget-object v5, LV7/a;->b:Lcom/google/common/collect/Q;

    invoke-virtual {v5, v3}, Lcom/google/common/collect/Q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LV7/b;

    if-nez v5, :cond_0

    move-object v6, v4

    goto :goto_1

    :cond_0
    new-instance v6, Lcom/google/common/base/t;

    invoke-direct {v6, v5}, Lcom/google/common/base/t;-><init>(LV7/b;)V

    :goto_1
    invoke-virtual {v6}, Lcom/google/common/base/r;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v2, v2, -0x1

    :goto_2
    move v0, v2

    goto :goto_4

    :cond_1
    sget-object v5, LV7/a;->a:Lcom/google/common/collect/Q;

    invoke-virtual {v5, v3}, Lcom/google/common/collect/Q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LV7/b;

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    new-instance v4, Lcom/google/common/base/t;

    invoke-direct {v4, v5}, Lcom/google/common/base/t;-><init>(LV7/b;)V

    :goto_3
    invoke-virtual {v4}, Lcom/google/common/base/r;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    sget-object v4, LV7/a;->c:Lcom/google/common/collect/Q;

    invoke-virtual {v4, v3}, Lcom/google/common/collect/Q;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    :goto_4
    iput v0, p0, Lcom/google/common/net/b;->c:I

    :cond_6
    return v0
.end method

.method public final b()Lcom/google/common/net/b;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/net/b;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/net/b;->a()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/common/net/b;->a()I

    move-result v0

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/google/common/net/b;->b:Lcom/google/common/collect/u;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/u;->x(II)Lcom/google/common/collect/u;

    move-result-object p0

    sget-object v0, Lcom/google/common/net/b;->f:Lcom/google/common/base/p;

    invoke-virtual {v0, p0}, Lcom/google/common/base/p;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/google/common/net/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0}, Lcom/google/common/net/b;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lcom/google/common/net/b;->a:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Not under a public suffix: %s"

    invoke-static {v1, p0}, Lcom/google/common/base/C;->p(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/google/common/net/b;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/common/net/b;

    iget-object p0, p0, Lcom/google/common/net/b;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/common/net/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/net/b;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/common/net/b;->a:Ljava/lang/String;

    return-object p0
.end method
