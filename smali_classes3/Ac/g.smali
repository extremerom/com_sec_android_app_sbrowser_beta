.class public LAc/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrc/o;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(LAc/h;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "kind"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formatParams"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, LAc/h;->a()Ljava/lang/String;

    move-result-object p1

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LAc/g;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lrc/f;Lsb/k;)Ljava/util/Collection;
    .locals 0

    const-string p0, "kindFilter"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "nameFilter"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0
.end method

.method public b()Ljava/util/Set;
    .locals 0

    sget-object p0, Lfb/x;->a:Lfb/x;

    return-object p0
.end method

.method public c(Lhc/f;LRb/a;)LJb/i;
    .locals 1

    const-string p0, "name"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "location"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, LAc/a;

    sget-object p2, LAc/b;->ERROR_CLASS:LAc/b;

    invoke-virtual {p2}, LAc/b;->a()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lhc/f;->h(Ljava/lang/String;)Lhc/f;

    move-result-object p1

    invoke-direct {p0, p1}, LAc/a;-><init>(Lhc/f;)V

    return-object p0
.end method

.method public bridge synthetic d(Lhc/f;LRb/a;)Ljava/util/Collection;
    .locals 0

    check-cast p2, LRb/c;

    invoke-virtual {p0, p1, p2}, LAc/g;->h(Lhc/f;LRb/c;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public e()Ljava/util/Set;
    .locals 0

    sget-object p0, Lfb/x;->a:Lfb/x;

    return-object p0
.end method

.method public f()Ljava/util/Set;
    .locals 0

    sget-object p0, Lfb/x;->a:Lfb/x;

    return-object p0
.end method

.method public bridge synthetic g(Lhc/f;LRb/c;)Ljava/util/Collection;
    .locals 0

    invoke-virtual {p0, p1, p2}, LAc/g;->i(Lhc/f;LRb/c;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public h(Lhc/f;LRb/c;)Ljava/util/Set;
    .locals 9

    const-string p0, "name"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "location"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, LAc/c;

    sget-object v1, LAc/l;->c:LAc/a;

    const-string p1, "containingDeclaration"

    invoke-static {v1, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, LKb/g;->a:LKb/f;

    sget-object p1, LAc/b;->ERROR_FUNCTION:LAc/b;

    invoke-virtual {p1}, LAc/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lhc/f;->h(Ljava/lang/String;)Lhc/f;

    move-result-object v4

    sget-object v5, LJb/c;->DECLARATION:LJb/c;

    sget-object v6, LJb/S;->L:LJb/T;

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, LMb/M;-><init>(LJb/l;LMb/M;LKb/h;Lhc/f;LJb/c;LJb/S;)V

    sget-object v5, Lfb/v;->a:Lfb/v;

    sget-object p1, LAc/k;->RETURN_TYPE_FOR_FUNCTION:LAc/k;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-static {p1, p2}, LAc/l;->c(LAc/k;[Ljava/lang/String;)LAc/i;

    move-result-object v6

    sget-object v7, LJb/B;->OPEN:LJb/B;

    sget-object v8, LJb/q;->e:LJb/p;

    const/4 v1, 0x0

    move-object v3, v5

    move-object v4, v5

    invoke-virtual/range {v0 .. v8}, LMb/M;->h1(LMb/w;LMb/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyc/w;LJb/B;LJb/p;)LMb/M;

    invoke-static {p0}, Lfb/F;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public i(Lhc/f;LRb/c;)Ljava/util/Set;
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "location"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, LAc/l;->f:Ljava/util/Set;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ErrorScope{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LAc/g;->b:Ljava/lang/String;

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, LV0/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
