.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u001f\u0008\u0087\u0008\u0018\u00002\u00020\u0001J\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u00d6\u0001\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001a\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000eR$\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0007\"\u0004\u0008\u0012\u0010\u0013R$\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0010\u001a\u0004\u0008\u0015\u0010\u0007\"\u0004\u0008\u0016\u0010\u0013R$\u0010\u0017\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0010\u001a\u0004\u0008\u0018\u0010\u0007\"\u0004\u0008\u0019\u0010\u0013R$\u0010\u001a\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u0010\u001a\u0004\u0008\u001b\u0010\u0007\"\u0004\u0008\u001c\u0010\u0013R\"\u0010\u001d\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010\n\"\u0004\u0008 \u0010!R$\u0010\"\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010\u0010\u001a\u0004\u0008#\u0010\u0007\"\u0004\u0008$\u0010\u0013R$\u0010%\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010\u0010\u001a\u0004\u0008&\u0010\u0007\"\u0004\u0008\'\u0010\u0013R$\u0010(\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010\u0010\u001a\u0004\u0008)\u0010\u0007\"\u0004\u0008*\u0010\u0013\u00a8\u0006+"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;",
        "",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;",
        "toNewsFeedItem",
        "()Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "provider",
        "Ljava/lang/String;",
        "getProvider",
        "setProvider",
        "(Ljava/lang/String;)V",
        "source",
        "getSource",
        "setSource",
        "title",
        "getTitle",
        "setTitle",
        "image",
        "getImage",
        "setImage",
        "providerId",
        "I",
        "getProviderId",
        "setProviderId",
        "(I)V",
        "sourceImage",
        "getSourceImage",
        "setSourceImage",
        "article_url",
        "getArticle_url",
        "setArticle_url",
        "publishTime",
        "getPublishTime",
        "setPublishTime",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private article_url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "article_url"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private image:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private provider:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "provider"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private providerId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "providerId"
    .end annotation
.end field

.field private publishTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "publish_time"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private source:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private sourceImage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source_image"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->provider:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->provider:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->source:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->source:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->image:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->image:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->providerId:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->providerId:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->sourceImage:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->sourceImage:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->article_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->article_url:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->publishTime:Ljava/lang/String;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->publishTime:Ljava/lang/String;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->provider:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->source:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->title:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->image:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->providerId:I

    invoke-static {v3, v0, v2}, LB/e;->c(III)I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->sourceImage:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->article_url:Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->publishTime:Ljava/lang/String;

    if-nez p0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    return v0
.end method

.method public final toNewsFeedItem()Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v11, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->source:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->sourceImage:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->article_url:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->image:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->publishTime:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    :goto_0
    const/16 v9, 0x40

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZILtb/f;)V

    return-object v11
.end method

.method public toString()Ljava/lang/String;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->provider:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->source:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->image:Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->providerId:I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->sourceImage:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->article_url:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->publishTime:Ljava/lang/String;

    const-string v7, "NewsFeedItemDto(provider="

    const-string v8, ", source="

    const-string v9, ", title="

    invoke-static {v7, v0, v8, v1, v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", image="

    const-string v7, ", providerId="

    invoke-static {v0, v2, v1, v3, v7}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", sourceImage="

    const-string v2, ", article_url="

    invoke-static {v0, v4, v1, v5, v2}, LV0/c;->w(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", publishTime="

    const-string v2, ")"

    invoke-static {v0, v6, v1, p0, v2}, Lt/b;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
