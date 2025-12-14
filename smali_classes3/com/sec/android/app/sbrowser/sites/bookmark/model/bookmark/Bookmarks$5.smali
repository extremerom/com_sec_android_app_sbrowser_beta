.class Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;->updateTouchIcon(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;

.field final synthetic val$icon:Landroid/graphics/Bitmap;

.field final synthetic val$originalUrl:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$5;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$5;->val$icon:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$5;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$5;->val$originalUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$5;->val$icon:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getByteArrayForBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$5;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;->a(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$5;->val$url:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/Surl;->getSurl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->updateTouchIcon(Landroid/app/Activity;Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$5;->val$originalUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$5;->val$originalUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$5;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$5;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;->a(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;)Landroid/app/Activity;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$5;->val$originalUrl:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/Surl;->getSurl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->updateTouchIcon(Landroid/app/Activity;Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method
