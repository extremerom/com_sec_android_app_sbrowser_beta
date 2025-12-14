.class Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "8776"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->m(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->g(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->isVoiceSearchAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->i(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->i(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->i(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)Landroid/widget/ImageButton;

    move-result-object v0

    const v2, 0x7f0b02ac

    invoke-virtual {v0, v2}, Landroid/view/View;->setNextFocusDownId(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->i(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setNextFocusForwardId(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->k(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)Landroid/widget/EditText;

    move-result-object v0

    const v2, 0x7f0b09d2

    invoke-virtual {v0, v2}, Landroid/view/View;->setNextFocusForwardId(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->h(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->l(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->g(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->i(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->h(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->k(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x7f0b0b67

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusForwardId(I)V

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->f(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->setSearchQuery(Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
