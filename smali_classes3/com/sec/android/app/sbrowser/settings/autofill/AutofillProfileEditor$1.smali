.class Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;

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

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->p(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->mGUID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getProfile(Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->u(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->t(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;Z)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->u(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->t(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;Z)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->s(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;)Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->r(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;)Z

    move-result p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->q(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move p2, p4

    goto :goto_2

    :cond_2
    :goto_1
    move p2, p3

    :goto_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;

    if-eqz p2, :cond_3

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    move p3, p4

    :goto_3
    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditorBase;->setSaveButtonEnabled(Z)V

    :cond_4
    return-void
.end method
