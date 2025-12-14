.class public Lcom/sec/android/app/sbrowser/settings/WebDarkModeBrightnessThumbnail;
.super Landroidx/preference/Preference;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;

.field private mThumbnailLayout:Landroid/widget/LinearLayout;

.field private final mThumbnailLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/H;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Lcom/sec/android/app/sbrowser/settings/H;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/WebDarkModeBrightnessThumbnail;->mThumbnailLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/WebDarkModeBrightnessThumbnail;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/settings/WebDarkModeBrightnessThumbnail;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/settings/WebDarkModeBrightnessThumbnail;->lambda$new$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    const p1, 0x7f0e0912

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p3

    const p5, 0x7f0b0d59

    if-ne p3, p5, :cond_0

    sub-int/2addr p8, p6

    sub-int/2addr p4, p2

    if-eq p8, p4, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/WebDarkModeBrightnessThumbnail;->resizeImageView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private resizeImageView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0b06ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result p1

    sub-int/2addr v1, p1

    sub-int/2addr v1, v0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/WebDarkModeBrightnessThumbnail;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/WebDarkModeBrightnessThumbnail;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0716e5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/WebDarkModeBrightnessThumbnail;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateBackground(F)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/WebDarkModeBrightnessThumbnail;->mThumbnailLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f060ddb

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    const v1, 0x3fb33334    # 1.4000001f

    mul-float/2addr p1, v1

    const v1, 0x3e99999a    # 0.3f

    add-float/2addr p1, v1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int p1, v3

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    invoke-static {p0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method private updateContrast(F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/WebDarkModeBrightnessThumbnail;->updateImageContrast(F)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/WebDarkModeBrightnessThumbnail;->updateTextContrast(F)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/WebDarkModeBrightnessThumbnail;->updateBackground(F)V

    return-void
.end method

.method private updateImageContrast(F)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/WebDarkModeBrightnessThumbnail;->mImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr p1, v1

    const v1, 0x3ecccccd    # 0.4f

    add-float/2addr p1, v1

    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    const/16 v2, 0x14

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v3, 0x2

    aput v0, v2, v3

    const/4 v3, 0x3

    aput v0, v2, v3

    const/4 v3, 0x4

    aput v0, v2, v3

    const/4 v3, 0x5

    aput v0, v2, v3

    const/4 v3, 0x6

    aput p1, v2, v3

    const/4 v3, 0x7

    aput v0, v2, v3

    const/16 v3, 0x8

    aput v0, v2, v3

    const/16 v3, 0x9

    aput v0, v2, v3

    const/16 v3, 0xa

    aput v0, v2, v3

    const/16 v3, 0xb

    aput v0, v2, v3

    const/16 v3, 0xc

    aput p1, v2, v3

    const/16 p1, 0xd

    aput v0, v2, p1

    const/16 p1, 0xe

    aput v0, v2, p1

    const/16 p1, 0xf

    aput v0, v2, p1

    const/16 p1, 0x10

    aput v0, v2, p1

    const/16 p1, 0x11

    aput v0, v2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    const/16 v3, 0x12

    aput p1, v2, v3

    const/16 p1, 0x13

    aput v0, v2, p1

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->set([F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/WebDarkModeBrightnessThumbnail;->mImageView:Landroid/widget/ImageView;

    new-instance p1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p1, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private updateTextContrast(F)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/WebDarkModeBrightnessThumbnail;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060ddd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    const v1, 0x3ecccccc    # 0.39999998f

    mul-float/2addr p1, v1

    const v1, 0x3f19999a    # 0.6f

    add-float/2addr p1, v1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int p1, v3

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/WebDarkModeBrightnessThumbnail;->mTextView:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public onAttachedToHierarchy(Lw2/F;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Lw2/F;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Lw2/H;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Lw2/H;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v1, 0x7f0b0d59

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/WebDarkModeBrightnessThumbnail;->mThumbnailLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/WebDarkModeBrightnessThumbnail;->mThumbnailLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v1, 0x7f0b0607

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/WebDarkModeBrightnessThumbnail;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v1, 0x7f0b0d32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/WebDarkModeBrightnessThumbnail;->mTextView:Landroid/widget/TextView;

    iget-object p1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v0, 0x7f0b0407

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getWebDarkModeBrightness()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/WebDarkModeBrightnessThumbnail;->updateContrast(F)V

    return-void
.end method

.method public onPrepareForRemoval()V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/WebDarkModeBrightnessThumbnail;->mThumbnailLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/WebDarkModeBrightnessThumbnail;->mThumbnailLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-super {p0}, Landroidx/preference/Preference;->onPrepareForRemoval()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "pref_web_dark_mode_brightness"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getWebDarkModeBrightness()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/WebDarkModeBrightnessThumbnail;->updateContrast(F)V

    :cond_0
    return-void
.end method
