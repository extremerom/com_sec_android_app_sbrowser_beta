.class Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->registerFieldChangedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

.field final synthetic val$editTextMonth:Landroid/widget/EditText;

.field final synthetic val$editTextYear:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->val$editTextYear:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->val$editTextMonth:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[^0-9]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const v2, 0x7f140141

    const/4 v3, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-static {v4, v0, v3}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->E(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;Ljava/lang/String;Z)V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->B(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->x(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->w(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)I

    move-result v0

    const v4, 0x7f06022d

    if-le p1, v0, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->x(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)I

    move-result p1

    const/16 v0, 0x63

    if-gt p1, v0, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->val$editTextYear:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->u(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->val$editTextMonth:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->F(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;Landroid/widget/EditText;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->p(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)Lcom/sec/android/app/sbrowser/settings/autofill/AutofillLabelText;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->q(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)Lcom/sec/android/app/sbrowser/settings/autofill/AutofillErrorLabelUi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillErrorLabelUi;->hide()V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->n(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->x(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->w(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)I

    move-result v0

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->val$editTextMonth:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->val$editTextMonth:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->v(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)I

    move-result v0

    add-int/2addr v0, v3

    if-ge p1, v0, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-static {v0, p1, v3}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->E(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->val$editTextYear:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->val$editTextYear:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->p(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)Lcom/sec/android/app/sbrowser/settings/autofill/AutofillLabelText;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->q(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)Lcom/sec/android/app/sbrowser/settings/autofill/AutofillErrorLabelUi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillErrorLabelUi;->hide()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->n(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-static {v0, p1, v3}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->E(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->val$editTextYear:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$8;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->H(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)V

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
