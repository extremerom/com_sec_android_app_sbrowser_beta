.class public final Lzc/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llc/b;


# instance fields
.field public final a:Lyc/Q;

.field public b:Lsb/a;

.field public final c:Lzc/i;

.field public final d:LJb/W;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lyc/Q;Lsb/a;Lzc/i;LJb/W;)V
    .locals 1

    const-string v0, "projection"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzc/i;->a:Lyc/Q;

    iput-object p2, p0, Lzc/i;->b:Lsb/a;

    iput-object p3, p0, Lzc/i;->c:Lzc/i;

    iput-object p4, p0, Lzc/i;->d:LJb/W;

    sget-object p1, Ldb/h;->PUBLICATION:Ldb/h;

    new-instance p2, Lyc/O;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p0}, Lyc/O;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, p2}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    move-result-object p1

    iput-object p1, p0, Lzc/i;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lyc/Q;Lwc/e;Lzc/i;LJb/W;I)V
    .locals 2

    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_1

    move-object p3, v1

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v1

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lzc/i;-><init>(Lyc/Q;Lsb/a;Lzc/i;LJb/W;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0
.end method

.method public final b()Lyc/Q;
    .locals 0

    iget-object p0, p0, Lzc/i;->a:Lyc/Q;

    return-object p0
.end method

.method public final c()LJb/i;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lzc/i;->e:Ljava/lang/Object;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    sget-object p0, Lfb/v;->a:Lfb/v;

    :cond_0
    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lzc/i;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.checker.NewCapturedTypeConstructor"

    invoke-static {p1, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lzc/i;

    iget-object v3, p0, Lzc/i;->c:Lzc/i;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move-object p0, v3

    :goto_1
    iget-object v1, v1, Lzc/i;->c:Lzc/i;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, v1

    :goto_2
    if-ne p0, p1, :cond_5

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lzc/i;->c:Lzc/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzc/i;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final j()LGb/i;
    .locals 1

    iget-object p0, p0, Lzc/i;->a:Lyc/Q;

    invoke-virtual {p0}, Lyc/Q;->b()Lyc/w;

    move-result-object p0

    const-string v0, "getType(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LG5/B;->f(Lyc/w;)LGb/i;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CapturedType("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lzc/i;->a:Lyc/Q;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
