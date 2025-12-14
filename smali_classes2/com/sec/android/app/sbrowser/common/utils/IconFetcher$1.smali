.class Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->requestIcon(Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$1;->this$0:Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaviconAvailable(Landroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$1;->this$0:Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->a(Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;)Landroid/util/LruCache;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p2, "onFaviconAvailable - adding to Bitmap Cache"

    const-string v0, "IconFetcher"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$1;->val$url:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "onFaviconAvailable - DMCOL : "

    invoke-static {p3, p4, v1, v0}, Lt/b;->y(JLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$1;->this$0:Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    invoke-virtual {v0, p2, p1, p3, p4}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;J)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$1;->val$handler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$1;->this$0:Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->b(Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;Landroid/os/Handler;)V

    :cond_1
    return-void
.end method
