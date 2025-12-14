.class public abstract Ldd/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Lbd/d;

.field public static final b:[Lad/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lbd/d;

    sput-object v0, Ldd/f;->a:[Lbd/d;

    const/4 v0, 0x0

    new-array v0, v0, [Lad/b;

    sput-object v0, Ldd/f;->b:[Lad/b;

    return-void
.end method

.method public static final a(Ljava/util/List;)[Lbd/d;
    .locals 1

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    :cond_1
    if-eqz p0, :cond_2

    check-cast p0, Ljava/util/Collection;

    const/4 v0, 0x0

    new-array v0, v0, [Lbd/d;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lbd/d;

    if-nez p0, :cond_3

    :cond_2
    sget-object p0, Ldd/f;->a:[Lbd/d;

    :cond_3
    return-object p0
.end method

.method public static final b(Lbd/d;[Lbd/d;)I
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParams"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lbd/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    new-instance p1, Lbd/e;

    invoke-direct {p1, p0}, Lbd/e;-><init>(Lbd/d;)V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Lbd/e;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lbd/e;->next()Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x1f

    check-cast v3, Lbd/d;

    invoke-interface {v3}, Lbd/d;->i()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :cond_0
    add-int/2addr v2, v4

    goto :goto_0

    :cond_1
    new-instance p1, Lbd/e;

    invoke-direct {p1, p0}, Lbd/e;-><init>(Lbd/d;)V

    :goto_1
    invoke-virtual {p1}, Lbd/e;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lbd/e;->next()Ljava/lang/Object;

    move-result-object p0

    mul-int/lit8 v1, v1, 0x1f

    check-cast p0, Lbd/d;

    invoke-interface {p0}, Lbd/d;->d()LG5/u;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, LG5/u;->hashCode()I

    move-result p0

    goto :goto_2

    :cond_2
    move p0, v4

    :goto_2
    add-int/2addr v1, p0

    goto :goto_1

    :cond_3
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
