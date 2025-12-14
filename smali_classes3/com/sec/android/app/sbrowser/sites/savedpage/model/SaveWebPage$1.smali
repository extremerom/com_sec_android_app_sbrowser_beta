.class Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/Terrace$BitmapRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->savePage(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

.field final synthetic val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage$1;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage$1;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage$1;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->a(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    const-string v0, "SaveWebPage"

    if-eqz p1, :cond_0

    const-string v1, "savePage - got article bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage$1;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->a(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage$1;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageModel;->setArticleImage(Landroid/graphics/Bitmap;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    const-string p1, "savePage - article bitmap is null hence using content bitmap"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage$1;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage$1;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->b(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :goto_0
    return-void
.end method
