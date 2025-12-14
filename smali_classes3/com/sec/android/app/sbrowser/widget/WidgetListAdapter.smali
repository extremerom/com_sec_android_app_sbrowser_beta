.class public Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;

.field private mIsDarkFontRequired:Z

.field private mNeedDarkFont:Z

.field private mWidgetId:I

.field mWidgetItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;",
            ">;ZI)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;->mNeedDarkFont:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;->mWidgetItem:Ljava/util/List;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;->mIsDarkFontRequired:Z

    iput p4, p0, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;->mWidgetId:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private getDominantText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, ""

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;->mWidgetItem:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v2, "need_dark_font"

    invoke-static {p2, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, p3, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;->mNeedDarkFont:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0e005b

    invoke-virtual {p2, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0e005c

    invoke-virtual {p2, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-gt v2, v3, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071737

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    new-instance v2, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;

    invoke-direct {v2, v1}, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;-><init>(I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;

    :goto_2
    const v3, 0x7f0b0e61

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;->mDominantText:Landroid/widget/TextView;

    const v3, 0x7f0b0dfa

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;->mUrlText:Landroid/widget/TextView;

    const v3, 0x7f0b0e78

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;->mWidgetItem:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, p1, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;->mWidgetItem:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;

    const/16 v3, 0x8

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->isPrevious()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, v2, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const p3, 0x7f08053e

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, v2, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;->mDominantText:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v2, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;->mUrlText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->isFolder()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, v2, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const p3, 0x7f08053d

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, v2, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;->mDominantText:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v2, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;->mUrlText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_5
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getTouchIcon()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p3, v2, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object p3, v2, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, v2, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;->mDominantText:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v2, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;->mUrlText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;->getDominantText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_7
    iget-object p1, v2, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;->mDominantText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v2, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;->mDominantText:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v2, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object p1, v2, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getDominantColor()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f071747

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071748

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, p3}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getDominantColor()J

    move-result-wide v7

    long-to-int p3, v7

    invoke-virtual {v6, p3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v1, p1, p1, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object p1, v2, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_8
    iget-object p1, v2, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const p3, 0x7f0800d7

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, v2, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;->mUrlText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;->mIsDarkFontRequired:Z

    if-eqz p1, :cond_9

    iget-object p1, v2, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;->mUrlText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;->mContext:Landroid/content/Context;

    const p3, 0x7f060177

    invoke-virtual {p0, p3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_9
    iget-object p1, v2, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;->mUrlText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;->mContext:Landroid/content/Context;

    const p3, 0x7f060179

    invoke-virtual {p0, p3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_a
    iget-object p1, v2, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;->mUrlText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;->mWidgetId:I

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;->mIsDarkFontRequired:Z

    invoke-static {p3, v0, v1, v3}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->modifyShadowText(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;->mIsDarkFontRequired:Z

    if-eqz p1, :cond_b

    iget-object p1, v2, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;->mUrlText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;->mContext:Landroid/content/Context;

    const p3, 0x7f0604c5

    invoke-virtual {p0, p3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_b
    iget-object p1, v2, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter$ViewHolder;->mUrlText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;->mContext:Landroid/content/Context;

    const p3, 0x7f060298

    invoke-virtual {p0, p3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_4
    return-object p2

    :cond_c
    return-object v0
.end method
