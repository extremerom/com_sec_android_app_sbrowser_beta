.class Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher;->loadIcon(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher;

.field final synthetic val$cacheKey:Ljava/lang/String;

.field final synthetic val$dominantTextView:Landroid/widget/TextView;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher;Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher$1;->val$cacheKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher$1;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher$1;->val$dominantTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaviconAvailable(Landroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "HistoryNavigationIconFetcher"

    const-string v0, "onFaviconAvailable - adding to Bitmap Cache"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher$1;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {p2, v0, p1, p3, p4}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;J)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher$1;->val$url:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher$1;->val$dominantTextView:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
