.class Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$1;
.super Li4/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;->fetchBitmapFromUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$BitmapCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li4/b;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$BitmapCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$imageUrl:Ljava/lang/String;

.field final synthetic val$pushId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$BitmapCallback;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$1;->this$0:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$1;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$BitmapCallback;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$1;->val$imageUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$1;->val$pushId:Ljava/lang/String;

    invoke-direct {p0}, Li4/b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$1;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$BitmapCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$1;->lambda$onLoadFailed$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$BitmapCallback;)V

    return-void
.end method

.method private synthetic lambda$onLoadFailed$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$BitmapCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$1;->this$0:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;

    invoke-static {p0, p4, p1, p2, p3}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;->d(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$BitmapCallback;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$1;->this$0:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;->b(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;->c(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;I)V

    const/4 p1, 0x3

    const-string v1, "ContentsPushNotificationManager"

    if-ge v0, p1, :cond_0

    const-string p1, "retry fetchBitmapFromUrl"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$1;->val$imageUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$1;->val$pushId:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$1;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$BitmapCallback;

    new-instance v0, Lcom/sec/android/app/sbrowser/contents_push/b;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/contents_push/b;-><init>(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$1;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$BitmapCallback;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string p1, "retry count exceeds max count! failed fetchBitmapFromUrl"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "9195"

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->sendSALogging(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$1;->val$pushId:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSILog;->sendImageLoadFailed(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$1;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$BitmapCallback;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$BitmapCallback;->onFinished(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lj4/c;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lj4/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lj4/c;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$1;->val$callback:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$BitmapCallback;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$BitmapCallback;->onFinished(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lj4/c;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lj4/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$1;->onResourceReady(Landroid/graphics/Bitmap;Lj4/c;)V

    return-void
.end method
