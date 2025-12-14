.class Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi$1;
.super LY2/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->showDeleteTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(LY2/f0;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->hideActionModeIfNeeded()V

    return-void
.end method

.method public onTransitionEnd(LY2/f0;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->hideActionModeIfNeeded()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->isSearchViewShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->m(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;)Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/IDHSearchView;->showKeyboard()V

    :cond_0
    return-void
.end method
