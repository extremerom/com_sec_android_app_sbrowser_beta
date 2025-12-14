.class public final LDb/Y;
.super LDb/I;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/Class;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2

    const-string v0, "jClass"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDb/Y;->b:Ljava/lang/Class;

    sget-object p1, Ldb/h;->PUBLICATION:Ldb/h;

    new-instance v0, LDb/T;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LDb/T;-><init>(LDb/Y;I)V

    invoke-static {p1, v0}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    move-result-object p1

    iput-object p1, p0, LDb/Y;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, LDb/Y;->b:Ljava/lang/Class;

    return-object p0
.end method

.method public final e()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LDb/Y;

    if-eqz v0, :cond_0

    check-cast p1, LDb/Y;

    iget-object p1, p1, LDb/Y;->b:Ljava/lang/Class;

    iget-object p0, p0, LDb/Y;->b:Ljava/lang/Class;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f(Lhc/f;)Ljava/util/Collection;
    .locals 2

    iget-object p0, p0, LDb/Y;->c:Ljava/lang/Object;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LDb/W;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LDb/W;->g:[LAb/u;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object p0, p0, LDb/W;->d:LDb/B0;

    invoke-virtual {p0}, LDb/B0;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lrc/o;

    sget-object v0, LRb/c;->FROM_REFLECTION:LRb/c;

    invoke-interface {p0, p1, v0}, Lrc/o;->d(Lhc/f;LRb/a;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final g(I)LJb/P;
    .locals 9

    iget-object v0, p0, LDb/Y;->c:Ljava/lang/Object;

    invoke-interface {v0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDb/W;

    iget-object v0, v0, LDb/W;->f:Ljava/lang/Object;

    invoke-interface {v0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldb/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Ldb/p;->a:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lgc/f;

    iget-object v2, v0, Ldb/p;->b:Ljava/lang/Object;

    check-cast v2, Lcc/E;

    iget-object v0, v0, Ldb/p;->c:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lec/f;

    sget-object v0, Lfc/k;->n:Lic/o;

    const-string v3, "packageLocalVariable"

    invoke-static {v0, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0, p1}, LG5/L2;->g(Lic/m;Lic/o;I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcc/I;

    if-eqz v4, :cond_0

    new-instance v6, LX4/i;

    iget-object p1, v2, Lcc/E;->g:Lcc/Z;

    const-string v0, "getTypeTable(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, p1}, LX4/i;-><init>(Lcc/Z;)V

    sget-object v8, LDb/X;->a:LDb/X;

    iget-object v3, p0, LDb/Y;->b:Ljava/lang/Class;

    invoke-static/range {v3 .. v8}, LDb/I0;->f(Ljava/lang/Class;Lic/m;Lec/g;LX4/i;Lec/a;Lsb/n;)LJb/b;

    move-result-object p0

    move-object v1, p0

    check-cast v1, LJb/P;

    :cond_0
    return-object v1
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, LDb/Y;->b:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final k()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, LDb/Y;->c:Ljava/lang/Object;

    invoke-interface {v0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDb/W;

    iget-object v0, v0, LDb/W;->e:Ljava/lang/Object;

    invoke-interface {v0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    iget-object v0, p0, LDb/Y;->b:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method public final l(Lhc/f;)Ljava/util/Collection;
    .locals 2

    iget-object p0, p0, LDb/Y;->c:Ljava/lang/Object;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LDb/W;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LDb/W;->g:[LAb/u;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object p0, p0, LDb/W;->d:LDb/B0;

    invoke-virtual {p0}, LDb/B0;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lrc/o;

    sget-object v0, LRb/c;->FROM_REFLECTION:LRb/c;

    invoke-interface {p0, p1, v0}, Lrc/o;->g(Lhc/f;LRb/c;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LDb/Y;->b:Ljava/lang/Class;

    invoke-static {p0}, LPb/c;->a(Ljava/lang/Class;)Lhc/b;

    move-result-object p0

    invoke-virtual {p0}, Lhc/b;->a()Lhc/c;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
