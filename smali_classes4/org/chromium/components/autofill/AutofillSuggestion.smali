.class public Lorg/chromium/components/autofill/AutofillSuggestion;
.super Lorg/chromium/ui/DropdownItemBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/autofill/AutofillSuggestion$Builder;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mApplyDeactivatedStyle:Z

.field private final mCustomIconUrl:Lorg/chromium/url/GURL;

.field private final mFeatureForIph:Ljava/lang/String;

.field private final mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private final mIconId:I

.field private final mIphDescriptionText:Ljava/lang/String;

.field private final mIsColoredLabel:Z

.field private final mIsDeletable:Z

.field private final mIsIconAtStart:Z

.field private final mItemTag:Ljava/lang/String;

.field private final mLabel:Ljava/lang/String;

.field private final mLabelContentDescription:Ljava/lang/String;

.field private final mSecondaryLabel:Ljava/lang/String;

.field private final mSecondarySublabel:Ljava/lang/String;

.field private final mShouldDisplayTermsAvailable:Z

.field private final mSublabel:Ljava/lang/String;

.field private final mSuggestionType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIZZZZLjava/lang/String;Ljava/lang/String;Lorg/chromium/url/GURL;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Lorg/chromium/ui/DropdownItemBase;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lorg/chromium/components/autofill/AutofillSuggestion;->mLabel:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lorg/chromium/components/autofill/AutofillSuggestion;->mSecondaryLabel:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lorg/chromium/components/autofill/AutofillSuggestion;->mSublabel:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lorg/chromium/components/autofill/AutofillSuggestion;->mSecondarySublabel:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lorg/chromium/components/autofill/AutofillSuggestion;->mLabelContentDescription:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lorg/chromium/components/autofill/AutofillSuggestion;->mItemTag:Ljava/lang/String;

    move v1, p7

    iput v1, v0, Lorg/chromium/components/autofill/AutofillSuggestion;->mIconId:I

    move v1, p8

    iput-boolean v1, v0, Lorg/chromium/components/autofill/AutofillSuggestion;->mIsIconAtStart:Z

    move v1, p9

    iput v1, v0, Lorg/chromium/components/autofill/AutofillSuggestion;->mSuggestionType:I

    move v1, p10

    iput-boolean v1, v0, Lorg/chromium/components/autofill/AutofillSuggestion;->mIsDeletable:Z

    move v1, p11

    iput-boolean v1, v0, Lorg/chromium/components/autofill/AutofillSuggestion;->mApplyDeactivatedStyle:Z

    move v1, p12

    iput-boolean v1, v0, Lorg/chromium/components/autofill/AutofillSuggestion;->mShouldDisplayTermsAvailable:Z

    move v1, p13

    iput-boolean v1, v0, Lorg/chromium/components/autofill/AutofillSuggestion;->mIsColoredLabel:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lorg/chromium/components/autofill/AutofillSuggestion;->mFeatureForIph:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lorg/chromium/components/autofill/AutofillSuggestion;->mIphDescriptionText:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lorg/chromium/components/autofill/AutofillSuggestion;->mCustomIconUrl:Lorg/chromium/url/GURL;

    move-object/from16 v1, p17

    iput-object v1, v0, Lorg/chromium/components/autofill/AutofillSuggestion;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static areIconsEqual(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0

    :cond_2
    return v0

    :cond_3
    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/chromium/components/autofill/AutofillSuggestion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/chromium/components/autofill/AutofillSuggestion;

    iget-object v1, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mLabel:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/components/autofill/AutofillSuggestion;->mLabel:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mSecondaryLabel:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/components/autofill/AutofillSuggestion;->mSecondaryLabel:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_INTERNET_AUTOFILL_BASE_CHANGES:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mSublabel:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/components/autofill/AutofillSuggestion;->mSublabel:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mSublabel:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/components/autofill/AutofillSuggestion;->mSublabel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mSecondarySublabel:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/components/autofill/AutofillSuggestion;->mSecondarySublabel:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mLabelContentDescription:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/components/autofill/AutofillSuggestion;->mLabelContentDescription:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mItemTag:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/components/autofill/AutofillSuggestion;->mItemTag:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mIconId:I

    iget v3, p1, Lorg/chromium/components/autofill/AutofillSuggestion;->mIconId:I

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mIsIconAtStart:Z

    iget-boolean v3, p1, Lorg/chromium/components/autofill/AutofillSuggestion;->mIsIconAtStart:Z

    if-ne v1, v3, :cond_3

    iget v1, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mSuggestionType:I

    iget v3, p1, Lorg/chromium/components/autofill/AutofillSuggestion;->mSuggestionType:I

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mIsDeletable:Z

    iget-boolean v3, p1, Lorg/chromium/components/autofill/AutofillSuggestion;->mIsDeletable:Z

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mApplyDeactivatedStyle:Z

    iget-boolean v3, p1, Lorg/chromium/components/autofill/AutofillSuggestion;->mApplyDeactivatedStyle:Z

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mShouldDisplayTermsAvailable:Z

    iget-boolean v3, p1, Lorg/chromium/components/autofill/AutofillSuggestion;->mShouldDisplayTermsAvailable:Z

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mFeatureForIph:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/components/autofill/AutofillSuggestion;->mFeatureForIph:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mIphDescriptionText:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/components/autofill/AutofillSuggestion;->mIphDescriptionText:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mCustomIconUrl:Lorg/chromium/url/GURL;

    iget-object v3, p1, Lorg/chromium/components/autofill/AutofillSuggestion;->mCustomIconUrl:Lorg/chromium/url/GURL;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Lorg/chromium/components/autofill/AutofillSuggestion;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Lorg/chromium/components/autofill/AutofillSuggestion;->areIconsEqual(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getIconId()I
    .locals 0

    iget p0, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mIconId:I

    return p0
.end method

.method public getItemTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mItemTag:Ljava/lang/String;

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getLabelFontColorResId()I
    .locals 2

    sget-boolean v0, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_INTERNET_AUTOFILL_BASE_CHANGES:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mSuggestionType:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    sget p0, Lorg/chromium/components/autofill/R$color;->insecure_context_payment_disabled_message_text:I

    return p0

    :cond_0
    invoke-super {p0}, Lorg/chromium/ui/DropdownItemBase;->getLabelFontColorResId()I

    move-result p0

    return p0
.end method

.method public getSecondaryLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mSecondaryLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getSecondarySublabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mSecondarySublabel:Ljava/lang/String;

    return-object p0
.end method

.method public getSublabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mSublabel:Ljava/lang/String;

    return-object p0
.end method

.method public getSuggestionType()I
    .locals 0

    iget p0, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mSuggestionType:I

    return p0
.end method

.method public isColoredLabel()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mIsColoredLabel:Z

    return p0
.end method

.method public isDeletable()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mIsDeletable:Z

    return p0
.end method

.method public isIconAtStart()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/components/autofill/AutofillSuggestion;->mIsIconAtStart:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0}, Lorg/chromium/ui/DropdownItemBase;->isIconAtStart()Z

    move-result p0

    return p0
.end method
