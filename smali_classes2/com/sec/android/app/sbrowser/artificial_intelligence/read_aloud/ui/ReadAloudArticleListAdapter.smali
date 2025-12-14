.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$Delegate;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation


# instance fields
.field private mArticleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$Delegate;

.field private mTheme:I

.field private mVisibleIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$Delegate;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$Delegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->mArticleList:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->mVisibleIndex:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$Delegate;

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->mTheme:I

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;Ljava/util/List;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->lambda$onBindViewHolder$0(Ljava/util/List;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;Landroid/view/View;)V

    return-void
.end method

.method private getDisabledIndexIconTextColor()I
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->mTheme:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const p0, 0x7f0608d8

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    const p0, 0x7f0608d7

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    const p0, 0x7f0608d9

    goto :goto_0

    :cond_2
    const p0, 0x7f0608d6

    :goto_0
    return p0
.end method

.method private getDisabledTitleTextColor()I
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->mTheme:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const p0, 0x7f0608e1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    const p0, 0x7f0608e0

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    const p0, 0x7f0608e2

    goto :goto_0

    :cond_2
    const p0, 0x7f0608df

    :goto_0
    return p0
.end method

.method private getIndexIconTextColor()I
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->mTheme:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const p0, 0x7f0608d8

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    const p0, 0x7f0608d7

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    const p0, 0x7f0608d9

    goto :goto_0

    :cond_2
    const p0, 0x7f0608d6

    :goto_0
    return p0
.end method

.method private getIndexIconTextColor(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f0608dd

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->getDisabledIndexIconTextColor()I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->getIndexIconTextColor()I

    move-result p1

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method private getItemBackground()I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->mTheme:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const p0, 0x7f080508

    goto :goto_0

    :cond_0
    const p0, 0x7f080509

    :goto_0
    return p0
.end method

.method private getTextColor(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f0608dd

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->getDisabledTitleTextColor()I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->getTitleTextColor()I

    move-result p1

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method private getTitleTextColor()I
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->mTheme:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const p0, 0x7f0608dc

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    const p0, 0x7f0608db

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    const p0, 0x7f0608de

    goto :goto_0

    :cond_2
    const p0, 0x7f0608da

    :goto_0
    return p0
.end method

.method private getTranslatedTitle(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$Delegate;->isTranslationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$Delegate;->getTargetLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;->getTranslatedTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getVisibleItemList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->mArticleList:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private synthetic lambda$onBindViewHolder$0(Ljava/util/List;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;Landroid/view/View;)V
    .locals 0

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$Delegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$Delegate;->onItemClick(I)V

    return-void
.end method


# virtual methods
.method public getArticleList()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->mArticleList:Ljava/util/List;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->getVisibleItemList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 9
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    check-cast p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->getVisibleItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;

    iget v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->mVisibleIndex:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p2, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;->isSummaryEnabled()Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->getItemBackground()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v7

    add-int/2addr p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-direct {p0, v2, v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->getIndexIconTextColor(ZZ)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    const/16 v4, 0x8

    if-eqz v2, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;->c(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v2, v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->getTextColor(ZZ)I

    move-result p2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;->c(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;->d(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->getTranslatedTitle(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;->d(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;->d(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    if-eqz v2, :cond_3

    const v2, 0x7f1502eb

    goto :goto_3

    :cond_3
    const v2, 0x7f1502ec

    :goto_3
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->mContext:Landroid/content/Context;

    const-string p2, "layout_inflater"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    const p2, 0x7f0e060b

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setArticleIndex(I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->mVisibleIndex:I

    return-void
.end method

.method public setArticleList(Ljava/util/List;I)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->mArticleList:Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->mVisibleIndex:I

    return-void
.end method

.method public updateTheme(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleListAdapter;->mTheme:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method
