.class public Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
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

.field private mNotificationResultList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

.field private mPattern:Ljava/util/regex/Pattern;

.field private mPreviousSearchedString:Ljava/lang/String;

.field private mSearchNotificationSize:I

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
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mIsAnimate:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mViewList:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mNotificationResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isKorea()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mIsKorean:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->setHasStableIds(Z)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mSearchNotificationSize:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;Landroid/view/View;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->setBackgroundForSelectedItems(Landroid/view/View;IIZ)V

    return-void
.end method

.method private getChangeBounds(Z)LY2/i;
    .locals 3

    new-instance p0, LY2/i;

    invoke-direct {p0}, LY2/i;-><init>()V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, LY2/f0;->setDuration(J)LY2/f0;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e2e147b    # 0.17f

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut90()Landroid/view/animation/Interpolator;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, LY2/f0;->setInterpolator(Landroid/animation/TimeInterpolator;)LY2/f0;

    return-object p0
.end method

.method private getViewByPosition(ILandroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;
    .locals 1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, p0, :cond_1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p0

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private setBackgroundForSelectedItems(Landroid/view/View;IIZ)V
    .locals 1

    const/4 v0, 0x1

    if-lt p3, v0, :cond_0

    sub-int/2addr p3, v0

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    if-eqz p4, :cond_1

    const p0, 0x7f080231

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mContext:Landroid/content/Context;

    const p2, 0x7f080230

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_4

    if-eqz p4, :cond_3

    const p0, 0x7f08022f

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mContext:Landroid/content/Context;

    const p2, 0x7f08022e

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    if-nez p2, :cond_6

    if-eqz p4, :cond_5

    const p0, 0x7f080233

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mContext:Landroid/content/Context;

    const p2, 0x7f080232

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_6
    if-eqz p4, :cond_7

    const p0, 0x7f080237

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mContext:Landroid/content/Context;

    const p2, 0x7f080236

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :goto_1
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

    const v5, 0x7f06021b

    if-nez v1, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    iget-boolean p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mIsKorean:Z

    if-eqz p3, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mPreviousSearchedString:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mPreviousSearchedString:Ljava/lang/String;

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

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mPattern:Ljava/util/regex/Pattern;

    :cond_1
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mPattern:Ljava/util/regex/Pattern;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mContext:Landroid/content/Context;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mContext:Landroid/content/Context;

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
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mContext:Landroid/content/Context;

    const p2, 0x7f080236

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mNotificationResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->getCount()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mNotificationResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mNotificationResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->getId()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    int-to-long p0, p1

    return-wide p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 8
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->getItemCount()I

    move-result v3

    if-ne v3, v0, :cond_0

    const/16 v3, 0xf

    invoke-virtual {p1, v3}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v0

    if-ne p2, v3, :cond_2

    const/16 v3, 0xc

    invoke-virtual {p1, v3}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v3, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mMainItemLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v5, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mDominantText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mNotificationResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationRoundCornersImageView;

    invoke-static {v7, v6, v4, v5}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemIcon;->setNotificationSearchResultIcon(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;Lcom/sec/android/app/sbrowser/settings/notifications/NotificationRoundCornersImageView;Landroid/widget/TextView;)V

    iget-object v4, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mMainItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mMainItemLayout:Landroid/widget/RelativeLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mNotificationResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mNotificationResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mSitesHeaderLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mMainItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mNotificationResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mIsShowingActionMode:Z

    if-eqz v6, :cond_3

    invoke-direct {p0, v3, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->setItemSelectedBackgroundHighlight(Landroid/view/View;Z)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v3, v2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->setItemSelectedBackgroundHighlight(Landroid/view/View;Z)V

    :goto_1
    iget-object v0, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v6, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter$1;

    invoke-direct {v6, p0, v3, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;Landroid/view/View;I)V

    invoke-virtual {v0, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->getSearchText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->getSearchText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v0, ""

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-direct {p0, v6, v4, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->setHighlightedTextSuggestion(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mUrlView:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->setHighlightedTextSuggestion(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v0, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mUrlView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mIsShowingActionMode:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mNotificationResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mViewList:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mIsAnimate:Z

    if-nez p0, :cond_7

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_8
    :goto_4
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

    const p2, 0x7f0e0532

    const/4 v0, 0x0

    invoke-static {p1, p2, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f060167

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;)V

    return-object p2
.end method

.method public setHasTransientState(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->setHasTransientState(Z)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mViewList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method

.method public setResultList(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mNotificationResultList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mSearchNotificationSize:I

    return-void
.end method

.method public showCheckBox(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mIsShowingActionMode:Z

    return-void
.end method

.method public startCheckBoxAnimation(Z)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const v1, 0x7f010037

    goto :goto_0

    :cond_0
    const v1, 0x7f010035

    :goto_0
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->getSearchListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/u0;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/u0;->getItemCount()I

    move-result v2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->getChangeBounds(Z)LY2/i;

    move-result-object v3

    invoke-static {v1, v3}, LY2/j0;->a(Landroid/view/ViewGroup;LY2/f0;)V

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_4

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->getViewByPosition(ILandroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    return-void

    :cond_1
    const v6, 0x7f0b0827

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    if-eqz v5, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v5, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
