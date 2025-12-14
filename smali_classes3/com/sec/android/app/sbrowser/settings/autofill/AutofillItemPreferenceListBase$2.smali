.class Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/X0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->setSeslLongPressMultiSelectionListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$2;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$2;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/u0;->getItemViewType(I)I

    move-result p1

    const/4 p4, 0x2

    if-eq p1, p4, :cond_3

    const/4 p4, 0x3

    if-ne p1, p4, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$2;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->isShowingActionMode()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$2;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$2;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$2;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$2;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->setAutofillSelectedItemCount()V

    if-eqz p2, :cond_3

    const p1, 0x7f0b012a

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$2;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    iget-object p4, p4, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p4, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$2;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->setContentDescription(Landroid/view/View;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onLongPressMultiSelectionEnded(II)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$2;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->A(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$2;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->E(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$2;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mIsLongPressDragging:Z

    return-void
.end method

.method public onLongPressMultiSelectionStarted(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$2;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mIsLongPressDragging:Z

    return-void
.end method
