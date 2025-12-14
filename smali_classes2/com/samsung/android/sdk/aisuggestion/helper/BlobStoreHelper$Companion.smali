.class public final Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0014\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0013\u0010\u0006\u001a\u00020\u0005*\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0013\u0010\u0008\u001a\u00020\u0004*\u00020\u0005H\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001f\u0010\u000c\u001a\u00020\n*\u00020\u00052\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0015\u0010\u0008\u001a\u0004\u0018\u00010\u0004*\u00020\nH\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\u000eR\u001b\u0010\u0012\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\n8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\n8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0015R\u0014\u0010\u0017\u001a\u00020\n8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\n8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0015R\u0014\u0010\u0019\u001a\u00020\n8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\n8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u0015R\u0014\u0010\u001b\u001a\u00020\n8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0015R\u0014\u0010\u001c\u001a\u00020\n8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u0015R\u0014\u0010\u001d\u001a\u00020\n8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u0015R\u0014\u0010\u001e\u001a\u00020\n8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u0015R\u0014\u0010\u001f\u001a\u00020\n8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u0015R\u0014\u0010 \u001a\u00020\n8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u0015R\u0014\u0010!\u001a\u00020\n8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u0015R\u0014\u0010\"\u001a\u00020\n8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\"\u0010\u0015\u00a8\u0006#"
    }
    d2 = {
        "Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion;",
        "",
        "<init>",
        "()V",
        "Landroid/app/blob/BlobHandle;",
        "Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;",
        "toBlobStoreHandleDocument",
        "(Landroid/app/blob/BlobHandle;)Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;",
        "toBlobHandle",
        "(Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;)Landroid/app/blob/BlobHandle;",
        "",
        "path",
        "toUri",
        "(Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;Ljava/lang/String;)Ljava/lang/String;",
        "(Ljava/lang/String;)Landroid/app/blob/BlobHandle;",
        "",
        "isBuildTypeUser$delegate",
        "Ldb/f;",
        "isBuildTypeUser",
        "()Z",
        "ALLOW_PACKAGE_NAME_SSS",
        "Ljava/lang/String;",
        "ALLOW_PACKAGE_NAME_SYSTEM_UI",
        "ALLOW_SIGNATURE_ENG",
        "ALLOW_SIGNATURE_USER",
        "PARAM_KEY_CREATION_TIMESTAMP",
        "PARAM_KEY_EXPIRY_TIME_MILLIS",
        "PARAM_KEY_PUBLISHER_LABEL",
        "PARAM_KEY_RESOURCE_DIGEST",
        "PARAM_KEY_TAG",
        "URI_AUTHORITY",
        "URI_PATH_ANIMATED_IMAGE",
        "URI_PATH_DRAWABLE",
        "URI_PATH_HANDLE",
        "URI_SCHEME",
        "deepsky-sdk-aisuggestion-1.6.13_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$isBuildTypeUser(Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion;->isBuildTypeUser()Z

    move-result p0

    return p0
.end method

.method private final isBuildTypeUser()Z
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper;->access$isBuildTypeUser$delegate$cp()Ldb/f;

    move-result-object p0

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static synthetic toUri$default(Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion;Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p2, "drawable"

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/aisuggestion/helper/BlobStoreHelper$Companion;->toUri(Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final toBlobHandle(Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;)Landroid/app/blob/BlobHandle;
    .locals 3
    .param p1    # Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->resourceDigest:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    iget-object v0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->publisherLabel:Ljava/lang/String;

    iget-wide v1, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->expiryTimeMillis:J

    iget-object p1, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->tag:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2, p1}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->c([BLjava/lang/CharSequence;JLjava/lang/String;)Landroid/app/blob/BlobHandle;

    move-result-object p0

    const-string p1, "createWithSha256(\n      \u2026       tag,\n            )"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final toBlobHandle(Ljava/lang/String;)Landroid/app/blob/BlobHandle;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    const-string v0, "contextualinsight://blobstore/handle"

    invoke-static {p1, v0, p0}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string p1, "resourceDigest"

    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_1
    :goto_0
    move-object p0, v0

    goto :goto_1

    :cond_2
    const-string v1, "publisherLabel"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v2, "expiryTimeMillis"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "tag"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x2

    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-static {p1, v1, v2, v3, p0}, LT6/a;->c([BLjava/lang/String;JLjava/lang/String;)Landroid/app/blob/BlobHandle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    :goto_1
    instance-of p1, p0, Ldb/l;

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, p0

    :goto_2
    invoke-static {v0}, LT6/a;->b(Ljava/lang/Object;)Landroid/app/blob/BlobHandle;

    move-result-object p0

    return-object p0
.end method

.method public final toBlobStoreHandleDocument(Landroid/app/blob/BlobHandle;)Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;
    .locals 11
    .param p1    # Landroid/app/blob/BlobHandle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->z(Landroid/app/blob/BlobHandle;)[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    new-instance p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->n(Landroid/app/blob/BlobHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->b(Landroid/app/blob/BlobHandle;)J

    move-result-wide v8

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->p(Landroid/app/blob/BlobHandle;)Ljava/lang/String;

    move-result-object v10

    const-string v2, ""

    move-object v1, p0

    move-object v3, v4

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    return-object p0
.end method

.method public final toUri(Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/net/Uri$Builder;

    invoke-direct {p0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v0, "contextualinsight"

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "blobstore"

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "handle"

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    :goto_0
    const-string p2, "resourceDigest"

    iget-object v0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->resourceDigest:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p2, "publisherLabel"

    iget-object v0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->publisherLabel:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    iget-wide v0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->creationTimestamp:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "creationTimestamp"

    invoke-virtual {p0, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    iget-wide v0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->expiryTimeMillis:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "expiryTimeMillis"

    invoke-virtual {p0, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p2, "tag"

    iget-object p1, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->tag:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Builder()\n              \u2026      .build().toString()"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
