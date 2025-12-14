.class public abstract synthetic Lz/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setTokenizerType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B()V
    .locals 1

    new-instance v0, Landroid/app/appsearch/AppSearchSchema$BooleanPropertyConfig$Builder;

    return-void
.end method

.method public static synthetic C()V
    .locals 1

    new-instance v0, Landroid/app/appsearch/AppSearchSchema$Builder;

    return-void
.end method

.method public static synthetic D()V
    .locals 1

    new-instance v0, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema$Builder;
    .locals 1

    new-instance v0, Landroid/app/appsearch/AppSearchSchema$Builder;

    invoke-direct {v0, p0}, Landroid/app/appsearch/AppSearchSchema$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static bridge synthetic b(Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;I)Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;)Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig;
    .locals 0

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$BytesPropertyConfig;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;I)Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;Z)Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->setShouldIndexNestedProperties(Z)Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;)Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig;
    .locals 0

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$DocumentPropertyConfig;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;I)Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$LongPropertyConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setCardinality(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;
    .locals 1

    new-instance v0, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    invoke-direct {v0, p0}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static bridge synthetic j(Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;
    .locals 0

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->build()Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Landroid/app/appsearch/AppSearchSchema$Builder;)Landroid/app/appsearch/AppSearchSchema;
    .locals 0

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSchema$Builder;->build()Landroid/app/appsearch/AppSearchSchema;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l()Landroid/app/appsearch/PutDocumentsRequest$Builder;
    .locals 1

    new-instance v0, Landroid/app/appsearch/PutDocumentsRequest$Builder;

    invoke-direct {v0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic m(Landroid/app/appsearch/PutDocumentsRequest$Builder;)Landroid/app/appsearch/PutDocumentsRequest;
    .locals 0

    invoke-virtual {p0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->build()Landroid/app/appsearch/PutDocumentsRequest;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;Ljava/util/Collection;)Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->addIds(Ljava/util/Collection;)Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Ljava/lang/String;)Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;
    .locals 1

    new-instance v0, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;

    invoke-direct {v0, p0}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static bridge synthetic p(Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;)Landroid/app/appsearch/RemoveByDocumentIdRequest;
    .locals 0

    invoke-virtual {p0}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->build()Landroid/app/appsearch/RemoveByDocumentIdRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q()V
    .locals 1

    new-instance v0, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;

    return-void
.end method

.method public static bridge synthetic r(Landroid/app/appsearch/AppSearchSchema$Builder;Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/appsearch/AppSearchSchema$Builder;->addProperty(Landroid/app/appsearch/AppSearchSchema$PropertyConfig;)Landroid/app/appsearch/AppSearchSchema$Builder;

    return-void
.end method

.method public static bridge synthetic s(Landroid/app/appsearch/GenericDocument$Builder;Ljava/lang/String;[D)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyDouble(Ljava/lang/String;[D)Landroid/app/appsearch/GenericDocument$Builder;

    return-void
.end method

.method public static bridge synthetic t(Landroid/app/appsearch/GenericDocument$Builder;Ljava/lang/String;[J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyLong(Ljava/lang/String;[J)Landroid/app/appsearch/GenericDocument$Builder;

    return-void
.end method

.method public static bridge synthetic u(Landroid/app/appsearch/GenericDocument$Builder;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    return-void
.end method

.method public static bridge synthetic v(Landroid/app/appsearch/GenericDocument$Builder;Ljava/lang/String;[Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyBoolean(Ljava/lang/String;[Z)Landroid/app/appsearch/GenericDocument$Builder;

    return-void
.end method

.method public static bridge synthetic w(Landroid/app/appsearch/GenericDocument$Builder;Ljava/lang/String;[[B)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyBytes(Ljava/lang/String;[[B)Landroid/app/appsearch/GenericDocument$Builder;

    return-void
.end method

.method public static bridge synthetic x(Landroid/app/appsearch/PutDocumentsRequest$Builder;[Landroid/app/appsearch/GenericDocument;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->addGenericDocuments([Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/PutDocumentsRequest$Builder;

    return-void
.end method

.method public static bridge synthetic y(Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;->setIndexingType(I)Landroid/app/appsearch/AppSearchSchema$StringPropertyConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z()V
    .locals 1

    new-instance v0, Landroid/app/appsearch/AppSearchSchema$DoublePropertyConfig$Builder;

    return-void
.end method
