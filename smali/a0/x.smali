.class public final La0/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LHc/b;


# instance fields
.field public a:Z


# virtual methods
.method public b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    check-cast p1, LJb/d;

    iget-boolean p0, p0, La0/x;->a:Z

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, LJb/d;->a()LJb/d;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, LJb/d;->l()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_2

    check-cast p0, Ljava/lang/Iterable;

    goto :goto_1

    :cond_2
    sget-object p0, Lfb/v;->a:Lfb/v;

    :goto_1
    return-object p0
.end method
