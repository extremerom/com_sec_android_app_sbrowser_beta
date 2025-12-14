.class public Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/appsearch/annotation/Document;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;
    }
.end annotation


# instance fields
.field public final creationTimestamp:J
    .annotation build Landroidx/appsearch/annotation/Document$CreationTimestampMillis;
    .end annotation
.end field

.field public final expiryTimeMillis:J
    .annotation build Landroidx/appsearch/annotation/Document$LongProperty;
    .end annotation
.end field

.field public final id:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$Id;
    .end annotation
.end field

.field public final namespace:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$Namespace;
    .end annotation
.end field

.field public final publisherLabel:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation
.end field

.field public final resourceDigest:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation
.end field

.field public final tag:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ContextualInsightData"

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->namespace:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;->c(Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;->e(Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->resourceDigest:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;->d(Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->publisherLabel:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;->a(Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->creationTimestamp:J

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;->b(Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->expiryTimeMillis:J

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;->f(Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->tag:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;-><init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "ContextualInsightData"

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->namespace:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->resourceDigest:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->publisherLabel:Ljava/lang/String;

    iput-wide p5, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->creationTimestamp:J

    iput-wide p7, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->expiryTimeMillis:J

    iput-object p9, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;->tag:Ljava/lang/String;

    return-void
.end method
