.class Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->setHistoryData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$5;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$5;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$1100(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$5;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->onFinishDeleteMode()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$5;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$1200(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$5;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$1300(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->hidePreviouslyShowingDialog()V

    :cond_1
    return-void
.end method
