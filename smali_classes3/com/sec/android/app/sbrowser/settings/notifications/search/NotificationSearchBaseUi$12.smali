.class Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$12;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$12;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->setKeyBoardInputModeToAdjustResize(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$12;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->q(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$12;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->M(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$12;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->showSearchKeywordListView()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$12;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->p(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    move-result-object p1

    const v0, 0x7f0b0b7d

    invoke-virtual {p1, v0}, Landroid/view/View;->setNextFocusForwardId(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$12;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->isVoiceSearchAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$12;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->w(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Landroid/widget/ImageButton;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$12;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->w(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$12;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->p(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    move-result-object p1

    const v0, 0x7f0b0b85

    invoke-virtual {p1, v0}, Landroid/view/View;->setNextFocusForwardId(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$12;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->p(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setNextFocusForwardId(I)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$12;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->r(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$12;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->setKeyBoardInputModeToAdjustResize(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$12;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->w(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$12;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->w(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$12;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->q(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$12;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->r(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$12;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->p(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    move-result-object v0

    const v1, 0x7f0b0b67

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusForwardId(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$12;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->A(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$12;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->B(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$12;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->M(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$12;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->A(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$12;->this$0:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->B(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x190

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
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
