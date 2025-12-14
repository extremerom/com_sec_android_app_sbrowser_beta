.class Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$3;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$3;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->l(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment$3;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->l(Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
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
