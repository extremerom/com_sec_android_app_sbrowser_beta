.class Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$2;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->createAdapter()Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$2;->this$0:Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0b0b2e

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/SeslCheckedTextView;

    if-nez p3, :cond_0

    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$2;->this$0:Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v0, "sec"

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz p1, :cond_2

    const v0, 0x7f060206

    goto :goto_1

    :cond_2
    const v0, 0x7f060106

    :goto_1
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$2$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$2$1;-><init>(Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$2;ZLandroidx/appcompat/widget/SeslCheckedTextView;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-object p2
.end method
