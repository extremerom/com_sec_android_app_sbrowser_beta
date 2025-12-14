.class Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/X0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->setSeslLongPressMultiSelectionListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->W(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Z

    move-result p1

    const/4 p4, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->u(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->getItemViewType(I)I

    move-result p1

    if-ne p1, p4, :cond_0

    return-void

    :cond_0
    add-int/lit8 p3, p3, -0x1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->E(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->x(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)[Z

    move-result-object p1

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->x(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)[Z

    move-result-object p5

    aget-boolean p5, p5, p3

    xor-int/2addr p5, p4

    aput-boolean p5, p1, p3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->K(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->K(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->z(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)I

    move-result p5

    sub-int/2addr p5, p4

    invoke-static {p1, p5}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->O(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->K(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->z(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)I

    move-result p5

    add-int/2addr p5, p4

    invoke-static {p1, p5}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->O(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;I)V

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    const p1, 0x7f0b0e4f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->K(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p4

    invoke-virtual {p1, p4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->u(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

    move-result-object p4

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->x(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)[Z

    move-result-object p5

    aget-boolean p5, p5, p3

    invoke-virtual {p4, p2, p5}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->setSelectedItemBackgroundHighlight(Landroid/view/View;Z)V

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->u(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

    move-result-object p4

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p5

    invoke-virtual {p4, p2, p5, p3}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->setContentDescription(Landroid/view/View;ZI)V

    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->b0(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)V

    :cond_5
    return-void
.end method

.method public onLongPressMultiSelectionEnded(II)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->J(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Landroid/widget/CheckBox;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->R(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;Z)V

    return-void
.end method

.method public onLongPressMultiSelectionStarted(II)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->J(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Landroid/widget/CheckBox;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->R(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;Z)V

    return-void
.end method
