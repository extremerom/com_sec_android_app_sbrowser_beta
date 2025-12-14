.class public Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation


# instance fields
.field private mCheckStates:[Z

.field private final mContext:Landroid/content/Context;

.field private mIsActionMode:Z

.field private mIsLongPressDragging:Z

.field private mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapterListener;

.field private mSearchQuery:Ljava/lang/String;

.field private mWebsiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;"
        }
    .end annotation
.end field

.field private mWebsiteListView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mIsLongPressDragging:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mIsActionMode:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mWebsiteList:Ljava/util/List;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->setHasStableIds(Z)V

    return-void
.end method

.method private setHighlightedText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x21

    const v5, 0x7f06021b

    if-nez v1, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_4

    invoke-static {v3, v2}, Lcom/sec/android/app/sbrowser/common/scs_search/SearchUtil;->getQueryForKorean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, v1

    if-ltz v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p3, p2, :cond_4

    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-direct {p2, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, p2, v1, p3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne p3, v3, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p3

    :goto_0
    add-int/2addr p3, p2

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p3

    goto :goto_0

    :goto_1
    if-ltz p2, :cond_4

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-direct {v1, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v1, p2, p3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setItemsBackground(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapterListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapterListener;->isSearchViewVisible()Z

    move-result p0

    xor-int/2addr p0, v1

    if-ne p3, p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->getRowView()Landroid/view/View;

    move-result-object p0

    const p3, 0x7f080081

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->getListDivider()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 p0, 0xf

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    goto :goto_2

    :cond_2
    const p0, 0x7f060bd0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->getListDivider()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 p0, 0xc

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->getListDivider()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 p0, 0x3

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->getListDivider()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p2, v2}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    :goto_2
    return-void
.end method

.method private sizeValueToString(J)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f141108

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f14110a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f14110b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f141109

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f14110c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sizeValueToString called with non-positive value: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WebsiteManagerAdapter"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "0 "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p0, p0, v1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    long-to-float p1, p1

    sget p2, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v0, 0xea60

    if-lt p2, v0, :cond_1

    const/high16 p2, 0x447a0000    # 1000.0f

    goto :goto_0

    :cond_1
    const/high16 p2, 0x44800000    # 1024.0f

    :goto_0
    const/4 v0, 0x4

    if-ge v1, v0, :cond_3

    cmpg-float v0, p1, p2

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    div-float/2addr p1, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    new-instance p2, Ljava/text/DecimalFormat;

    const-string v0, "#.##"

    invoke-direct {p2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ja"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ko"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v2, p1

    invoke-virtual {p2, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v2, p1

    invoke-virtual {p2, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapterListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapterListener;->isSearchViewVisible()Z

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mWebsiteList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    :goto_0
    return p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapterListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapterListener;->isSearchViewVisible()Z

    move-result p0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getListener()Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapterListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapterListener;

    return-object p0
.end method

.method public getTotalWebsiteItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mWebsiteList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getUsage(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mWebsiteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/website/Website;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/website/Website;->getTotalUsage()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->sizeValueToString(J)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWebsite(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mWebsiteList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/website/Website;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/Website;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWebsiteList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mWebsiteList:Ljava/util/List;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapterListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapterListener;->isSearchViewVisible()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_2

    iget-object p1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const p2, 0x7f0b0e53

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapterListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapterListener;->isInActionMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    check-cast p1, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->getRowView()Landroid/view/View;

    move-result-object v1

    sub-int v0, p2, v0

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mIsActionMode:Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mCheckStates:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {p1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->bindData(IZZ)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, p1, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->setItemsBackground(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mCheckStates:[Z

    aget-boolean p2, p2, v0

    invoke-virtual {p0, v1, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->setSelectedItemBackgroundHighlight(Landroid/view/View;Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/16 v1, 0x8

    if-eq p2, v1, :cond_4

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mIsLongPressDragging:Z

    if-eqz p2, :cond_5

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_5
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mSearchQuery:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mWebsiteList:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/settings/website/Website;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/website/Website;->getTitle()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->setHighlightedText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mWebsiteListView:Landroid/view/View;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mWebsiteListView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapterListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapterListener;->isSearchViewVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    const p2, 0x7f0e0922

    invoke-static {p1, p2, p1, v1}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b0e53

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletDevice(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f141104

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f141103

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    new-instance p2, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter$1;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;Landroid/view/View;)V

    return-object p2

    :cond_2
    const p2, 0x7f0e0923

    invoke-static {p1, p2, p1, v1}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;)V

    return-object p2
.end method

.method public setBottombarFocus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapterListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapterListener;->setBottombarFocus()V

    return-void
.end method

.method public setCheckStates([Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mCheckStates:[Z

    return-void
.end method

.method public setContentDescription(Landroid/view/View;ZI)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f140289

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f14028a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v0, ", "

    invoke-static {p2, v0}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->getWebsite(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f140b8f

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setIsActionMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mIsActionMode:Z

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapterListener;

    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 2

    const-string v0, "%"

    const-string v1, "\\%"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mSearchQuery:Ljava/lang/String;

    return-void
.end method

.method public setSelectedItemBackgroundHighlight(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const p0, 0x7f080237

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f080236

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setWebsiteList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->mWebsiteList:Ljava/util/List;

    return-void
.end method
