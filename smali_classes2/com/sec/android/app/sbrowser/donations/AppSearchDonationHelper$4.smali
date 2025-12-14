.class Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;->loadFaviconIfPossible(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;

.field final synthetic val$loadCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$tabList:Ljava/util/List;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper$4;->this$0:Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper$4;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper$4;->val$loadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper$4;->val$tabList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaviconAvailable(Landroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper$4;->val$url:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3, p4}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;J)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper$4;->val$loadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper$4;->this$0:Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper$4;->val$tabList:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;->f(Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper$4;->this$0:Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;->g(Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;Ljava/util/List;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper$4;->val$loadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_1
    return-void
.end method
