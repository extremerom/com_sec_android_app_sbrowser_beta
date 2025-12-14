.class public final LA0/a;
.super LAb/E;
.source "SourceFile"


# instance fields
.field public a:LA0/f;


# virtual methods
.method public final d(LA0/g;)Z
    .locals 0

    iget-object p0, p0, LA0/a;->a:LA0/f;

    invoke-interface {p0}, LA0/f;->getKey()LA0/g;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final h(LA0/g;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LA0/a;->a:LA0/f;

    invoke-interface {v0}, LA0/f;->getKey()LA0/g;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, LA0/a;->a:LA0/f;

    invoke-interface {p0}, LA0/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
