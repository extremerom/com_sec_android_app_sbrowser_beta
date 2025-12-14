.class public final LWb/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, LJb/f;

    invoke-static {p1}, Loc/d;->g(LJb/l;)Lhc/c;

    move-result-object p0

    iget-object p0, p0, Lhc/c;->a:Lhc/d;

    iget-object p0, p0, Lhc/d;->a:Ljava/lang/String;

    check-cast p2, LJb/f;

    invoke-static {p2}, Loc/d;->g(LJb/l;)Lhc/c;

    move-result-object p1

    iget-object p1, p1, Lhc/c;->a:Lhc/d;

    iget-object p1, p1, Lhc/d;->a:Ljava/lang/String;

    invoke-static {p0, p1}, LG5/A3;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
