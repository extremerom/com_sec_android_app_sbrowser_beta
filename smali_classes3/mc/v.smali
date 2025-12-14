.class public final Lmc/v;
.super Lmc/g;
.source "SourceFile"


# virtual methods
.method public final a(LJb/C;)Lyc/w;
    .locals 0

    const-string p0, "module"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LJb/C;->j()LGb/i;

    move-result-object p0

    invoke-virtual {p0}, LGb/i;->o()Lyc/A;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lyc/A;->M0(Z)Lyc/A;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x32

    invoke-static {p0}, LGb/i;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method
