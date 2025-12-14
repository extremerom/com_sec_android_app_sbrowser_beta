.class public final Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAutoTintEnabled:Ljava/lang/Boolean;

.field private mBitmapByteArray:[B

.field private mBlobStoreImage:Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;

.field private mDarkModeBitmapByteArray:[B

.field private mDarkModeUrl:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private final mNamespace:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ContextualInsightData"

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;->mNamespace:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;->mId:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;->mAutoTintEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;)[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;->mBitmapByteArray:[B

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;)Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;->mBlobStoreImage:Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;)[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;->mDarkModeBitmapByteArray:[B

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;->mDarkModeUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;->mUrl:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument;-><init>(Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;I)V

    return-object v0
.end method

.method public setBitmapByteArray([B)Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;->mBitmapByteArray:[B

    return-object p0
.end method

.method public setBitmapByteArray([BZ)Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;->mBitmapByteArray:[B

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;->mAutoTintEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setBitmapByteArray([B[B)Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;->mBitmapByteArray:[B

    iput-object p2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;->mDarkModeBitmapByteArray:[B

    return-object p0
.end method

.method public setBlobStoreImage(Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;)Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;->mBlobStoreImage:Lcom/samsung/android/sdk/aisuggestion/schema/core/BlobStoreHandleDataDocument;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;->mDarkModeUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;Z)Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;->mUrl:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/schema/core/ImageResourceDataDocument$Builder;->mAutoTintEnabled:Ljava/lang/Boolean;

    return-object p0
.end method
