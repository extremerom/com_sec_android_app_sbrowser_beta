.class public Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher;


# instance fields
.field private mFaviconHelper:Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    invoke-direct {v0}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher;->mFaviconHelper:Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher;
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher;->sInstance:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher;-><init>()V

    sput-object v1, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher;->sInstance:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher;->sInstance:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public loadIcon(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 10

    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    filled-new-array {v0}, [I

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher;->mFaviconHelper:Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    new-instance v9, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher$1;

    move-object v3, v9

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher$1;-><init>(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher;Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/TextView;)V

    invoke-virtual {v2, p3, v0, v1, v9}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->getLargestRawFaviconForUrl(Ljava/lang/String;[IILcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;)V

    :cond_2
    :goto_0
    return-void
.end method
