.class Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->addBillingAddressSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$3;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne p3, p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$3;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p2

    const-class p3, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-class p2, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "sbrowser.settings.show_fragment"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "source"

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$3;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p2

    invoke-static {p2, p1, p3}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$3;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->o(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)I

    move-result p1

    if-eq p3, p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$3;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-static {p1, p3}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->y(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$3;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->H(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor$3;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;->G(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
