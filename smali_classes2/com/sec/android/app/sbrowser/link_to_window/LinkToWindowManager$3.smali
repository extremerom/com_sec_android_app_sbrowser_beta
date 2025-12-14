.class Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->getFaviconByUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$FaviconCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;

.field final synthetic val$cacheKey:Ljava/lang/String;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$FaviconCallback;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$FaviconCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$3;->this$0:Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$3;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$3;->val$cacheKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$3;->val$callback:Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$FaviconCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaviconAvailable(Landroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 2

    const-string p2, "LinkToWindowManager"

    if-nez p1, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "No favicon, url: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$3;->val$url:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$3;->this$0:Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->getIconFetcher()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$3;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p3, p4}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;J)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Favicon from engine, url: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$3;->val$url:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$3;->val$callback:Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$FaviconCallback;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$FaviconCallback;->onFaviconAvailable(Landroid/graphics/Bitmap;)V

    return-void
.end method
