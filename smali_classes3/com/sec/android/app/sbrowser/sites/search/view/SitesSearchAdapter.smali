.class Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsAnimate:Z

.field private mIsKorean:Z

.field private mIsShowingActionMode:Z

.field private mPattern:Ljava/util/regex/Pattern;

.field private mPreviousSearchedString:Ljava/lang/String;

.field private mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

.field private mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

.field private mViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mIsAnimate:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mViewList:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isKorea()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mIsKorean:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->setHasStableIds(Z)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->setItemSelectedBackgroundHighlight(Landroid/view/View;Z)V

    return-void
.end method

.method private setHighlightedTextSuggestion(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x21

    const v5, 0x7f06022d

    if-nez v1, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    iget-boolean p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mIsKorean:Z

    if-eqz p3, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mPreviousSearchedString:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mPreviousSearchedString:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "(?i)"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, " "

    const-string v7, "\\E\\s?\\Q"

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mPattern:Ljava/util/regex/Pattern;

    :cond_1
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mPattern:Ljava/util/regex/Pattern;

    if-eqz p3, :cond_2

    invoke-virtual {p3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p3

    if-ltz p3, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-gt v1, p2, :cond_5

    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-direct {p2, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, p2, p3, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne p3, v3, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p3

    :goto_0
    add-int/2addr p3, p2

    goto :goto_1

    :cond_4
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p3

    goto :goto_0

    :goto_1
    if-ltz p2, :cond_5

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-direct {v1, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v1, p2, p3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setItemSelectedBackgroundHighlight(Landroid/view/View;Z)V
    .locals 0

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
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mContext:Landroid/content/Context;

    const p2, 0x7f080236

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setItemsEnabled(ZLcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;)V
    .locals 0

    iget-object p0, p2, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mMainItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p2, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mMainItemLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemAt(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mViewList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mViewList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->getCount()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getId()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getType()Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->SAVED_PAGE:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 11
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    if-ltz p2, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    if-nez v0, :cond_0

    const-string p0, "No Item present in position "

    const-string p1, "SitesSearchAdapter"

    invoke-static {p2, p0, p1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v7, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->getItemCount()I

    move-result v1

    if-ne v1, v8, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v8

    if-ne p2, v1, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;

    invoke-virtual {v1, v9}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    check-cast p1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;

    iget-object v10, p1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mMainItemLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mDomaintantText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getType()Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    move-result-object v1

    sget-object v4, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon;->setBookmarkSearchResultIcon(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getType()Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    move-result-object v1

    sget-object v4, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    if-ne v1, v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v1, v0

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon;->setHistorySearchResultIcon(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getType()Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    move-result-object v1

    sget-object v4, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->SAVED_PAGE:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    if-ne v1, v4, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/app/sbrowser/sites/history/view/RoundCornersImageView;

    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchItemIcon;->setSavedPageSearchResultIcon(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Lcom/sec/android/app/sbrowser/sites/history/view/RoundCornersImageView;Landroid/widget/TextView;)V

    :cond_6
    :goto_1
    iget-object v1, p1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mMainItemLayout:Landroid/widget/RelativeLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mIsShowingActionMode:Z

    if-eqz v4, :cond_7

    invoke-direct {p0, v10, v8}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->setItemSelectedBackgroundHighlight(Landroid/view/View;Z)V

    goto :goto_2

    :cond_7
    invoke-direct {p0, v10, v9}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->setItemSelectedBackgroundHighlight(Landroid/view/View;Z)V

    :goto_2
    iget-object v4, p1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v5, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$1;

    invoke-direct {v5, p0, v10}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;->updatHeader()V

    iget-object v4, p1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mSitesHeaderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mMainItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchText()Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    move-object v2, v3

    :goto_3
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-direct {p0, v4, v1, v3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->setHighlightedTextSuggestion(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mUrlView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->setHighlightedTextSuggestion(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    iget-object v3, p1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mUrlView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mIsShowingActionMode:Z

    if-eqz v1, :cond_b

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/sites/common/bookmark/BookmarkCommonQueryUtil;->isNonEditableBookmarkFolder(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, v9, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->setItemsEnabled(ZLcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_5

    :cond_a
    invoke-direct {p0, v8, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->setItemsEnabled(ZLcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isChecked()Z

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :goto_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mViewList:Ljava/util/List;

    invoke-interface {p0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sec/android/app/sbrowser/sites/common/bookmark/BookmarkCommonQueryUtil;->isNonEditableBookmarkFolder(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-direct {p0, v8, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->setItemsEnabled(ZLcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;)V

    :cond_c
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mIsAnimate:Z

    if-nez p0, :cond_d

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object p0, p1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_e
    :goto_6
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

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const p2, 0x7f0e0896

    goto :goto_0

    :cond_0
    const p2, 0x7f0e0899

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f060167

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p2, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter$SitesSearchItemViewHolder;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setResultList(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mSitesResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public showCheckBox(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->mIsShowingActionMode:Z

    return-void
.end method
