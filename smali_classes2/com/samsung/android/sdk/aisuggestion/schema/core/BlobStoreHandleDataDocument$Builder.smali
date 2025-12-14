.class public final Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCreationTimestamp:J

.field private mExpiryTimeMillis:J

.field private mId:Ljava/lang/String;

.field private final mNamespace:Ljava/lang/String;

.field private mPublisherLabel:Ljava/lang/String;

.field private mResourceDigest:Ljava/lang/String;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ContextualInsightData"

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;->mNamespace:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;->mId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;->mCreationTimestamp:J

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;->mCreationTimestamp:J

    return-wide v0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;->mExpiryTimeMillis:J

    return-wide v0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;->mPublisherLabel:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;->mResourceDigest:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;->mTag:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;-><init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;I)V

    return-object v0
.end method

.method public setCreationTimestamp(J)Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;->mCreationTimestamp:J

    return-object p0
.end method

.method public setExpiryTimeMillis(J)Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;->mExpiryTimeMillis:J

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public setPublisherLabel(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;->mPublisherLabel:Ljava/lang/String;

    return-object p0
.end method

.method public setResourceDigest(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;->mResourceDigest:Ljava/lang/String;

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument$Builder;->mTag:Ljava/lang/String;

    return-object p0
.end method
