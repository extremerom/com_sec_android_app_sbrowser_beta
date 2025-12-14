.class public final Lv/h;
.super Lv/l;
.source "SourceFile"


# virtual methods
.method public final b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lv/l;->a:LB/i;

    iget-object p0, p0, LB/i;->f:LB/d;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, LB/d;->b:Ljava/util/ArrayList;

    if-nez p0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
