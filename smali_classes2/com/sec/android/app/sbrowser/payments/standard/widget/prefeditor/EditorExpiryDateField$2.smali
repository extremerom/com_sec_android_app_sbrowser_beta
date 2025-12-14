.class Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

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

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->a(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {v4, v0, v3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->p(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->m(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->j(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->i(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)I

    move-result v0

    const v4, 0x7f06022d

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->j(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)I

    move-result p1

    const/16 v0, 0x63

    if-gt p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->d(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->g(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->e(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->a(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->b(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->hide(Landroid/widget/TextView;)V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->j(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->i(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)I

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->c(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->c(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->h(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)I

    move-result v0

    add-int/2addr v0, v3

    if-ge p1, v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->a(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {v0, p1, v3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->p(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->d(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->d(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->e(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->a(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->b(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->hide(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->a(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {v0, p1, v3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->p(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->d(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
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
