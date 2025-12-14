.class Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$2;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$2$1;->this$1:Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaviconAvailable(Landroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v1, 0x39

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$2$1;->this$1:Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$2;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$2;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$2;->val$url:Ljava/lang/String;

    long-to-int p3, p3

    invoke-virtual {v0, p0, p2, p1, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->onFetchedFinished(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$2$1;->this$1:Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$2;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$2;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$2;->val$url:Ljava/lang/String;

    invoke-static {p3, p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->b(Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
