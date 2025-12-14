.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainViewAi:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

.field private final mOptionDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionDelegate;

.field private final mOptionListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionDelegate;",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->mItemList:Ljava/util/List;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->mMainViewAi:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->mOptionDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionDelegate;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->mOptionListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionListener;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->lambda$getView$0(ILandroid/view/View;)V

    return-void
.end method

.method private getAlpha(I)F
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->mOptionDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionDelegate;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionDelegate;->getFeatureByPosition(I)I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->mMainViewAi:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->shouldIncludeReadAloud()Z

    move-result p0

    if-eqz p0, :cond_4

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected value: "

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->mMainViewAi:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->shouldIncludeReadArticlesAloud()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->mMainViewAi:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->isSIXEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->mMainViewAi:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->shouldIncludeSummary()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return v2
.end method

.method private getButtonDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->mOptionDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionDelegate;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionDelegate;->getFeatureByPosition(I)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const p1, 0x7f080428

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected value: "

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const p1, 0x7f080429

    goto :goto_0

    :cond_2
    const p1, 0x7f08042b

    goto :goto_0

    :cond_3
    const p1, 0x7f08042a

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getItemLayout()I
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isAiOptionPopupOneUi7()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0e0014

    return p0

    :cond_0
    const p0, 0x7f0e0013

    return p0
.end method

.method private inflate(Landroid/view/View;)Landroid/view/View;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter$ViewHolder;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter$ViewHolder;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->getItemLayout()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0b00b2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b00b6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    const v0, 0x7f0b00b1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method private synthetic lambda$getView$0(ILandroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->mOptionListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionListener;->onOptionClick(I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-instance p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter$ViewHolder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->getItemLayout()I

    move-result v2

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v1, 0x7f0b00b2

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b00b6

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    const v1, 0x7f0b00b1

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0b00b0

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter$ViewHolder;->mBadge:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter$ViewHolder;

    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    :goto_0
    iget-object v1, p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->getAlpha(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->getButtonDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter$ViewHolder;->mBadge:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Laa/a;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3, p0}, Laa/a;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->getCount()I

    move-result v2

    if-ne v2, v3, :cond_1

    iget-object p0, p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    iget-object p0, p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1, v0, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->getCount()I

    move-result p0

    sub-int/2addr p0, v3

    if-ne p1, p0, :cond_3

    iget-object p0, p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v0, v0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_3
    :goto_1
    return-object p3
.end method

.method public getViewForMeasure(ILandroid/view/View;)Landroid/view/View;
    .locals 3

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->inflate(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter$ViewHolder;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->getButtonDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method

.method public updateItemViewAlpha(Ljava/lang/Integer;Landroid/view/View;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter$ViewHolder;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupListAdapter;->getAlpha(I)F

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
