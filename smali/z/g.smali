.class public abstract Lz/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/appsearch/SearchSpec$Builder;Lv/A;)V
    .locals 2
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    iget-object v0, p1, Lv/A;->j:Ljava/util/List;

    const-string v1, "NUMERIC_SEARCH"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/chromium/ui/util/a;->g(Landroid/app/appsearch/SearchSpec$Builder;)V

    :cond_0
    const-string v0, "VERBATIM_SEARCH"

    iget-object p1, p1, Lv/A;->j:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/chromium/ui/util/a;->j(Landroid/app/appsearch/SearchSpec$Builder;)V

    :cond_1
    const-string v0, "LIST_FILTER_QUERY_LANGUAGE"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lorg/chromium/ui/util/a;->k(Landroid/app/appsearch/SearchSpec$Builder;)V

    :cond_2
    return-void
.end method

.method public static b(Landroid/app/appsearch/SearchSpec$Builder;Lv/v;)V
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public static c(Landroid/app/appsearch/SearchSpec$Builder;Ljava/util/Map;)V
    .locals 2
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/SearchSpec$Builder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p0, v1, v0}, Lorg/chromium/ui/util/a;->i(Landroid/app/appsearch/SearchSpec$Builder;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static d(Landroid/app/appsearch/SearchSpec$Builder;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    invoke-static {p0, p1}, Lorg/chromium/ui/util/a;->h(Landroid/app/appsearch/SearchSpec$Builder;Ljava/lang/String;)V

    return-void
.end method
