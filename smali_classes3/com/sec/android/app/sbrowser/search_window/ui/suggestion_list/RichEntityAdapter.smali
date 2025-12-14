.class Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/RichEntityAdapter;
.super Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;
.source "SourceFile"


# instance fields
.field private final mAnswerItemHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListDelegate;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListDelegate;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0713fd

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/RichEntityAdapter;->mAnswerItemHeight:I

    return-void
.end method

.method private updateIconView(Landroid/widget/ImageView;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0713fe

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getGroup()Ljava/lang/String;
    .locals 0

    const-string p0, "rich_entity"

    return-object p0
.end method

.method public getResourceIdByItemType(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)I
    .locals 0
    .param p1    # Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public getView(ILandroid/view/View;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->getItem(I)Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    move-result-object v0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->getView(ILandroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b0c03

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/RichEntityAdapter;->mAnswerItemHeight:I

    invoke-virtual {p2, v1}, Landroid/view/View;->setMinimumHeight(I)V

    const v1, 0x7f0b05fe

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0b03eb

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b0d66

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    if-eqz v5, :cond_0

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {v0}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/RichEntityAdapter;->updateIconView(Landroid/widget/ImageView;)V

    invoke-static {p1}, Lcom/bumptech/glide/b;->e(Landroid/view/View;)Lcom/bumptech/glide/l;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/l;->c(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->z(Landroid/widget/ImageView;)V

    :goto_1
    const-string v0, ", "

    invoke-static {v4, v0}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f1400c3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p1
.end method
