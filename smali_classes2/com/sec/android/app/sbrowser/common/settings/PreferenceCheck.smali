.class public Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;
.super Landroidx/preference/Preference;
.source "SourceFile"


# static fields
.field private static sTotalPreferences:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomViewImage:Landroid/widget/ImageView;

.field private mDivider:Landroid/view/View;

.field private mFavicon:Landroid/graphics/Bitmap;

.field private mImageVisibility:Z

.field mMinimumHeightSmall:I

.field private mTitle:Ljava/lang/String;

.field private mTitleViewLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mMinimumHeightSmall:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010387

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mMinimumHeightSmall:I

    :cond_0
    const p1, 0x7f0e088a

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mFavicon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method private setItemDescription(Z)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mCustomViewImage:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mImageVisibility:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mTitleViewLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140b96

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mTitleViewLayout:Landroid/widget/LinearLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mImageVisibility:Z

    const v5, 0x7f140e6f

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    const v4, 0x7f14081f

    :goto_1
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mTitleViewLayout:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private setVisibilityOfCheck(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mCustomViewImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setVisibilityOfImageView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mImageVisibility:Z

    return-void
.end method

.method public static setsTotalPreferences(I)V
    .locals 0

    sput p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->sTotalPreferences:I

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public onBindViewHolder(Lw2/H;)V
    .locals 9

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Lw2/H;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lw2/H;->e:Z

    iget-object v1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v2, 0x7f0b0416

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mDivider:Landroid/view/View;

    sget v1, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->sTotalPreferences:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/h1;->getBindingAdapterPosition()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    iput-boolean v4, p1, Lw2/H;->e:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/h1;->setIsRecyclable(Z)V

    const v1, 0x7f0b0b0f

    invoke-virtual {p1, v1}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0b0b32

    invoke-virtual {p1, v2}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mTitleViewLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    const/4 v2, 0x2

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    sget-boolean v4, Lcom/sec/android/app/sbrowser/common/constants/settings/SettingsConstants;->SCAFE_LATTE:Z

    if-eqz v4, :cond_2

    const v4, 0x7f070285

    const v5, 0x7f070284

    goto :goto_1

    :cond_2
    sget-boolean v4, Lcom/sec/android/app/sbrowser/common/constants/settings/SettingsConstants;->SCAFE_MOCHA:Z

    if-eqz v4, :cond_3

    const v4, 0x7f070287

    const v5, 0x7f070286

    goto :goto_1

    :cond_3
    sget-boolean v4, Lcom/sec/android/app/sbrowser/common/constants/settings/SettingsConstants;->SCAFE_AMERICANO:Z

    if-eqz v4, :cond_4

    const v4, 0x7f070281

    const v5, 0x7f070280

    goto :goto_1

    :cond_4
    const v4, 0x7f070283

    const v5, 0x7f070282

    :goto_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v1, v4, v6, v5, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_5
    const v4, 0x7f0b0d66

    invoke-virtual {p1, v4}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0b0a88

    invoke-virtual {p1, v5}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mFavicon:Landroid/graphics/Bitmap;

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mContext:Landroid/content/Context;

    const v7, 0x7f080548

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mContext:Landroid/content/Context;

    const v8, 0x7f06098e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setTint(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_6
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mFavicon:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v5, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060bc3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    const v4, 0x7f0b0c0a

    invoke-virtual {p1, v4}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget v3, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mMinimumHeightSmall:I

    if-lez v3, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {v1, v3}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_8
    iget-object p1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v1, 0x7f0b05f0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mCustomViewImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->setItemDescription(Z)V

    :cond_9
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->setVisibilityOfImageView(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->mCustomViewImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->setVisibilityOfCheck(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->setItemDescription(Z)V

    :cond_0
    return-void
.end method
