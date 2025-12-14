.class Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$1;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

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
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$1;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->x(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$1;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->v(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/CustomTextInputLayout;->setErrorEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$1;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->x(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$1;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->v(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$1;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->w(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p4, v0}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->D(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;Z)V

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$1;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->u(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {p4, v0}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->B(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;Z)V

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$1;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    move p3, v1

    goto :goto_0

    :cond_1
    move p3, p2

    :goto_0
    invoke-static {p4, p3}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->z(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;Z)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$1;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->o(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$1;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->s(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$1;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->q(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    move v1, p2

    :cond_3
    :goto_1
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$1;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->y(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$1;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->y(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$1;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->y(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static {p4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_4

    goto :goto_2

    :cond_5
    move p2, v1

    :goto_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$1;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->access$000(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;Z)V

    return-void
.end method
