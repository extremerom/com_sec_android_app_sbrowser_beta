.class Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->l(Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;)Lm/l;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->m(Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f14007a

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->m(Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;)Landroid/widget/EditText;

    move-result-object p1

    const-string p3, ""

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "5051"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
