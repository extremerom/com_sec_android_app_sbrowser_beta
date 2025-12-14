.class public final LHb/f;
.super Lrc/h;
.source "SourceFile"


# virtual methods
.method public final h()Ljava/util/List;
    .locals 2

    iget-object p0, p0, Lrc/h;->b:LMb/c;

    check-cast p0, LHb/c;

    sget-object v0, LHb/h;->c:LHb/h;

    iget-object v1, p0, LHb/c;->g:LHb/l;

    invoke-static {v1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, LG5/l3;->b(LHb/c;Z)LHb/g;

    move-result-object p0

    invoke-static {p0}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v0, LHb/k;->c:LHb/k;

    invoke-static {v1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {p0, v0}, LG5/l3;->b(LHb/c;Z)LHb/g;

    move-result-object p0

    invoke-static {p0}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p0, Lfb/v;->a:Lfb/v;

    :goto_0
    return-object p0
.end method
