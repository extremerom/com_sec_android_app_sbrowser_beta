.class final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;
.super Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$Loader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheIconLoader"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0011\u0008\u0082\u0008\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ/\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0005H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001a\u0010\u001f\u001a\u00020\u001e2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u00d6\u0003\u00a2\u0006\u0004\u0008\u001f\u0010 R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010!\u001a\u0004\u0008\"\u0010\u001bR\u0017\u0010\u0004\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010!\u001a\u0004\u0008#\u0010\u001bR\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010$\u001a\u0004\u0008%\u0010\u0019R\"\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u0019\u0010\n\u001a\u0004\u0018\u00010\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010+\u001a\u0004\u0008,\u0010-R\u0014\u0010.\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010$\u00a8\u0006/"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$Loader;",
        "",
        "iconType",
        "iconSize",
        "",
        "url",
        "",
        "dominantColor",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "<init>",
        "(IILjava/lang/String;JLandroid/graphics/Bitmap;)V",
        "Landroid/content/Context;",
        "context",
        "Landroid/widget/TextView;",
        "textView",
        "Landroid/widget/ImageView;",
        "imageView",
        "Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;",
        "item",
        "Ldb/r;",
        "load",
        "(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;)V",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "()I",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "I",
        "getIconType",
        "getIconSize",
        "Ljava/lang/String;",
        "getUrl",
        "J",
        "getDominantColor",
        "()J",
        "setDominantColor",
        "(J)V",
        "Landroid/graphics/Bitmap;",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "cacheKey",
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
.field private final bitmap:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final cacheKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dominantColor:J

.field private final iconSize:I

.field private final iconType:I

.field private final url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/String;JLandroid/graphics/Bitmap;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$Loader;-><init>(Ltb/f;)V

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->iconType:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->iconSize:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->url:Ljava/lang/String;

    iput-wide p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->dominantColor:J

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->bitmap:Landroid/graphics/Bitmap;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->cacheKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->iconType:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->iconType:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->iconSize:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->iconSize:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->dominantColor:J

    iget-wide v5, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->dominantColor:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->bitmap:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 6

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->iconType:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->iconSize:I

    invoke-static {v2, v0, v1}, LB/e;->c(III)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->url:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->dominantColor:J

    invoke-static {v4, v5, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->f(JII)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->bitmap:Landroid/graphics/Bitmap;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method

.method public load(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textView"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageView"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;->INSTANCE:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->iconType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;->access$isValidIcon(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;Ljava/lang/Integer;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v1, p1, p0, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;->access$setIcon(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->dominantColor:J

    const-string v0, "dominantColor1 : "

    const-string v4, "HistoryItemListAdapter"

    invoke-static {v2, v3, v0, v4}, Lt/b;->y(JLjava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->dominantColor:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getByteArrayForBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ColorUtils;->getDominantColor([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->cacheKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->bitmap:Landroid/graphics/Bitmap;

    int-to-long v7, v0

    invoke-virtual {v2, v3, v6, v7, v8}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;J)V

    iput-wide v7, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->dominantColor:J

    :cond_1
    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->dominantColor:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    long-to-int v0, v2

    invoke-virtual {p4, v0}, Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;->setBackgroundColor(I)V

    :cond_2
    iget-wide v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->dominantColor:J

    move-object v2, p1

    move-object v3, p4

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;->access$setDominantIcon(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;JLandroid/widget/TextView;Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->iconType:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->iconSize:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->url:Ljava/lang/String;

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->dominantColor:J

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$CacheIconLoader;->bitmap:Landroid/graphics/Bitmap;

    const-string v5, "CacheIconLoader(iconType="

    const-string v6, ", iconSize="

    const-string v7, ", url="

    invoke-static {v0, v1, v5, v6, v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dominantColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
