.class public Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mClientName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mData:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClientData;

.field private mIsFallBack:Z

.field private mIsRegistered:Z

.field private mIsSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mIsSupported:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mIsRegistered:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mIsFallBack:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mClientName:Ljava/lang/String;

    new-instance p1, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClientData;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClientData;-><init>(Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mData:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClientData;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->isChosungSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mIsSupported:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->register_schema()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->register_template()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mIsRegistered:Z

    return-void
.end method

.method private isChosungSupported()Z
    .locals 6

    const-string v0, "SamsungSearchClient"

    const-string v1, "Search API version "

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mIsSupported:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    const-string v2, "request_search_api_version"

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v4, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->PUBLIC_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v2, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v2, "response_search_api_version"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    if-lt p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v1, "Unable to check search api version "

    invoke-static {p0, v1, v0}, Landroidx/recyclerview/widget/P;->r(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p0, "Chosung not supported"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private register_schema()I
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mIsSupported:Z

    if-nez v0, :cond_0

    sget p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->ERR_CODE_NOT_AVAILABLE:I

    return p0

    :cond_0
    const-string v0, "register_schema"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "name"

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mData:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClientData;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClientData;->getSchemaName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mData:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClientData;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClientData;->getSchemaPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->readFile(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "schema-content"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->PUBLIC_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Unable to register schema "

    const-string v3, "SamsungSearchClient"

    invoke-static {v0, v2, v3}, Landroidx/recyclerview/widget/P;->r(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->getResultCode(Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method private register_template()I
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mIsSupported:Z

    if-nez v0, :cond_0

    sget p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->ERR_CODE_NOT_AVAILABLE:I

    return p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mData:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClientData;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClientData;->getTemplatePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->readFile(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "query-content"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->PUBLIC_URI:Landroid/net/Uri;

    const-string v4, "register_query_template"

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Unable to register template "

    const-string v3, "SamsungSearchClient"

    invoke-static {v1, v2, v3}, Landroidx/recyclerview/widget/P;->r(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->getResultCode(Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method private unregister_schema()I
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    sget p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->ERR_CODE_NOT_AVAILABLE:I

    return p0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mData:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClientData;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClientData;->getSchemaName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->PUBLIC_URI:Landroid/net/Uri;

    const-string v4, "unregister_schema"

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Unable to unregister schema "

    const-string v3, "SamsungSearchClient"

    invoke-static {v0, v2, v3}, Landroidx/recyclerview/widget/P;->r(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->getResultCode(Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public bulkDelete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "SamsungSearchClient"

    const-string v1, "{query: {match: {fields: ["

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], texts: ["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]}}}"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->getSchemaUri()Landroid/net/Uri;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p2, p0, p1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " items deleted in bulk"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "bulkDelete : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const-string v0, "SamsungSearchClient"

    const-string v1, "{query:{term:{fields:["

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->isAvailable()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], text:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}}}"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->getSchemaUri()Landroid/net/Uri;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p2, p0, p1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " item deleted"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "delete : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mClientName:Ljava/lang/String;

    return-object p0
.end method

.method public getResultCode(Landroid/os/Bundle;)I
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "status"

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    sget p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->ERR_CODE_EMPTY_RESULT:I

    return p0
.end method

.method public getSchemaUri()Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->PUBLIC_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mData:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClientData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClientData;->getSchemaName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSchemaVersion()I
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    sget p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->ERR_CODE_NOT_AVAILABLE:I

    return p0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mData:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClientData;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClientData;->getSchemaName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->PUBLIC_URI:Landroid/net/Uri;

    const-string v3, "get_schema_version"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->getResultCode(Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public insert(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->getSchemaVersion()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->getSchemaUri()Landroid/net/Uri;

    move-result-object p0

    new-array v2, v1, [Landroid/content/ContentValues;

    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/ContentValues;

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error while inserting data : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "SamsungSearchClient"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->t(Ljava/lang/RuntimeException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1
.end method

.method public insert(Landroid/content/ContentValues;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->getSchemaVersion()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->getSchemaUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error while inserting data : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "SamsungSearchClient"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->t(Ljava/lang/RuntimeException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mIsSupported:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mIsRegistered:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFallBackQuery()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mIsFallBack:Z

    return p0
.end method

.method public readFile(Ljava/lang/String;)[B
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ltz v1, :cond_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read file. EOF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_1

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to read file for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mClientName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public refresh()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->unregister_schema()I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mIsSupported:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mIsRegistered:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->initialize()V

    return-void
.end method

.method public varargs search(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->KEY_QUERY_TEMPLATE_NAME:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mData:Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClientData;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClientData;->getTemplateName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->KEY_QUERY_JSON_ARGS:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object p2, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->KEY_QUERY_ARGS_SORT:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->getSchemaUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0, v1, v0, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "search : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SamsungSearchClient"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public searchResult(Landroid/database/Cursor;[I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "[I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchConstants;->KEY_QUERY_FALLBACK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->mIsFallBack:Z

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "printResults: count:: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SamsungSearchClient"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    new-instance p0, Ljava/util/ArrayList;

    array-length v2, p2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, p2, v3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    return-object v0

    :goto_1
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "searchResults : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    const/4 p0, 0x0

    return-object p0

    :goto_2
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    throw p0
.end method

.method public searchResult(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->search(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length p2, p3

    new-array v0, p2, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p3, v1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->searchResult(Landroid/database/Cursor;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public varargs searchResult(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p3}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->search(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length p3, p2

    new-array v0, p3, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->searchResult(Landroid/database/Cursor;[I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "{query:{term:{fields:["

    const-string v1, "], text:"

    const-string v2, "}}}"

    invoke-static {v0, p1, v1, p2, v2}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->getSchemaUri()Landroid/net/Uri;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p3, p1, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
