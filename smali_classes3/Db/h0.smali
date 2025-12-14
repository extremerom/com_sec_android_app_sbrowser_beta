.class public LDb/h0;
.super LDb/r0;
.source "SourceFile"

# interfaces
.implements LAb/r;


# instance fields
.field public final j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LDb/I;LMb/J;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, LDb/r0;-><init>(LDb/I;LMb/J;)V

    sget-object p1, Ldb/h;->PUBLICATION:Ldb/h;

    new-instance p2, LDb/f0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, LDb/f0;-><init>(LDb/h0;I)V

    invoke-static {p1, p2}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    move-result-object p2

    iput-object p2, p0, LDb/h0;->j:Ljava/lang/Object;

    new-instance p2, LDb/f0;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, LDb/f0;-><init>(LDb/h0;I)V

    invoke-static {p1, p2}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    return-void
.end method

.method public constructor <init>(LDb/I;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, LDb/r0;-><init>(LDb/I;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Ldb/h;->PUBLICATION:Ldb/h;

    new-instance p2, LDb/f0;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, LDb/f0;-><init>(LDb/h0;I)V

    invoke-static {p1, p2}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    move-result-object p2

    iput-object p2, p0, LDb/h0;->j:Ljava/lang/Object;

    new-instance p2, LDb/f0;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, LDb/f0;-><init>(LDb/h0;I)V

    invoke-static {p1, p2}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    return-void
.end method


# virtual methods
.method public final b()LAb/n;
    .locals 0

    iget-object p0, p0, LDb/h0;->j:Ljava/lang/Object;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LDb/g0;

    return-object p0
.end method

.method public final b()LAb/q;
    .locals 0

    iget-object p0, p0, LDb/h0;->j:Ljava/lang/Object;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LDb/g0;

    return-object p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LDb/h0;->j:Ljava/lang/Object;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LDb/g0;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LDb/s;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LDb/h0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final m()LDb/o0;
    .locals 0

    iget-object p0, p0, LDb/h0;->j:Ljava/lang/Object;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LDb/g0;

    return-object p0
.end method
