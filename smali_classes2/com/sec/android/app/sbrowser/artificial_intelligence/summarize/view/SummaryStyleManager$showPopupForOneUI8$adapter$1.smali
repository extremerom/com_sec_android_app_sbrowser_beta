.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager$showPopupForOneUI8$adapter$1;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->showPopupForOneUI8()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J$\u0010\t\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0017\u00a8\u0006\u000e"
    }
    d2 = {
        "com/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager$showPopupForOneUI8$adapter$1",
        "Landroid/widget/BaseAdapter;",
        "getCount",
        "",
        "getItem",
        "",
        "position",
        "getItemId",
        "",
        "getView",
        "Landroid/view/View;",
        "convertView",
        "parent",
        "Landroid/view/ViewGroup;",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $selectedIndex:Ltb/u;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;Ltb/u;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager$showPopupForOneUI8$adapter$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager$showPopupForOneUI8$adapter$1;->$selectedIndex:Ltb/u;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager$showPopupForOneUI8$adapter$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->access$getStyleOptions$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager$showPopupForOneUI8$adapter$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->access$getStyleOptions$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ViewHolder"
        }
    .end annotation

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager$showPopupForOneUI8$adapter$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e001e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0b086c

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f0b023a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager$showPopupForOneUI8$adapter$1;->$selectedIndex:Ltb/u;

    iget v2, v2, Ltb/u;->a:I

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager$showPopupForOneUI8$adapter$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager$showPopupForOneUI8$adapter$1;->$selectedIndex:Ltb/u;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->access$getStyleOptions$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, v1, Ltb/u;->a:I

    if-ne p1, v3, :cond_1

    const v3, 0x7f06005f

    goto :goto_1

    :cond_1
    const v3, 0x7f060102

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget v2, v1, Ltb/u;->a:I

    if-ne p1, v2, :cond_2

    const v2, 0x7f1502eb

    goto :goto_2

    :cond_2
    const v2, 0x7f1502ec

    :goto_2
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget v1, v1, Ltb/u;->a:I

    if-ne p1, v1, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140e6f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f14081f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->access$getStyleOptions$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s, %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager$showPopupForOneUI8$adapter$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;

    const p3, 0x7f0700b9

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p2, p1, p0, p3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p2, p1, p3, v0, p0}, Landroid/view/View;->setPadding(IIII)V

    :goto_4
    return-object p2
.end method
