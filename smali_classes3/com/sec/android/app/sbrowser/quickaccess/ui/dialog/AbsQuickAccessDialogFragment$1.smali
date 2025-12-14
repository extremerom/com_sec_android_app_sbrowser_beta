.class Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->getEmojiExcludeFilter()Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    :goto_0
    if-ge p2, p3, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    invoke-static {p4}, Ljava/lang/Character;->getType(C)I

    move-result p4

    const/16 p5, 0x13

    if-eq p4, p5, :cond_1

    const/16 p5, 0x1c

    if-ne p4, p5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f140646

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->getEditTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->l(Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;Z)V

    const-string p0, ""

    return-object p0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->i(Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->l(Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;Z)V

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
