.class public Lorg/chromium/components/autofill/payments/AutofillSaveIbanUiInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/autofill/payments/AutofillSaveIbanUiInfo$Builder;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private final mAcceptText:Ljava/lang/String;

.field private final mCancelText:Ljava/lang/String;

.field private final mDescriptionText:Ljava/lang/String;

.field private final mIbanValue:Ljava/lang/String;

.field private final mIsServerSave:Z

.field private final mLegalMessageLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/components/autofill/payments/LegalMessageLine;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogoIcon:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private final mTitleText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ILjava/lang/String;)V
    .locals 1
    .param p7    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lorg/chromium/components/autofill/payments/LegalMessageLine;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Accept text can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/chromium/components/autofill/payments/AutofillSaveIbanUiInfo;->mAcceptText:Ljava/lang/String;

    const-string p1, "Cancel text can\'t be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lorg/chromium/components/autofill/payments/AutofillSaveIbanUiInfo;->mCancelText:Ljava/lang/String;

    const-string p1, "Description text can\'t be null"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Lorg/chromium/components/autofill/payments/AutofillSaveIbanUiInfo;->mDescriptionText:Ljava/lang/String;

    const-string p1, "Iban value can\'t be null"

    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p4, p0, Lorg/chromium/components/autofill/payments/AutofillSaveIbanUiInfo;->mIbanValue:Ljava/lang/String;

    iput-boolean p5, p0, Lorg/chromium/components/autofill/payments/AutofillSaveIbanUiInfo;->mIsServerSave:Z

    const-string p1, "List of legal message lines can\'t be null"

    invoke-static {p6, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p6, Ljava/util/List;

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/autofill/payments/AutofillSaveIbanUiInfo;->mLegalMessageLines:Ljava/util/List;

    iput p7, p0, Lorg/chromium/components/autofill/payments/AutofillSaveIbanUiInfo;->mLogoIcon:I

    const-string p1, "Title text can\'t be null"

    invoke-static {p8, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p8, p0, Lorg/chromium/components/autofill/payments/AutofillSaveIbanUiInfo;->mTitleText:Ljava/lang/String;

    return-void
.end method
