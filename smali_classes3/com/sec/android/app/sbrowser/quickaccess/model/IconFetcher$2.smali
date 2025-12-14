.class Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->requestIconToFaviconHelper(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

.field final synthetic val$iconType:[I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;Ljava/lang/String;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$2;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$2;->val$iconType:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$2;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->getFaviconHelper()Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$2;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$2;->val$iconType:[I

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$2$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$2$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$2;)V

    const/16 p0, 0x39

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->getLargestRawFaviconForUrl(Ljava/lang/String;[IILcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;)V

    return-void
.end method
