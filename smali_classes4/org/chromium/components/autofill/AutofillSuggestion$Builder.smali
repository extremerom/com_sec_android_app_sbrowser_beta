.class public final Lorg/chromium/components/autofill/AutofillSuggestion$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/autofill/AutofillSuggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mApplyDeactivatedStyle:Z

.field private mCustomIconUrl:Lorg/chromium/url/GURL;

.field private mFeatureForIph:Ljava/lang/String;

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIphDescriptionText:Ljava/lang/String;

.field private mIsColoredLabel:Z

.field private mIsDeletable:Z

.field private mIsIconAtStart:Z

.field private mItemTag:Ljava/lang/String;

.field private mLabel:Ljava/lang/String;

.field private mLabelContentDescription:Ljava/lang/String;

.field private mSecondaryLabel:Ljava/lang/String;

.field private mSecondarySubLabel:Ljava/lang/String;

.field private mShouldDisplayTermsAvailable:Z

.field private mSubLabel:Ljava/lang/String;

.field private mSuggestionType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/chromium/components/autofill/AutofillSuggestion;
    .locals 21

    move-object/from16 v0, p0

    new-instance v19, Lorg/chromium/components/autofill/AutofillSuggestion;

    move-object/from16 v1, v19

    iget-object v2, v0, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->mLabel:Ljava/lang/String;

    iget-object v3, v0, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->mSecondaryLabel:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->mSubLabel:Ljava/lang/String;

    invoke-static {v4}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v0, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->mSecondarySubLabel:Ljava/lang/String;

    iget-object v6, v0, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->mLabelContentDescription:Ljava/lang/String;

    iget-object v7, v0, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->mItemTag:Ljava/lang/String;

    iget v8, v0, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->mIconId:I

    iget-boolean v9, v0, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->mIsIconAtStart:Z

    iget v10, v0, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->mSuggestionType:I

    iget-boolean v11, v0, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->mIsDeletable:Z

    iget-boolean v12, v0, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->mApplyDeactivatedStyle:Z

    iget-boolean v13, v0, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->mShouldDisplayTermsAvailable:Z

    iget-boolean v14, v0, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->mIsColoredLabel:Z

    iget-object v15, v0, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->mFeatureForIph:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v0, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->mIphDescriptionText:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->mCustomIconUrl:Lorg/chromium/url/GURL;

    move-object/from16 v17, v1

    iget-object v0, v0, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Lorg/chromium/components/autofill/AutofillSuggestion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIZZZZLjava/lang/String;Ljava/lang/String;Lorg/chromium/url/GURL;Landroid/graphics/drawable/Drawable;)V

    return-object v19
.end method

.method public setFeatureForIph(Ljava/lang/String;)Lorg/chromium/components/autofill/AutofillSuggestion$Builder;
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->mFeatureForIph:Ljava/lang/String;

    return-object p0
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)Lorg/chromium/components/autofill/AutofillSuggestion$Builder;
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIconId(I)Lorg/chromium/components/autofill/AutofillSuggestion$Builder;
    .locals 0

    iput p1, p0, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->mIconId:I

    return-object p0
.end method

.method public setIsColoredLabel(Z)Lorg/chromium/components/autofill/AutofillSuggestion$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->mIsColoredLabel:Z

    return-object p0
.end method

.method public setIsDeletable(Z)Lorg/chromium/components/autofill/AutofillSuggestion$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->mIsDeletable:Z

    return-object p0
.end method

.method public setIsIconAtStart(Z)Lorg/chromium/components/autofill/AutofillSuggestion$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->mIsIconAtStart:Z

    return-object p0
.end method

.method public setItemTag(Ljava/lang/String;)Lorg/chromium/components/autofill/AutofillSuggestion$Builder;
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->mItemTag:Ljava/lang/String;

    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lorg/chromium/components/autofill/AutofillSuggestion$Builder;
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public setSecondaryLabel(Ljava/lang/String;)Lorg/chromium/components/autofill/AutofillSuggestion$Builder;
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->mSecondaryLabel:Ljava/lang/String;

    return-object p0
.end method

.method public setSubLabel(Ljava/lang/String;)Lorg/chromium/components/autofill/AutofillSuggestion$Builder;
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->mSubLabel:Ljava/lang/String;

    return-object p0
.end method

.method public setSuggestionType(I)Lorg/chromium/components/autofill/AutofillSuggestion$Builder;
    .locals 0

    iput p1, p0, Lorg/chromium/components/autofill/AutofillSuggestion$Builder;->mSuggestionType:I

    return-object p0
.end method
