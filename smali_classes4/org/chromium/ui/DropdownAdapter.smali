.class public Lorg/chromium/ui/DropdownAdapter;
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


# instance fields
.field private final mAreAllItemsEnabled:Z

.field private final mContext:Landroid/content/Context;

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

    sget v0, Lorg/chromium/ui/R$layout;->dropdown_item:I

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/chromium/ui/DropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    iput-object p3, p0, Lorg/chromium/ui/DropdownAdapter;->mSeparators:Ljava/util/Set;

    invoke-direct {p0}, Lorg/chromium/ui/DropdownAdapter;->checkAreAllItemsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/chromium/ui/DropdownAdapter;->mAreAllItemsEnabled:Z

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


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/ui/DropdownAdapter;->mAreAllItemsEnabled:Z

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/chromium/ui/DropdownAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    sget v0, Lorg/chromium/ui/R$layout;->dropdown_item:I

    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lorg/chromium/ui/DropdownDividerDrawable;

    invoke-direct {v0, p3}, Lorg/chromium/ui/DropdownDividerDrawable;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/DropdownDividerDrawable;

    iget-object v1, p0, Lorg/chromium/ui/DropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/ui/R$dimen;->dropdown_item_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    invoke-virtual {v0, v2}, Lorg/chromium/ui/DropdownDividerDrawable;->setDividerColor(I)V

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lorg/chromium/ui/DropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lorg/chromium/ui/R$dimen;->dropdown_item_divider_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v0, v3}, Lorg/chromium/ui/DropdownDividerDrawable;->setHeight(I)V

    iget-object v3, p0, Lorg/chromium/ui/DropdownAdapter;->mSeparators:Ljava/util/Set;

    if-eqz v3, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/chromium/ui/DropdownAdapter;->mContext:Landroid/content/Context;

    sget v4, Lorg/chromium/ui/R$color;->dropdown_dark_divider_color:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/chromium/ui/DropdownAdapter;->mContext:Landroid/content/Context;

    sget v4, Lorg/chromium/ui/R$color;->dropdown_divider_color:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    :goto_1
    invoke-virtual {v0, v3}, Lorg/chromium/ui/DropdownDividerDrawable;->setDividerColor(I)V

    :goto_2
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/ui/DropdownItem;

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/ui/DropdownItem;

    sget v0, Lorg/chromium/ui/R$id;->dropdown_label_wrapper:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v2, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lorg/chromium/ui/R$id;->dropdown_label:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1}, Lorg/chromium/ui/DropdownItem;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-interface {p1}, Lorg/chromium/ui/DropdownItem;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-interface {p1}, Lorg/chromium/ui/DropdownItem;->isGroupHeader()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p3, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v0, p3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_3
    iget-object p3, p0, Lorg/chromium/ui/DropdownAdapter;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lorg/chromium/ui/DropdownItem;->getLabelFontColorResId()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p3, p0, Lorg/chromium/ui/DropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lorg/chromium/ui/R$dimen;->text_size_large:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-virtual {v0, v2, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    sget p3, Lorg/chromium/ui/R$id;->dropdown_sublabel:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-interface {p1}, Lorg/chromium/ui/DropdownItem;->getSublabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, 0x8

    if-eqz v1, :cond_4

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/chromium/ui/DropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-interface {p1}, Lorg/chromium/ui/DropdownItem;->getSublabelFontSizeResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p3, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    sget p3, Lorg/chromium/ui/R$id;->start_dropdown_icon:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    sget v0, Lorg/chromium/ui/R$id;->end_dropdown_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {p1}, Lorg/chromium/ui/DropdownItem;->isIconAtStart()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    invoke-interface {p1}, Lorg/chromium/ui/DropdownItem;->isIconAtStart()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    move-object p3, v0

    :goto_6
    invoke-interface {p1}, Lorg/chromium/ui/DropdownItem;->getIconId()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    :cond_7
    invoke-interface {p1}, Lorg/chromium/ui/DropdownItem;->getIconSizeResId()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x2

    goto :goto_7

    :cond_8
    iget-object v1, p0, Lorg/chromium/ui/DropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_7
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v0, p0, Lorg/chromium/ui/DropdownAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-interface {p1}, Lorg/chromium/ui/DropdownItem;->getIconMarginResId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lorg/chromium/ui/DropdownAdapter;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lorg/chromium/ui/DropdownItem;->getIconId()I

    move-result p1

    invoke-static {p1, p0}, Ll5/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_8
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
