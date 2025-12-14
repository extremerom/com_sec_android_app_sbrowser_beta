.class public Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDividerPosition:I

.field private mHistoryPosition:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNavigationHistory:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;Landroid/view/LayoutInflater;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->mHistoryPosition:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->mDividerPosition:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->mNavigationHistory:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->updateHistoryPosition()V

    return-void
.end method

.method private getItemIndex(I)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->mHistoryPosition:I

    if-nez p0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    return p1
.end method

.method private inflate(Landroid/view/View;)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p1, 0x7f0e0458

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;-><init>()V

    const v0, 0x7f0b04fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;->mFavicon:Landroid/widget/ImageView;

    const v0, 0x7f0b041b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;->mDominantText:Landroid/widget/TextView;

    const v0, 0x7f0b0d66

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0b064b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method private setDominantText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    const-string v1, ""

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTextStyle(Landroid/widget/TextView;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method

.method private setTextStyle(Landroid/widget/TextView;II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->setTextStyle(Landroid/widget/TextView;I)V

    return-void
.end method

.method private updateHistoryPosition()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isBasicLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->mHistoryPosition:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->mDividerPosition:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->mNavigationHistory:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;->getEntryCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->mHistoryPosition:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->mDividerPosition:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->mNavigationHistory:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;->getEntryCount()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->mHistoryPosition:I

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->mNavigationHistory:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->getItemIndex(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;->getEntryAtIndex(I)Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemType(I)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->mHistoryPosition:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->getItemType(I)I

    move-result p0

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->inflate(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->mDividerPosition:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    iget-object v0, p3, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p3, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->mHistoryPosition:I

    const v3, 0x7f060474

    const v4, 0x7f1502ec

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1405ce

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p3, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;->mDominantText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p3, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;->mFavicon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p3, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;->mFavicon:Landroid/widget/ImageView;

    const v1, 0x7f080235

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;

    if-nez p1, :cond_2

    return-object p2

    :cond_2
    invoke-virtual {p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const v4, 0x7f1502eb

    const v3, 0x7f060470

    :cond_3
    invoke-virtual {p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlUrlWithEnabled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f14089e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p3, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;->mFavicon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p3, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;->mDominantText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p3, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;->mDominantText:Landroid/widget/TextView;

    const-string v1, "P"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140b92

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p3, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;->mFavicon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p3, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;->mDominantText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p3, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;->mDominantText:Landroid/widget/TextView;

    const-string v1, "Q"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p3, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;->mFavicon:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p3, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;->mFavicon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p3, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;->mDominantText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v2, v5}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->setDominantText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher;

    move-result-object v1

    iget-object v2, p3, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;->mDominantText:Landroid/widget/TextView;

    iget-object v5, p3, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;->mFavicon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, v5, p1}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationIconFetcher;->loadIcon(Landroid/widget/TextView;Landroid/widget/ImageView;Ljava/lang/String;)V

    move-object p1, v0

    :goto_2
    iget-object v0, p3, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p3, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, p1, v3, v4}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->setTextStyle(Landroid/widget/TextView;II)V

    return-object p2
.end method

.method public getViewForMeasure(ILandroid/view/View;)Landroid/view/View;
    .locals 4

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->inflate(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;

    iget v1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->mHistoryPosition:I

    const v2, 0x7f1502ec

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1405ce

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;

    if-nez p1, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;->getIndex()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    const v2, 0x7f1502eb

    :cond_2
    invoke-virtual {p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;->getTitle()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;->getUrl()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->setTextStyle(Landroid/widget/TextView;I)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationListAdapter;->updateHistoryPosition()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
