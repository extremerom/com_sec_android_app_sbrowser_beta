.class public Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mFavicon:Landroid/graphics/Bitmap;

.field private mFaviconUri:Ljava/lang/String;

.field private mKeyword:Ljava/lang/String;

.field private mLabel:Ljava/lang/String;

.field private mSearchUri:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->mFavicon:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->mFaviconUri:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->mTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->mLabel:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->mKeyword:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->mSearchUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->mTitle:Ljava/lang/String;

    check-cast p1, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->mFavicon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getFaviconUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->mFaviconUri:Ljava/lang/String;

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getSearchUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->mSearchUri:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public setFavicon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->mFavicon:Landroid/graphics/Bitmap;

    return-void
.end method
