.class public final LUc/r;
.super LNc/w0;
.source "SourceFile"

# interfaces
.implements LNc/J;


# virtual methods
.method public final H(Lib/h;)Z
    .locals 0

    invoke-virtual {p0}, LUc/r;->S()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final J(I)LNc/x;
    .locals 0

    invoke-virtual {p0}, LUc/r;->S()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final K()LNc/w0;
    .locals 0

    return-object p0
.end method

.method public final S()V
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. \'kotlinx-coroutines-android\' and ensure it has the same version as \'kotlinx-coroutines-core\'"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(JLNc/k;)V
    .locals 0

    invoke-virtual {p0}, LUc/r;->S()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final k(JLjava/lang/Runnable;Lib/h;)LNc/P;
    .locals 0

    invoke-virtual {p0}, LUc/r;->S()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string p0, "Dispatchers.Main[missing"

    const-string v0, ""

    const/16 v1, 0x5d

    invoke-static {v1, p0, v0}, LB/e;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final v(Lib/h;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, LUc/r;->S()V

    const/4 p0, 0x0

    throw p0
.end method
