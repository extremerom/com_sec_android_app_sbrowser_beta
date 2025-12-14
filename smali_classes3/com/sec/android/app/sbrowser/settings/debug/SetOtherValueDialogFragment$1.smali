.class Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

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

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;->i(Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;)Lm/l;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;->i(Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;)Lm/l;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;->i(Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;)Lm/l;

    move-result-object p0

    invoke-virtual {p0, p3}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method
