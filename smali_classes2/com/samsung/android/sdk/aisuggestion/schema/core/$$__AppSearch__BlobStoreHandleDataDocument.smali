.class public final Lcom/samsung/android/sdk/aisuggestion/schema/core/$$__AppSearch__BlobStoreHandleDataDocument;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv/q;"
    }
.end annotation


# static fields
.field public static final SCHEMA_NAME:Ljava/lang/String; = "ContextualInsightData:BlobStoreHandle"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromGenericDocument(Lv/u;Ljava/util/Map;)Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv/u;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;"
        }
    .end annotation

    iget-object p0, p1, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v1, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->a:Ljava/lang/String;

    iget-object v2, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    iget-wide v5, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->d:J

    const-string p0, "resourceDigest"

    invoke-virtual {p1, p0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v3, p0

    if-eqz v3, :cond_0

    aget-object p0, p0, p2

    move-object v3, p0

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    const-string p0, "publisherLabel"

    invoke-virtual {p1, p0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v4, p0

    if-eqz v4, :cond_1

    aget-object p0, p0, p2

    move-object v4, p0

    goto :goto_1

    :cond_1
    move-object v4, v0

    :goto_1
    const-string p0, "expiryTimeMillis"

    invoke-virtual {p1, p0}, Lv/u;->k(Ljava/lang/String;)J

    move-result-wide v7

    const-string p0, "tag"

    invoke-virtual {p1, p0}, Lv/u;->m(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length p1, p0

    if-eqz p1, :cond_2

    aget-object p0, p0, p2

    move-object v9, p0

    goto :goto_2

    :cond_2
    move-object v9, v0

    :goto_2
    new-instance p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic fromGenericDocument(Lv/u;Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/aisuggestion/schema/core/$$__AppSearch__BlobStoreHandleDataDocument;->fromGenericDocument(Lv/u;Ljava/util/Map;)Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic fromGenericDocument(Lv/u;Lv/s;)Ljava/lang/Object;
    .annotation build Landroidx/appsearch/app/ExperimentalAppSearchApi;
    .end annotation
.end method

.method public getDependencyDocumentClasses()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSchema()Lv/o;
    .locals 12

    new-instance p0, Lcom/google/firebase/messaging/l;

    const-string v0, "ContextualInsightData:BlobStoreHandle"

    invoke-direct {p0, v0}, Lcom/google/firebase/messaging/l;-><init>(Ljava/lang/String;)V

    const-string v0, "resourceDigest"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2, v2}, Lt/b;->t(ILjava/lang/String;III)Lv/n;

    move-result-object v0

    const-string v3, "publisherLabel"

    invoke-static {p0, v0, v3, v1, v2}, Lt/b;->q(Lcom/google/firebase/messaging/l;Lv/n;Ljava/lang/String;II)Lv/m;

    move-result-object v0

    invoke-static {v0, v2, v2, p0}, Lt/b;->C(Lv/m;IILcom/google/firebase/messaging/l;)V

    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v3, 0x3

    const-string v4, "cardinality"

    invoke-static {v6, v0, v3, v4}, LG6/a;->b(IIILjava/lang/String;)V

    const-string v3, "indexingType"

    invoke-static {v2, v2, v0, v3}, LG6/a;->b(IIILjava/lang/String;)V

    new-instance v0, LB/i;

    new-instance v10, LB/f;

    invoke-direct {v10, v2}, LB/f;-><init>(I)V

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v4, "expiryTimeMillis"

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, LB/i;-><init>(Ljava/lang/String;IILjava/lang/String;LB/h;LB/d;LB/f;LB/g;)V

    iget-boolean v3, p0, Lcom/google/firebase/messaging/l;->a:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    new-instance v3, Ljava/util/LinkedHashSet;

    iget-object v4, p0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/LinkedHashSet;

    invoke-direct {v3, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/google/firebase/messaging/l;->d:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/google/firebase/messaging/l;->a:Z

    :cond_0
    iget-object v3, p0, Lcom/google/firebase/messaging/l;->e:Ljava/lang/Object;

    check-cast v3, LN/g;

    iget-object v4, v0, LB/i;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, LN/g;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/firebase/messaging/l;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    const-string v4, "tag"

    invoke-static {v3, v0, v4, v1, v2}, Lt/b;->r(Ljava/util/ArrayList;LB/i;Ljava/lang/String;II)Lv/m;

    move-result-object v0

    invoke-static {v0, v2, v2, p0}, Lt/b;->v(Lv/m;IILcom/google/firebase/messaging/l;)Lv/o;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lx/b;

    const-string v0, "Property defined more than once: "

    invoke-static {v0, v4}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSchemaName()Ljava/lang/String;
    .locals 0

    const-string p0, "ContextualInsightData:BlobStoreHandle"

    return-object p0
.end method

.method public toGenericDocument(Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;)Lv/u;
    .locals 4

    new-instance p0, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->namespace:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->id:Ljava/lang/String;

    const-string v2, "ContextualInsightData:BlobStoreHandle"

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->creationTimestamp:J

    iget-object v2, p0, Lcom/samsung/android/motionphoto/utils/ex/e;->b:Ljava/lang/Object;

    check-cast v2, LB/a;

    iput-wide v0, v2, LB/a;->d:J

    iget-object v0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->resourceDigest:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "resourceDigest"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->publisherLabel:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "publisherLabel"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_1
    iget-wide v0, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->expiryTimeMillis:J

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide v0, v2, v3

    const-string v0, "expiryTimeMillis"

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object p1, p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->tag:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v0, "tag"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toGenericDocument(Ljava/lang/Object;)Lv/u;
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/$$__AppSearch__BlobStoreHandleDataDocument;->toGenericDocument(Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;)Lv/u;

    move-result-object p0

    return-object p0
.end method
