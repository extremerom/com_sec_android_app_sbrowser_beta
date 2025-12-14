.class Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/X0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->setSeslLongPressMultiSelectionListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$2;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$2;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->C(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$2;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->s(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getItemViewType(I)I

    move-result p1

    const/4 p4, 0x1

    if-ne p1, p4, :cond_3

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$2;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->w(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)[Z

    move-result-object p1

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$2;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->w(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)[Z

    move-result-object p5

    aget-boolean p5, p5, p3

    xor-int/2addr p5, p4

    aput-boolean p5, p1, p3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$2;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->H(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$2;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->H(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$2;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->y(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)I

    move-result p5

    sub-int/2addr p5, p4

    invoke-static {p1, p5}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->L(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$2;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->H(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$2;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->y(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)I

    move-result p5

    add-int/2addr p5, p4

    invoke-static {p1, p5}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->L(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const p1, 0x7f0b0d2a

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$2;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->H(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$2;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->Y(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)V

    :cond_3
    return-void
.end method

.method public onLongPressMultiSelectionEnded(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$2;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->O(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;Z)V

    return-void
.end method

.method public onLongPressMultiSelectionStarted(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$2;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->O(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;Z)V

    return-void
.end method
