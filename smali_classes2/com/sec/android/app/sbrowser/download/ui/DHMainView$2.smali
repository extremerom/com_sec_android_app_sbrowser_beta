.class Lcom/sec/android/app/sbrowser/download/ui/DHMainView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/ui/DHMainView;

.field final synthetic val$filetypeString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/DHMainView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHMainView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$2;->val$filetypeString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHMainView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getScreenID()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->CATEGORIES_SPINNER_SALOGGING:[Ljava/lang/String;

    aget-object p2, p2, p3

    const-string p4, "8822"

    invoke-static {p1, p4, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHMainView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p1, p3}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->onFilterChanged(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHMainView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->e(Lcom/sec/android/app/sbrowser/download/ui/DHMainView;)Landroid/widget/Spinner;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHMainView;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->f(Lcom/sec/android/app/sbrowser/download/ui/DHMainView;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$2;->val$filetypeString:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
