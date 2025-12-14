.class Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$2;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$2;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$2;->lambda$onClick$0(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$0(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$2;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->A(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$2;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->E(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$2;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->v(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$2;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->r(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$2;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->t(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Landroid/app/KeyguardManager;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$2;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->t(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Landroid/app/KeyguardManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$2;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->p(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/password/KeyguardAdapterPasswordEditor;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$2;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/settings/password/KeyguardAdapterPasswordEditor;-><init>(Landroid/app/Activity;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/password/c;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/password/c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/password/KeyguardAdapterPasswordEditor;->show(Lcom/sec/android/app/sbrowser/auth/AuthCallback;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$2;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->E(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$2;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->F(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$2;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->v(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    move-result-object v0

    const v1, 0x7f1401b9

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$2;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->C(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$2;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->v(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$2;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->v(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$2;->this$0:Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;->v(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;)Lcom/sec/android/app/sbrowser/settings/autofill/AutofillEditText;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setSelection(I)V

    :goto_0
    return-void
.end method
