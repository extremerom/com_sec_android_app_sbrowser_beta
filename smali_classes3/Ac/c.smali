.class public final LAc/c;
.super LMb/M;
.source "SourceFile"


# virtual methods
.method public final V0(LJb/f;LJb/B;LJb/p;LJb/c;)LMb/M;
    .locals 0

    const-string p2, "newOwner"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "visibility"

    invoke-static {p3, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "kind"

    invoke-static {p4, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final W0(LJb/c;LJb/l;LJb/v;LJb/S;LKb/h;Lhc/f;)LMb/v;
    .locals 0

    const-string p3, "newOwner"

    invoke-static {p2, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "kind"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "annotations"

    invoke-static {p5, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final bridge synthetic l0(LJb/f;LJb/B;LJb/p;LJb/c;)LJb/d;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, LAc/c;->V0(LJb/f;LJb/B;LJb/p;LJb/c;)LMb/M;

    return-object p0
.end method

.method public final m0(LJb/a;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final v0(Ljava/util/Collection;)V
    .locals 0

    const-string p0, "overriddenDescriptors"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final y0()LJb/u;
    .locals 2

    new-instance v0, LO9/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, LO9/a;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method
