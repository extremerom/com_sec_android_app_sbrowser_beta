.class public final LQd/d;
.super LQd/w;
.source "SourceFile"


# virtual methods
.method public final B()LQd/w;
    .locals 0

    invoke-super {p0}, LQd/w;->B()LQd/w;

    move-result-object p0

    check-cast p0, LQd/d;

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, LQd/w;->B()LQd/w;

    move-result-object p0

    check-cast p0, LQd/d;

    return-object p0
.end method

.method public final h()LQd/u;
    .locals 0

    invoke-super {p0}, LQd/w;->B()LQd/w;

    move-result-object p0

    check-cast p0, LQd/d;

    return-object p0
.end method

.method public final p()Ljava/lang/String;
    .locals 0

    const-string p0, "#cdata"

    return-object p0
.end method

.method public final s(Ljava/lang/StringBuilder;ILQd/h;)V
    .locals 0

    const-string p2, "<![CDATA["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    invoke-virtual {p0}, LQd/t;->z()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public final t(Ljava/lang/StringBuilder;ILQd/h;)V
    .locals 0

    const-string p0, "]]>"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method
