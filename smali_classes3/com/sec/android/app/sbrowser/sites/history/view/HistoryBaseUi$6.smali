.class Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Delegate;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addMoreData()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->p(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;->addMoreData()V

    return-void
.end method

.method public isInActionMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$1500(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Z

    move-result p0

    return p0
.end method

.method public isSitesSearchViewVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$6;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$1400(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSitesSearchViewVisible()Z

    move-result p0

    return p0
.end method
