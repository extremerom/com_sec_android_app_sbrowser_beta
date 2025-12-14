.class Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/Terrace$BitmapRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->getViewPortBitmapAndSavePage(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

.field final synthetic val$isReaderView:Z

.field final synthetic val$savedTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage$2;->val$isReaderView:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage$2;->val$savedTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->a(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SaveWebPage"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "getViewPortBitmapAndSavePage - got view port bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :goto_0
    const-string v1, "getViewPortBitmapAndSavePage - bitmap is null or recycled!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage$2;->val$isReaderView:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->a(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage$2;->val$savedTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->setArticleImage(Landroid/graphics/Bitmap;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage$2;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->a(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->setImage(Landroid/graphics/Bitmap;Z)Landroid/util/Pair;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage$2;->val$savedTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->savePage()V

    return-void
.end method
