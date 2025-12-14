.class public Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter;
.super Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;
.source "SourceFile"


# instance fields
.field private final mItemHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListDelegate;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListDelegate;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07140b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter;->mItemHeight:I

    return-void
.end method

.method private getDominantChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ""

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private showFavicon(Landroid/view/View;)V
    .locals 1

    const p0, 0x7f0b05fe

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const p0, 0x7f0b05f3

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateDominantIcon(Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v0, 0x7f080384

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f060bcd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter;->getDominantChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateIcon(Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter;->updateDominantIcon(Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    :try_start_0
    new-instance p4, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter$1;

    invoke-direct {p4, p0, p3, p2, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-static {p1}, Lcom/bumptech/glide/b;->e(Landroid/view/View;)Lcom/bumptech/glide/l;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/l;->a()Lcom/bumptech/glide/j;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/bumptech/glide/j;->D(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p0

    sget-object p1, Ll4/f;->a:LR5/n;

    const/4 p2, 0x0

    invoke-virtual {p0, p4, p2, p0, p1}, Lcom/bumptech/glide/j;->A(Li4/d;Lh4/f;Lh4/a;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "updateIcon: IllegalArgumentException"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DataLakeSuggestionAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
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

    const-string p0, "data_lake_suggestion"

    return-object p0
.end method

.method public getIconView(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter;->showFavicon(Landroid/view/View;)V

    const p0, 0x7f0b04fd

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

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

    const p0, 0x7f080384

    return p0
.end method

.method public getView(ILandroid/view/View;)Landroid/view/View;
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->getView(ILandroid/view/View;)Landroid/view/View;

    move-result-object p2

    iget v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter;->mItemHeight:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter;->getItem(I)Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    move-result-object p1

    const v0, 0x7f0b0d66

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b03eb

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b04fd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0b041a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v4, v5

    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/TextHighlightUtil;->setHighlightedText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/TextHighlightUtil;->setHighlightedText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p2

    move-object v4, v5

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter;->updateIcon(Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0b0c03

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->mContext:Landroid/content/Context;

    const p1, 0x7f1410a2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p2
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
