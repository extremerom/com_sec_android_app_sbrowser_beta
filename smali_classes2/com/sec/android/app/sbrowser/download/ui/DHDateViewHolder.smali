.class Lcom/sec/android/app/sbrowser/download/ui/DHDateViewHolder;
.super Lcom/sec/android/app/sbrowser/download/ui/DHItems;
.source "SourceFile"


# instance fields
.field private mDateViewTextView:Landroid/widget/TextView;

.field private mRowView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDateViewHolder;->mRowView:Landroid/view/View;

    const p2, 0x7f0b03d0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDateViewHolder;->mDateViewTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public bindDownloadItemView(Landroid/util/Pair;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/util/Date;",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
            ">;ZZ)V"
        }
    .end annotation

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p3, v0, v2

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p3, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDateViewHolder;->mDateViewTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object p3

    const v2, 0x7f14047b

    invoke-virtual {p3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDateViewHolder;->mRowView:Landroid/view/View;

    const p2, 0x3e99999a    # 0.3f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDateViewHolder;->mRowView:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDateViewHolder;->mDateViewTextView:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDateViewHolder;->mDateViewTextView:Landroid/widget/TextView;

    const-string v0, ", "

    invoke-static {p3, p2, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->u(Landroid/widget/TextView;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f140465

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDateViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDateViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDateViewHolder;->mDateViewTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    const-wide v2, 0x7ffffffffad9a3feL

    cmp-long p2, p2, v2

    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDateViewHolder;->mDateViewTextView:Landroid/widget/TextView;

    const p2, 0x7f14052e

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDateViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDateViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDateViewHolder;->mDateViewTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDateViewHolder;->mDateViewTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const p1, 0x18016

    invoke-static {p3, v2, v3, p1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDateViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDateViewHolder;->mDateViewTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getAdapter()Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getContext()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->isDarkModeEnabled(Landroid/app/Activity;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDateViewHolder;->mDateViewTextView:Landroid/widget/TextView;

    const p2, 0x7f06013a

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-void
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUrlView()Landroid/widget/TextView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setItemBackground(IZ)V
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDateViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getAdapter()Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getContext()Landroid/app/Activity;

    move-result-object p0

    const p2, 0x7f060296

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
