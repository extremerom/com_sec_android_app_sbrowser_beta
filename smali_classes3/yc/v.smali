.class public final Lyc/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyc/L;
.implements LBc/h;


# instance fields
.field public a:Lyc/w;

.field public final b:Ljava/util/LinkedHashSet;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/util/AbstractCollection;)V
    .locals 1

    const-string v0, "typesToIntersect"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lyc/v;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lyc/v;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0
.end method

.method public final c()LJb/i;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lyc/v;->b:Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lyc/v;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Lyc/v;->b:Ljava/util/LinkedHashSet;

    check-cast p1, Lyc/v;

    iget-object p1, p1, Lyc/v;->b:Ljava/util/LinkedHashSet;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f()Lyc/A;
    .locals 7

    sget-object v0, Lyc/H;->b:LA7/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lyc/H;->c:Lyc/H;

    sget-object v3, Lfb/v;->a:Lfb/v;

    iget-object v0, p0, Lyc/v;->b:Ljava/util/LinkedHashSet;

    const-string v2, "member scope for intersection type"

    invoke-static {v2, v0}, LG5/H;->b(Ljava/lang/String;Ljava/util/Collection;)Lrc/o;

    move-result-object v5

    new-instance v6, LMb/a;

    const/16 v0, 0x17

    invoke-direct {v6, v0, p0}, LMb/a;-><init>(ILjava/lang/Object;)V

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lyc/c;->w(Lyc/H;Lyc/L;Ljava/util/List;ZLrc/o;Lsb/k;)Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lsb/k;)Ljava/lang/String;
    .locals 6

    const-string v0, "getProperTypeRelatedToStringify"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lyc/v;->b:Ljava/util/LinkedHashSet;

    new-instance v0, Li6/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Li6/c;-><init>(ILjava/lang/Object;)V

    invoke-static {p0, v0}, Lfb/n;->a0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v4, LMb/a;

    const/16 p0, 0x16

    invoke-direct {v4, p0, p1}, LMb/a;-><init>(ILjava/lang/Object;)V

    const-string v2, "{"

    const-string v3, "}"

    const-string v1, " & "

    const/16 v5, 0x18

    invoke-static/range {v0 .. v5}, Lfb/n;->I(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsb/k;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lyc/v;->c:I

    return p0
.end method

.method public final j()LGb/i;
    .locals 1

    iget-object p0, p0, Lyc/v;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyc/w;

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object p0

    invoke-interface {p0}, Lyc/L;->j()LGb/i;

    move-result-object p0

    const-string v0, "getBuiltIns(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lyc/f;->c:Lyc/f;

    invoke-virtual {p0, v0}, Lyc/v;->g(Lsb/k;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
