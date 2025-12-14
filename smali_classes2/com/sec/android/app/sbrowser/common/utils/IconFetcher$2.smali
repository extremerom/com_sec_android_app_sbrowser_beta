.class Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->requestIcon(Ljava/lang/String;IILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$iconSize:I

.field final synthetic val$iconTypes:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;IILjava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$2;->this$0:Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$2;->val$iconTypes:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$2;->val$iconSize:I

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$2;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaviconAvailable(Landroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 4

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$2;->this$0:Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->a(Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;)Landroid/util/LruCache;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "onFaviconAvailable - adding to Bitmap Cache"

    const-string v1, "IconFetcher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$2;->val$iconTypes:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$2;->val$iconSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onFaviconAvailable - DMCOL : "

    invoke-static {p3, p4, v2, v1}, Lt/b;->y(JLjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$2;->val$iconTypes:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string p3, " Inside Updating"

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getByteArrayForBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p3

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/ColorUtils;->getDominantColor([B)I

    move-result p3

    const/4 p4, -0x1

    if-ne p3, p4, :cond_0

    return-void

    :cond_0
    iget-object p4, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$2;->this$0:Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getFaviconHelper()Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    move-result-object p4

    int-to-long v2, p3

    invoke-virtual {p4, p2, v2, v3}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->updateDominantColor(Ljava/lang/String;J)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, " Inside Updating :: Color : "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3, v1}, Lw2/j;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    move-wide p3, v2

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$2;->this$0:Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    invoke-virtual {p2, v0, p1, p3, p4}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;J)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$2;->val$handler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$2;->this$0:Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->b(Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;Landroid/os/Handler;)V

    :cond_3
    return-void
.end method
