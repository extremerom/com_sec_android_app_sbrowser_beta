.class public abstract LWb/F;
.super LWb/B;
.source "SourceFile"


# virtual methods
.method public n(Lhc/f;Ljava/util/ArrayList;)V
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final p()LMb/w;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final s(LPb/w;Ljava/util/ArrayList;Lyc/w;Ljava/util/List;)LWb/A;
    .locals 0

    const-string p0, "method"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, LWb/A;

    sget-object p1, Lfb/v;->a:Lfb/v;

    invoke-direct {p0, p3, p4, p2, p1}, LWb/A;-><init>(Lyc/w;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)V

    return-object p0
.end method
