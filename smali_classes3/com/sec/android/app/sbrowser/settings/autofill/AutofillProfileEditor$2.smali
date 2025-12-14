.class Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor$2;
.super Lcom/sec/android/app/sbrowser/payments/standard/widget/ShapedArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->populateCountriesDropdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/sbrowser/payments/standard/widget/ShapedArrayAdapter<",
        "Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor$2;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/sbrowser/payments/standard/widget/ShapedArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0b0bc6

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f1502ec

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor$2;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;->o(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;)Landroid/widget/Spinner;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p0

    if-ne p1, p0, :cond_0

    const p0, 0x7f1502eb

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_0
    return-object p2
.end method
