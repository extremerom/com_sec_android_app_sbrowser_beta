.class Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->updateActionbarLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->g(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getScreenID()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->h(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string v2, "8773"

    invoke-static {p1, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->g(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->h(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->executeSelectAll(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->i(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->j(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
