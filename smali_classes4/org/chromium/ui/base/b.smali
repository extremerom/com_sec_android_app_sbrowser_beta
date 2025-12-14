.class public abstract synthetic Lorg/chromium/ui/base/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Landroid/app/appsearch/GenericDocument$Builder;Ljava/lang/String;[Landroid/app/appsearch/GenericDocument;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyDocument(Ljava/lang/String;[Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/GenericDocument$Builder;

    return-void
.end method

.method public static bridge synthetic B(Landroid/app/appsearch/AppSearchResult;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic C(Landroid/content/ClipDescription;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/content/ClipDescription;->isStyledText()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic D(Landroid/app/appsearch/AppSearchBatchResult;)Ljava/util/Map;
    .locals 0

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchBatchResult;->getFailures()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic a(Landroid/content/ClipDescription;)F
    .locals 1

    const-string v0, "url"

    invoke-virtual {p0, v0}, Landroid/content/ClipDescription;->getConfidenceScore(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Landroid/app/appsearch/AppSearchResult;)I
    .locals 0

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getResultCode()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Landroid/hardware/display/DeviceProductInfo;)I
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/display/DeviceProductInfo;->getConnectionToSinkType()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchManager;
    .locals 0

    check-cast p0, Landroid/app/appsearch/AppSearchManager;

    return-object p0
.end method

.method public static bridge synthetic e(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchResult;
    .locals 0

    check-cast p0, Landroid/app/appsearch/AppSearchResult;

    return-object p0
.end method

.method public static bridge synthetic f(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchSession;
    .locals 0

    check-cast p0, Landroid/app/appsearch/AppSearchSession;

    return-object p0
.end method

.method public static bridge synthetic g(Landroid/app/appsearch/GenericDocument$Builder;I)Landroid/app/appsearch/GenericDocument$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/appsearch/GenericDocument$Builder;->setScore(I)Landroid/app/appsearch/GenericDocument$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Landroid/app/appsearch/GenericDocument$Builder;J)Landroid/app/appsearch/GenericDocument$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/app/appsearch/GenericDocument$Builder;->setTtlMillis(J)Landroid/app/appsearch/GenericDocument$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;
    .locals 1

    new-instance v0, Landroid/app/appsearch/GenericDocument$Builder;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/appsearch/GenericDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static bridge synthetic j(Landroid/app/appsearch/GenericDocument$Builder;)Landroid/app/appsearch/GenericDocument;
    .locals 0

    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument$Builder;->build()Landroid/app/appsearch/GenericDocument;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Landroid/content/Context;Landroid/view/Display;)Landroid/content/Context;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Landroid/graphics/Bitmap;)Landroid/hardware/HardwareBuffer;
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/view/Display;)Landroid/hardware/display/DeviceProductInfo;
    .locals 0

    invoke-virtual {p0}, Landroid/view/Display;->getDeviceProductInfo()Landroid/hardware/display/DeviceProductInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n()Ljava/lang/Class;
    .locals 1

    const-class v0, Landroid/app/appsearch/AppSearchManager;

    return-object v0
.end method

.method public static bridge synthetic o(Landroid/app/appsearch/AppSearchResult;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic p(Landroid/app/appsearch/AppSearchResult;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic q(Landroid/app/appsearch/AppSearchBatchResult;)Ljava/util/Map;
    .locals 0

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchBatchResult;->getSuccesses()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r()V
    .locals 1

    new-instance v0, Landroid/app/appsearch/GenericDocument$Builder;

    return-void
.end method

.method public static bridge synthetic s(Landroid/app/appsearch/AppSearchManager;Landroid/app/appsearch/AppSearchManager$SearchContext;Ljava/util/concurrent/ExecutorService;Ly/a;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/appsearch/AppSearchManager;->createSearchSession(Landroid/app/appsearch/AppSearchManager$SearchContext;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic t(Landroid/app/appsearch/AppSearchSession;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSession;->close()V

    return-void
.end method

.method public static bridge synthetic u(Landroid/app/appsearch/AppSearchSession;Landroid/app/appsearch/PutDocumentsRequest;Ljava/util/concurrent/ExecutorService;LA/c;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/appsearch/AppSearchSession;->put(Landroid/app/appsearch/PutDocumentsRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    return-void
.end method

.method public static bridge synthetic v(Landroid/app/appsearch/AppSearchSession;Landroid/app/appsearch/RemoveByDocumentIdRequest;Ljava/util/concurrent/ExecutorService;LA/c;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/appsearch/AppSearchSession;->remove(Landroid/app/appsearch/RemoveByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    return-void
.end method

.method public static bridge synthetic w(Landroid/app/appsearch/AppSearchSession;Landroid/app/appsearch/SearchSpec;Ljava/util/concurrent/ExecutorService;Ly/e;)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/app/appsearch/AppSearchSession;->remove(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic x(Landroid/app/appsearch/AppSearchSession;Landroid/app/appsearch/SetSchemaRequest;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ly/e;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/appsearch/AppSearchSession;->setSchema(Landroid/app/appsearch/SetSchemaRequest;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic y(Landroid/app/appsearch/AppSearchSession;Ljava/util/concurrent/ExecutorService;Ly/f;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/app/appsearch/AppSearchSession;->getNamespaces(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static bridge synthetic z(Landroid/app/appsearch/GenericDocument$Builder;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/app/appsearch/GenericDocument$Builder;->setCreationTimestampMillis(J)Landroid/app/appsearch/GenericDocument$Builder;

    return-void
.end method
