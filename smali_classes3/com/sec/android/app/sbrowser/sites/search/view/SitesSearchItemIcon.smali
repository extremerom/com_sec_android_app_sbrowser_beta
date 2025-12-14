.class public Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/content/Context;JLandroid/widget/ImageView;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon;->setImageDrawable(Landroid/content/Context;JLandroid/widget/ImageView;)V

    return-void
.end method

.method private static loadIcon(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;IILandroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "II",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;I)V"
        }
    .end annotation

    move-object v4, p1

    move-object v8, p2

    move/from16 v2, p3

    move-object/from16 v1, p5

    move/from16 v7, p7

    const/4 v0, 0x7

    filled-new-array {v0}, [I

    move-result-object v9

    if-eqz v8, :cond_5

    if-eqz v4, :cond_5

    if-ltz v7, :cond_5

    invoke-virtual/range {p6 .. p6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    invoke-virtual/range {p6 .. p6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getDominantColorFromMemCache(Ljava/lang/String;)J

    move-result-wide v5

    const-string v10, "dominantColor : "

    const-string v11, "SitesSearchItemIcon"

    invoke-static {v5, v6, v10, v11}, Lt/b;->y(JLjava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v8, 0x6

    if-ne v2, v8, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/16 v8, 0x39

    if-lt v2, v8, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lt v2, v8, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v0, 0x8

    move-object v10, p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    const-string v2, "dominantColor1 : "

    invoke-static {v5, v6, v2, v11}, Lt/b;->y(JLjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    cmp-long v2, v5, v8

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getByteArrayForBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/ColorUtils;->getDominantColor([B)I

    move-result v2

    const/4 v10, -0x1

    if-eq v2, v10, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v5

    int-to-long v10, v2

    invoke-virtual {v5, v3, v0, v10, v11}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;J)V

    move-wide v5, v10

    :cond_2
    cmp-long v0, v5, v8

    if-eqz v0, :cond_3

    const-wide/16 v2, -0x1

    cmp-long v0, v5, v2

    if-eqz v0, :cond_3

    invoke-virtual/range {p6 .. p7}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    long-to-int v2, v5

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setDominantColor(I)V

    :cond_3
    invoke-static {v1, v5, v6, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon;->setImageDrawable(Landroid/content/Context;JLandroid/widget/ImageView;)V

    goto :goto_0

    :cond_4
    move-object v10, p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "Icon of iconType: "

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " is not in Cache"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v5, v6, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon;->setImageDrawable(Landroid/content/Context;JLandroid/widget/ImageView;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Image Not present in cache :: Native call for "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getFaviconHelper()Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    move-result-object v11

    new-instance v12, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon$1;

    move-object v0, v12

    move-object/from16 v1, p5

    move/from16 v2, p3

    move-object v4, p1

    move-object v5, p0

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon$1;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/util/concurrent/CopyOnWriteArrayList;I)V

    move/from16 v0, p4

    invoke-virtual {v11, p2, v9, v0, v12}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->getLargestRawFaviconForUrl(Ljava/lang/String;[IILcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private static setBookmarkIcon(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    const/16 v3, 0x40

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getIcon(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/16 v4, 0x39

    if-lt v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-lt v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getByteArrayForBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    if-eqz v4, :cond_2

    array-length v5, v4

    if-eqz v5, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setTouchIcon([B)V

    const/16 p0, 0x8

    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/utils/ColorUtils;->getDominantColor([B)I

    move-result v0

    int-to-long v1, v0

    invoke-static {p3, v1, v2, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon;->setImageDrawable(Landroid/content/Context;JLandroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon;->setDominantText(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setDominantColor(I)V

    goto :goto_1

    :cond_2
    invoke-static {p3, v1, v2, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon;->setImageDrawable(Landroid/content/Context;JLandroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon;->setDominantText(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;)V

    goto :goto_1

    :cond_3
    invoke-static {p3, v1, v2, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon;->setImageDrawable(Landroid/content/Context;JLandroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon;->setDominantText(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;)V

    :goto_1
    return-void
.end method

.method public static setBookmarkSearchResultIcon(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getBookmarkType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    const/16 v3, 0x8

    const v4, 0x7f0713a3

    const v5, 0x7f0713a4

    if-eq v0, v2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isTouchIconAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getTouchIcon()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getDominantColor()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getDominantColor()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getDominantColor()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0, v0, v1, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon;->setImageDrawable(Landroid/content/Context;JLandroid/widget/ImageView;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon;->setDominantText(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;)V

    goto :goto_0

    :cond_1
    invoke-static {p1, p2, p3, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon;->setBookmarkIcon(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const p1, 0x7f0802d8

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const p1, 0x7f060165

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private static setDominantText(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 3

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ""

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setHistorySearchResultIcon(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            "Landroid/widget/ImageView;",
            "Landroid/widget/TextView;",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getDominantColor()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon;->setDominantText(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    const/16 v6, 0x40

    move-object v2, p2

    move-object v3, p1

    move-object v7, p3

    move-object v8, p4

    move v9, p5

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon;->loadIcon(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;IILandroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getDominantColor()I

    move-result p4

    if-eq p4, v1, :cond_1

    const-string p4, "SitesSearchItemIcon"

    const-string p5, "IF ELSE :: TITLE"

    invoke-static {p4, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getTitle()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon;->setDominantText(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getDominantColor()I

    move-result p0

    int-to-long p4, p0

    invoke-static {p3, p4, p5, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon;->setImageDrawable(Landroid/content/Context;JLandroid/widget/ImageView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static setImageDrawable(Landroid/content/Context;JLandroid/widget/ImageView;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    const p1, 0x7f060bcd

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    int-to-long p1, p0

    :cond_1
    const p0, 0x7f080324

    invoke-virtual {p3, p0}, Landroid/view/View;->setBackgroundResource(I)V

    long-to-int p0, p1

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static setSavedPageSearchResultIcon(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Lcom/sec/android/app/sbrowser/sites/history/view/RoundCornersImageView;Landroid/widget/TextView;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isTouchIconAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getTouchIcon()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 p0, 0x8

    invoke-virtual {p3, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f06097f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon;->setDominantText(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;)V

    :goto_0
    return-void
.end method
