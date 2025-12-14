.class Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8;->onClickDeleteAllSearchKeyword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8$1;->this$1:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    const-string p1, "SitesSearchBaseUi"

    const-string v0, "doInBackground start"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8$1;->this$1:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->C(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8$1;->this$1:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->access$1700(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->deleteAllSearchKeywordList(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8$1;->this$1:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->x(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8$1;->this$1:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8;->this$0:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->G(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method
