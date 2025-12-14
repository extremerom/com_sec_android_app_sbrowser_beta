.class public Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BrowsingDataListAdapter;
.super Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;
.source "SourceFile"


# instance fields
.field private final mItemHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListDelegate;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListDelegate;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07140b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BrowsingDataListAdapter;->mItemHeight:I

    return-void
.end method

.method private isHeaderPosition(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BrowsingDataListAdapter;->isReverseLayout()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BrowsingDataListAdapter;->getItemCount()I

    move-result p0

    sub-int/2addr p0, v2

    if-ne p1, p0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method


# virtual methods
.method public bridge synthetic getCount()I
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->getCount()I

    move-result p0

    return p0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 0

    const-string p0, "browsing_data"

    return-object p0
.end method

.method public bridge synthetic getItem(I)Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->getItem(I)Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getItemCount()I
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->getItemCount()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getItemId(I)J
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->getItemId(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public bridge synthetic getQuery()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->getQuery()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResourceIdByItemType(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)I
    .locals 0
    .param p1    # Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BrowsingDataListAdapter$1;->$SwitchMap$com$sec$terrace$browser$omnibox$TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType:[I

    invoke-virtual {p1}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getType()Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    const p0, 0x7f080193

    goto :goto_0

    :cond_0
    const p0, 0x7f080191

    goto :goto_0

    :cond_1
    const p0, 0x7f080192

    :goto_0
    return p0
.end method

.method public getView(ILandroid/view/View;)Landroid/view/View;
    .locals 8

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->getView(ILandroid/view/View;)Landroid/view/View;

    move-result-object p2

    iget v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BrowsingDataListAdapter;->mItemHeight:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BrowsingDataListAdapter;->getItem(I)Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    move-result-object v0

    const v1, 0x7f0b0d66

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b03eb

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b0c06

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getType()Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    move-result-object v5

    sget-object v6, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->URL_WHAT_YOU_TYPED:Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    if-ne v5, v6, :cond_0

    sget-object v5, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getUnicodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getUnicodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BrowsingDataListAdapter;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f06027e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-static {v1, v4, v5, v6}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/TextHighlightUtil;->setHighlightedText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BrowsingDataListAdapter;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/TextHighlightUtil;->setHighlightedText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f14027f

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f140563

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BrowsingDataListAdapter;->isHeaderPosition(I)Z

    move-result p1

    const-string v5, ", "

    if-eqz p1, :cond_2

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f14058d

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const p1, 0x7f0b0c03

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->getTheme()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->getTheme()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->getTheme()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    :cond_3
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->getIconView(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f060c0a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_4
    return-object p2
.end method

.method public bridge synthetic isReverseLayout()Z
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->isReverseLayout()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter$ViewHolder;I)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setData(Ljava/util/List;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->setData(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic setTheme(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->setTheme(I)V

    return-void
.end method
