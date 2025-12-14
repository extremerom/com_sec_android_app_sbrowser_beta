.class public Lorg/chromium/components/autofill/AutofillDropdownAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lorg/chromium/ui/DropdownItem;",
        ">;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAreAllItemsEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private final mMaxFontScale:F

.field private final mSeparators:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lorg/chromium/ui/DropdownItem;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget v0, Lorg/chromium/components/autofill/R$layout;->autofill_dropdown_item:I

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mMaxFontScale:F

    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    iput-object p3, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mSeparators:Ljava/util/Set;

    invoke-direct {p0}, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->checkAreAllItemsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mAreAllItemsEnabled:Z

    return-void
.end method

.method private checkAreAllItemsEnabled()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/ui/DropdownItem;

    invoke-static {v2}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/ui/DropdownItem;

    invoke-interface {v2}, Lorg/chromium/ui/DropdownItem;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lorg/chromium/ui/DropdownItem;->isGroupHeader()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private getSizeAndMarginParamsForIconView(Landroid/widget/ImageView;Lorg/chromium/ui/DropdownItem;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->getSizeParamsForIconView(Landroid/widget/ImageView;Lorg/chromium/ui/DropdownItem;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-interface {p2}, Lorg/chromium/ui/DropdownItem;->getIconMarginResId()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    return-object p1
.end method

.method private getSizeParamsForIconView(Landroid/widget/ImageView;Lorg/chromium/ui/DropdownItem;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-interface {p2}, Lorg/chromium/ui/DropdownItem;->getIconSizeResId()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, -0x2

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    return-object p1
.end method

.method private populateIconView(Landroid/widget/ImageView;Lorg/chromium/ui/DropdownItem;)Landroid/widget/ImageView;
    .locals 0

    invoke-interface {p2}, Lorg/chromium/ui/DropdownItem;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p2}, Lorg/chromium/ui/DropdownItem;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p1
.end method

.method private populateLabelView(Landroid/view/View;ILjava/lang/CharSequence;Z)Landroid/widget/TextView;
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setEnabled(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mAreAllItemsEnabled:Z

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    iget-object p3, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->fontScale:F

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lorg/chromium/components/autofill/R$layout;->autofill_dropdown_item:I

    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lorg/chromium/ui/DropdownDividerDrawable;

    invoke-direct {v1, v0}, Lorg/chromium/ui/DropdownDividerDrawable;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/ui/DropdownItem;

    iget-object v2, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/chromium/components/autofill/R$dimen;->autofill_dropdown_item_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Lorg/chromium/ui/DropdownDividerDrawable;

    const/4 v4, 0x0

    if-nez p1, :cond_1

    invoke-virtual {v3, v4}, Lorg/chromium/ui/DropdownDividerDrawable;->setDividerColor(I)V

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lorg/chromium/components/autofill/R$dimen;->autofill_dropdown_item_divider_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {v3, v5}, Lorg/chromium/ui/DropdownDividerDrawable;->setHeight(I)V

    iget-object v5, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mSeparators:Ljava/util/Set;

    if-eqz v5, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mContext:Landroid/content/Context;

    sget v5, Lorg/chromium/components/autofill/R$color;->dropdown_dark_divider_color:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mContext:Landroid/content/Context;

    sget-boolean v5, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_INTERNET_AUTOFILL_BASE_CHANGES:Z

    if-eqz v5, :cond_3

    sget v5, Lorg/chromium/components/autofill/R$color;->divider_line_color:I

    goto :goto_0

    :cond_3
    sget v5, Lorg/chromium/components/autofill/R$color;->dropdown_divider_color:I

    :goto_0
    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    move-result p1

    :goto_1
    invoke-virtual {v3, p1}, Lorg/chromium/ui/DropdownDividerDrawable;->setDividerColor(I)V

    :goto_2
    sget p1, Lorg/chromium/components/autofill/R$id;->dropdown_item_tag:I

    invoke-interface {v1}, Lorg/chromium/ui/DropdownItem;->getItemTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, p1, v3, v4}, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->populateLabelView(Landroid/view/View;ILjava/lang/CharSequence;Z)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v3, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {v1}, Lorg/chromium/ui/DropdownItem;->getSublabelFontSizeResId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-boolean v3, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_INTERNET_AUTOFILL_BASE_CHANGES:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/chromium/ui/util/ColorUtils;->inNightMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget v5, Lorg/chromium/components/autofill/R$color;->default_text_color_secondary_light:I

    goto :goto_3

    :cond_4
    sget v5, Lorg/chromium/components/autofill/R$color;->sublabel_text_color:I

    :goto_3
    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_5
    iget-object v3, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Lorg/chromium/ui/DropdownItem;->getSublabelFontColorResId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_4
    iget-object p1, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lorg/chromium/components/autofill/R$dimen;->autofill_dropdown_item_tag_height:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr v2, p1

    :cond_6
    sget p1, Lorg/chromium/components/autofill/R$id;->dropdown_label_wrapper:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v4, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget p1, Lorg/chromium/components/autofill/R$id;->dropdown_label:I

    invoke-interface {v1}, Lorg/chromium/ui/DropdownItem;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/chromium/ui/DropdownItem;->isEnabled()Z

    move-result v5

    invoke-direct {p0, p2, p1, v2, v5}, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->populateLabelView(Landroid/view/View;ILjava/lang/CharSequence;Z)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget v2, Lorg/chromium/components/autofill/R$id;->dropdown_secondary_label:I

    invoke-interface {v1}, Lorg/chromium/ui/DropdownItem;->getSecondaryLabel()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lorg/chromium/ui/DropdownItem;->isEnabled()Z

    move-result v6

    invoke-direct {p0, p2, v2, v5, v6}, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->populateLabelView(Landroid/view/View;ILjava/lang/CharSequence;Z)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-interface {v1}, Lorg/chromium/ui/DropdownItem;->isGroupHeader()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p1, v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    if-eqz v2, :cond_8

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_5

    :cond_7
    invoke-virtual {p1, v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    if-eqz v2, :cond_8

    invoke-virtual {v2, v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_8
    :goto_5
    const/high16 v5, 0x3fc00000    # 1.5f

    cmpg-float p3, p3, v5

    if-gtz p3, :cond_9

    iget-object v6, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-interface {v1}, Lorg/chromium/ui/DropdownItem;->getLabelFontSizeResId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {p1, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_6

    :cond_9
    iget-object v6, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lorg/chromium/components/autofill/R$dimen;->text_size_label:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    invoke-virtual {p1, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_6
    invoke-interface {v1}, Lorg/chromium/ui/DropdownItem;->isColoredLabel()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mContext:Landroid/content/Context;

    sget v7, Lorg/chromium/components/autofill/R$color;->virtual_card_message_text:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1, v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_8

    :cond_a
    sget-boolean v0, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_INTERNET_AUTOFILL_BASE_CHANGES:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/ui/util/ColorUtils;->inNightMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    sget v3, Lorg/chromium/components/autofill/R$color;->default_text_color_light:I

    goto :goto_7

    :cond_b
    sget v3, Lorg/chromium/components/autofill/R$color;->label_text_color:I

    :goto_7
    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    :cond_c
    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Lorg/chromium/ui/DropdownItem;->getLabelFontColorResId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_8
    if-eqz v2, :cond_f

    iget-object p1, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-interface {v1}, Lorg/chromium/ui/DropdownItem;->getLabelFontSizeResId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v2, v4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-boolean p1, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_INTERNET_AUTOFILL_BASE_CHANGES:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lorg/chromium/ui/util/ColorUtils;->inNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget v0, Lorg/chromium/components/autofill/R$color;->default_text_color_light:I

    goto :goto_9

    :cond_d
    sget v0, Lorg/chromium/components/autofill/R$color;->label_text_color:I

    :goto_9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_a

    :cond_e
    iget-object p1, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Lorg/chromium/ui/DropdownItem;->getLabelFontColorResId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_f
    :goto_a
    sget p1, Lorg/chromium/components/autofill/R$id;->dropdown_sublabel:I

    invoke-interface {v1}, Lorg/chromium/ui/DropdownItem;->getSublabel()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0, v4}, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->populateLabelView(Landroid/view/View;ILjava/lang/CharSequence;Z)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_13

    if-gtz p3, :cond_10

    iget-object p3, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-interface {v1}, Lorg/chromium/ui/DropdownItem;->getSublabelFontSizeResId()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-virtual {p1, v4, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_b

    :cond_10
    iget-object p3, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lorg/chromium/components/autofill/R$dimen;->text_size_sublabel:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v5

    invoke-virtual {p1, v4, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_b
    sget-boolean p3, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_INTERNET_AUTOFILL_BASE_CHANGES:Z

    if-eqz p3, :cond_12

    iget-object p3, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lorg/chromium/ui/util/ColorUtils;->inNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget v0, Lorg/chromium/components/autofill/R$color;->default_text_color_secondary_light:I

    goto :goto_c

    :cond_11
    sget v0, Lorg/chromium/components/autofill/R$color;->sublabel_text_color:I

    :goto_c
    invoke-virtual {p3, v0}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_d

    :cond_12
    iget-object p3, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Lorg/chromium/ui/DropdownItem;->getSublabelFontColorResId()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_13
    :goto_d
    sget p1, Lorg/chromium/components/autofill/R$id;->dropdown_secondary_sublabel:I

    invoke-interface {v1}, Lorg/chromium/ui/DropdownItem;->getSecondarySublabel()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p1, p3, v4}, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->populateLabelView(Landroid/view/View;ILjava/lang/CharSequence;Z)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_16

    iget-object p3, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-interface {v1}, Lorg/chromium/ui/DropdownItem;->getSublabelFontSizeResId()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-virtual {p1, v4, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-boolean p3, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_INTERNET_AUTOFILL_BASE_CHANGES:Z

    if-eqz p3, :cond_15

    iget-object p3, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lorg/chromium/ui/util/ColorUtils;->inNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget v0, Lorg/chromium/components/autofill/R$color;->default_text_color_secondary_light:I

    goto :goto_e

    :cond_14
    sget v0, Lorg/chromium/components/autofill/R$color;->sublabel_text_color:I

    :goto_e
    invoke-virtual {p3, v0}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_f

    :cond_15
    iget-object p3, p0, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Lorg/chromium/ui/DropdownItem;->getSublabelFontColorResId()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_16
    :goto_f
    sget p1, Lorg/chromium/components/autofill/R$id;->start_dropdown_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget p3, Lorg/chromium/components/autofill/R$id;->end_dropdown_icon:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    invoke-interface {v1}, Lorg/chromium/ui/DropdownItem;->isIconAtStart()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_17

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_10

    :cond_17
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_10
    invoke-interface {v1}, Lorg/chromium/ui/DropdownItem;->isIconAtStart()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_11

    :cond_18
    move-object p1, p3

    :goto_11
    invoke-direct {p0, p1, v1}, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->populateIconView(Landroid/widget/ImageView;Lorg/chromium/ui/DropdownItem;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-direct {p0, p1, v1}, Lorg/chromium/components/autofill/AutofillDropdownAdapter;->getSizeAndMarginParamsForIconView(Landroid/widget/ImageView;Lorg/chromium/ui/DropdownItem;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_19
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/ui/DropdownItem;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/ui/DropdownItem;

    invoke-interface {p0}, Lorg/chromium/ui/DropdownItem;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lorg/chromium/ui/DropdownItem;->isGroupHeader()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method
