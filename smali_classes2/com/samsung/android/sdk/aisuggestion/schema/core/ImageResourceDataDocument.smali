.class public Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/appsearch/annotation/Document;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;
    }
.end annotation


# instance fields
.field final autoTintEnabled:Ljava/lang/Boolean;
    .annotation build Landroidx/appsearch/annotation/Document$BooleanProperty;
    .end annotation
.end field

.field final bitmapByteArray:[B
    .annotation build Landroidx/appsearch/annotation/Document$BytesProperty;
    .end annotation
.end field

.field final blobStoreImage:Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;
    .annotation build Landroidx/appsearch/annotation/Document$DocumentProperty;
    .end annotation
.end field

.field final darkModeBitmapByteArray:[B
    .annotation build Landroidx/appsearch/annotation/Document$BytesProperty;
    .end annotation
.end field

.field final darkModeUrl:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation
.end field

.field final id:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$Id;
    .end annotation
.end field

.field final namespace:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$Namespace;
    .end annotation
.end field

.field final url:Ljava/lang/String;
    .annotation build Landroidx/appsearch/annotation/Document$StringProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ContextualInsightData"

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;->namespace:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;->f(Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;->id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;->g(Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;->url:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;->c(Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;)Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;->blobStoreImage:Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;->b(Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;->bitmapByteArray:[B

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;->e(Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;->darkModeUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;->d(Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;->darkModeBitmapByteArray:[B

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;->a(Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;->autoTintEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;-><init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;[BLjava/lang/String;[BLjava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "ContextualInsightData"

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;->namespace:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;->url:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;->blobStoreImage:Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;

    iput-object p5, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;->bitmapByteArray:[B

    iput-object p6, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;->darkModeUrl:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;->darkModeBitmapByteArray:[B

    iput-object p8, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;->autoTintEnabled:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getBitmapByteArray()[B
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;->bitmapByteArray:[B

    return-object p0
.end method

.method public getBlobStoreImage()Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;->blobStoreImage:Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;

    return-object p0
.end method

.method public getDarkModeBitmapByteArray()[B
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;->darkModeBitmapByteArray:[B

    return-object p0
.end method

.method public getDarkModeUrl()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;->darkModeUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;->namespace:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;->url:Ljava/lang/String;

    return-object p0
.end method

.method public isAutoTintEnabled()Ljava/lang/Boolean;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;->autoTintEnabled:Ljava/lang/Boolean;

    return-object p0
.end method
