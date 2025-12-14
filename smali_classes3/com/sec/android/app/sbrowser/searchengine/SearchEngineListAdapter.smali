.class public Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCount:I

.field private mCurrentSearchEngine:Ljava/lang/String;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mPreferenceSearchEngine:Ljava/lang/String;

.field private mSearchEngineListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;",
            ">;",
            "Landroid/view/LayoutInflater;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mSearchEngineListItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mCount:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mCurrentSearchEngine:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mPreferenceSearchEngine:Ljava/lang/String;

    return-void
.end method

.method private getDefaultFormattedSearchEngineText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f140de4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getStyledText(Ljava/lang/String;ZZ)Landroid/text/Spannable;
    .locals 5

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f060206

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f06098d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->getDefaultFormattedSearchEngineText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v0, 0x0

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, p3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    if-nez p2, :cond_2

    return-object v2

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070f55

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f06098c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v2, v0, v1, p0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance p0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {p0, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v2, p0, v1, p2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance p0, Landroid/text/style/StyleSpan;

    invoke-direct {p0, p3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v2, p0, v1, p1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v2
.end method

.method private setListItemContentDescription(Landroid/view/View;ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f14067d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f14067e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mCount:I

    return p0
.end method

.method public getItem(I)Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mSearchEngineListItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mSearchEngineListItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0e0814

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter$ViewHolder;

    invoke-direct {p3}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter$ViewHolder;-><init>()V

    const v0, 0x7f0b0a8b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p3, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter$ViewHolder;->mLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0a8a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0b0a8c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    const v0, 0x7f0b0475

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter$ViewHolder;->mCheck:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter$ViewHolder;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mSearchEngineListItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getLabel()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mSearchEngineListItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f080548

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f06098e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setTint(Landroid/graphics/drawable/Drawable;I)V

    iget-object v4, p3, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    iget-object v3, p3, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mSearchEngineListItems:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mSearchEngineListItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getTitle()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mPreferenceSearchEngine:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mCurrentSearchEngine:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iget-object v4, p3, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter$ViewHolder;->mLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v4, p1, v0}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->setListItemContentDescription(Landroid/view/View;ZLjava/lang/String;)V

    iget-object v0, p3, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v3, p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->getStyledText(Ljava/lang/String;ZZ)Landroid/text/Spannable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p3, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter$ViewHolder;->mCheck:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateFavicon(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;)V
    .locals 4

    const-string v0, "SearchEngineListAdapter"

    const-string v1, "updateFavicon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mSearchEngineListItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mSearchEngineListItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getFaviconUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getFaviconUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineListAdapter;->mSearchEngineListItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;->setFavicon(Landroid/graphics/Bitmap;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
