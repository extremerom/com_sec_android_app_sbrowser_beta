.class public Lorg/chromium/components/autofill/payments/AutofillSaveCardUiInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/autofill/payments/AutofillSaveCardUiInfo$Builder;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private final mCancelText:Ljava/lang/String;

.field private final mCardDescription:Ljava/lang/String;

.field private final mCardLabel:Ljava/lang/String;

.field private final mCardSubLabel:Ljava/lang/String;

.field private final mConfirmText:Ljava/lang/String;

.field private final mDescriptionText:Ljava/lang/String;

.field private final mIsForUpload:Z

.field private final mIsGooglePayBrandingEnabled:Z

.field private final mIssuerIcon:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private final mLegalMessageLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/components/autofill/payments/LegalMessageLine;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadingDescription:Ljava/lang/String;

.field private final mLogoIcon:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private final mTitleText:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZIILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lorg/chromium/components/autofill/payments/LegalMessageLine;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/chromium/components/autofill/payments/AutofillSaveCardUiInfo;->mIsForUpload:Z

    iput p2, p0, Lorg/chromium/components/autofill/payments/AutofillSaveCardUiInfo;->mLogoIcon:I

    iput p3, p0, Lorg/chromium/components/autofill/payments/AutofillSaveCardUiInfo;->mIssuerIcon:I

    const-string p1, "List of legal message lines can\'t be null"

    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Ljava/util/List;

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/autofill/payments/AutofillSaveCardUiInfo;->mLegalMessageLines:Ljava/util/List;

    const-string p1, "Card label can\'t be null"

    invoke-static {p5, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p5, p0, Lorg/chromium/components/autofill/payments/AutofillSaveCardUiInfo;->mCardLabel:Ljava/lang/String;

    const-string p1, "Card sublabel can\'t be null"

    invoke-static {p6, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p6, p0, Lorg/chromium/components/autofill/payments/AutofillSaveCardUiInfo;->mCardSubLabel:Ljava/lang/String;

    const-string p1, "Card description can\'t be null"

    invoke-static {p7, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p7, p0, Lorg/chromium/components/autofill/payments/AutofillSaveCardUiInfo;->mCardDescription:Ljava/lang/String;

    const-string p1, "Title text can\'t be null"

    invoke-static {p8, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p8, p0, Lorg/chromium/components/autofill/payments/AutofillSaveCardUiInfo;->mTitleText:Ljava/lang/String;

    const-string p1, "Confirm text can\'t be null"

    invoke-static {p9, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p9, p0, Lorg/chromium/components/autofill/payments/AutofillSaveCardUiInfo;->mConfirmText:Ljava/lang/String;

    const-string p1, "Cancel text can\'t be null"

    invoke-static {p10, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p10, p0, Lorg/chromium/components/autofill/payments/AutofillSaveCardUiInfo;->mCancelText:Ljava/lang/String;

    const-string p1, "Description text can\'t be null"

    invoke-static {p11, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p11, p0, Lorg/chromium/components/autofill/payments/AutofillSaveCardUiInfo;->mDescriptionText:Ljava/lang/String;

    const-string p1, "Loading description can\'t be null"

    invoke-static {p12, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p12, p0, Lorg/chromium/components/autofill/payments/AutofillSaveCardUiInfo;->mLoadingDescription:Ljava/lang/String;

    iput-boolean p13, p0, Lorg/chromium/components/autofill/payments/AutofillSaveCardUiInfo;->mIsGooglePayBrandingEnabled:Z

    return-void
.end method
