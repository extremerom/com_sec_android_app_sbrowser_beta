.class Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/Z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->setSeslOnMultiSelectedListener()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiSelectStart(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->x(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;I)V

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->y(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->B(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mAutofillList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->y(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;I)V

    :cond_0
    return-void
.end method

.method public onMultiSelectStop(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->B(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    iget-object v0, p2, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mAutofillList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->x(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;I)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->t(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->s(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;)I

    move-result p1

    if-eq p1, p2, :cond_a

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->t(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;)I

    move-result p1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->y(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;I)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->t(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->s(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;)I

    move-result v0

    if-ne v0, p2, :cond_3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    iget-object v0, p2, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->x(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;I)V

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->s(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;)I

    move-result p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->t(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->s(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;)I

    move-result v1

    if-le v0, v1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->s(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;)I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->t(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;)I

    move-result p2

    :cond_4
    :goto_0
    if-gt p1, p2, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/u0;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->setAutofillSelectedItemCount()V

    :cond_7
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->isActionMode()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->C(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;)V

    goto :goto_3

    :cond_9
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->startActionMode()V

    :cond_a
    :goto_3
    return-void
.end method
