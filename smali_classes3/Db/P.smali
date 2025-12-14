.class public final LDb/P;
.super LDb/h0;
.source "SourceFile"

# interfaces
.implements LAb/i;


# instance fields
.field public final k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LDb/I;LMb/J;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, LDb/h0;-><init>(LDb/I;LMb/J;)V

    sget-object p1, Ldb/h;->PUBLICATION:Ldb/h;

    new-instance p2, LDb/E;

    const/4 v0, 0x2

    invoke-direct {p2, v0, p0}, LDb/E;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, p2}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    move-result-object p1

    iput-object p1, p0, LDb/P;->k:Ljava/lang/Object;

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

    invoke-direct {p0, p1, p2, p3, p4}, LDb/h0;-><init>(LDb/I;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Ldb/h;->PUBLICATION:Ldb/h;

    new-instance p2, LDb/E;

    const/4 p3, 0x2

    invoke-direct {p2, p3, p0}, LDb/E;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, p2}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    move-result-object p1

    iput-object p1, p0, LDb/P;->k:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c()LAb/g;
    .locals 0

    iget-object p0, p0, LDb/P;->k:Ljava/lang/Object;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LDb/O;

    return-object p0
.end method

.method public final c()LAb/h;
    .locals 0

    iget-object p0, p0, LDb/P;->k:Ljava/lang/Object;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LDb/O;

    return-object p0
.end method
