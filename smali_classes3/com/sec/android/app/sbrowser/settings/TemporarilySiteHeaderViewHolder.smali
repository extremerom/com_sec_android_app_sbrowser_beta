.class public Lcom/sec/android/app/sbrowser/settings/TemporarilySiteHeaderViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

.field public mRowView:Landroid/view/View;

.field public mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteHeaderViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteHeaderViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteHeaderViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p2, 0x7f0b0d66

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteHeaderViewHolder;->mTitle:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public bindHeaderViewHolder(Landroid/util/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteHeaderViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setItemBackground(IZ)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$Temporarilyallowtype;
        .end annotation
    .end param

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteHeaderViewHolder;->mRowView:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteHeaderViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x106000d

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
