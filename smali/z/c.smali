.class public abstract synthetic Lz/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Landroid/app/appsearch/SearchSpec$Builder;)Landroid/app/appsearch/SearchSpec$Builder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/appsearch/SearchSpec$Builder;->setOrder(I)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic B(Landroid/app/appsearch/SearchSpec$Builder;Ljava/util/List;)Landroid/app/appsearch/SearchSpec$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterPackageNames(Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C()V
    .locals 1

    new-instance v0, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;

    return-void
.end method

.method public static synthetic D()V
    .locals 1

    new-instance v0, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;
    .locals 1

    new-instance v0, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;

    invoke-direct {v0, p0}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static bridge synthetic b(Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;)Landroid/app/appsearch/AppSearchManager$SearchContext;
    .locals 0

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;->build()Landroid/app/appsearch/AppSearchManager$SearchContext;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig$Builder;I)Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig$Builder;
    .locals 1

    new-instance v0, Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig$Builder;

    invoke-direct {v0, p0}, Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static bridge synthetic e(Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig$Builder;)Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig;
    .locals 0

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;
    .locals 1

    new-instance v0, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;

    invoke-direct {v0, p0}, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic g(Ljava/lang/String;Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;
    .locals 1

    new-instance v0, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;

    invoke-direct {v0, p0, p1}, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static bridge synthetic h(Landroid/app/appsearch/AppSearchSchema$DoublePropertyConfig$Builder;I)Landroid/app/appsearch/AppSearchSchema$DoublePropertyConfig$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/appsearch/AppSearchSchema$DoublePropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$DoublePropertyConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema$DoublePropertyConfig$Builder;
    .locals 1

    new-instance v0, Landroid/app/appsearch/AppSearchSchema$DoublePropertyConfig$Builder;

    invoke-direct {v0, p0}, Landroid/app/appsearch/AppSearchSchema$DoublePropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static bridge synthetic j(Landroid/app/appsearch/AppSearchSchema$DoublePropertyConfig$Builder;)Landroid/app/appsearch/AppSearchSchema$DoublePropertyConfig;
    .locals 0

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema$DoublePropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$DoublePropertyConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;
    .locals 1

    new-instance v0, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;

    invoke-direct {v0, p0}, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static bridge synthetic l(Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;)Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig;
    .locals 0

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m()Landroid/app/appsearch/SearchSpec$Builder;
    .locals 1

    new-instance v0, Landroid/app/appsearch/SearchSpec$Builder;

    invoke-direct {v0}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic n(Landroid/app/appsearch/SearchSpec$Builder;)Landroid/app/appsearch/SearchSpec$Builder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/appsearch/SearchSpec$Builder;->setSnippetCount(I)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o(Landroid/app/appsearch/SearchSpec$Builder;I)Landroid/app/appsearch/SearchSpec$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/appsearch/SearchSpec$Builder;->setSnippetCountPerProperty(I)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic p(Landroid/app/appsearch/SearchSpec$Builder;Ljava/util/List;)Landroid/app/appsearch/SearchSpec$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterSchemas(Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic q(Landroid/app/appsearch/SearchSpec$Builder;)Landroid/app/appsearch/SearchSpec;
    .locals 0

    invoke-virtual {p0}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r()Landroid/app/appsearch/SetSchemaRequest$Builder;
    .locals 1

    new-instance v0, Landroid/app/appsearch/SetSchemaRequest$Builder;

    invoke-direct {v0}, Landroid/app/appsearch/SetSchemaRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static synthetic s()V
    .locals 1

    new-instance v0, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;

    return-void
.end method

.method public static bridge synthetic t(Landroid/app/appsearch/SearchSpec$Builder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/appsearch/SearchSpec$Builder;->setMaxSnippetSize(I)Landroid/app/appsearch/SearchSpec$Builder;

    return-void
.end method

.method public static bridge synthetic u(Landroid/app/appsearch/SearchSpec$Builder;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/app/appsearch/SearchSpec$Builder;->addProjection(Ljava/lang/String;Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;

    return-void
.end method

.method public static bridge synthetic v(Landroid/app/appsearch/SearchSpec$Builder;)Landroid/app/appsearch/SearchSpec$Builder;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/appsearch/SearchSpec$Builder;->setTermMatch(I)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic w(Landroid/app/appsearch/SearchSpec$Builder;I)Landroid/app/appsearch/SearchSpec$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/appsearch/SearchSpec$Builder;->setResultCountPerPage(I)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic x(Landroid/app/appsearch/SearchSpec$Builder;Ljava/util/List;)Landroid/app/appsearch/SearchSpec$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterNamespaces(Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y()V
    .locals 1

    new-instance v0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    return-void
.end method

.method public static bridge synthetic z(Landroid/app/appsearch/SearchSpec$Builder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/appsearch/SearchSpec$Builder;->setRankingStrategy(I)Landroid/app/appsearch/SearchSpec$Builder;

    return-void
.end method
