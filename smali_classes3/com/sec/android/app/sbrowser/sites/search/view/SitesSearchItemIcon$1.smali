.class Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon;->loadIcon(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;IILandroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$cacheKey:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$iconType:I

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$position:I

.field final synthetic val$sitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/util/concurrent/CopyOnWriteArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon$1;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon$1;->val$iconType:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon$1;->val$cacheKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon$1;->val$textView:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon$1;->val$sitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput p7, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaviconAvailable(Landroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 3

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon$1;->val$context:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon$1;->val$iconType:I

    const/4 v1, 0x6

    const-string v2, "SitesSearchItemIcon"

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/16 v1, 0x39

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, v1, :cond_1

    const-string p2, "onFaviconAvailable - adding to Bitmap Cache"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon$1;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {p2, v0, p1, p3, p4}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;J)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon$1;->val$imageView:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon$1;->val$imageView:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon$1;->val$textView:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getByteArrayForBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p3

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/ColorUtils;->getDominantColor([B)I

    move-result p3

    const/4 p4, -0x1

    if-ne p3, p4, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getFaviconHelper()Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    move-result-object p4

    int-to-long v0, p3

    invoke-virtual {p4, p2, v0, v1}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->updateDominantColor(Ljava/lang/String;J)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, " Inside Updating domColor color = "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3, v2}, Lw2/j;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    move-wide p3, v0

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon$1;->val$imageView:Landroid/widget/ImageView;

    invoke-static {p2, p3, p4, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon;->a(Landroid/content/Context;JLandroid/widget/ImageView;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon$1;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {p2, v0, p1, p3, p4}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;J)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon$1;->val$sitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon$1;->val$position:I

    if-lez p1, :cond_4

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon$1;->val$sitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon$1;->val$sitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon$1;->val$position:I

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    long-to-int p1, p3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setDominantColor(I)V

    :cond_4
    :goto_0
    return-void
.end method
