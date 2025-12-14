.class public Lorg/chromium/components/autofill/AndroidAutofillFeatures;
.super Lorg/chromium/base/Features;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/autofill/AndroidAutofillFeatures$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field public static final ANDROID_AUTOFILL_BOTTOM_SHEET_WORKAROUND:Lorg/chromium/components/autofill/AndroidAutofillFeatures;

.field public static final ANDROID_AUTOFILL_BOTTOM_SHEET_WORKAROUND_NAME:Ljava/lang/String; = "AndroidAutofillBottomSheetWorkaround"

.field public static final ANDROID_AUTOFILL_DEPRECATE_ACCESSIBILITY_API:Lorg/chromium/components/autofill/AndroidAutofillFeatures;

.field public static final ANDROID_AUTOFILL_DEPRECATE_ACCESSIBILITY_API_NAME:Ljava/lang/String; = "AndroidAutofillDeprecateAccessibilityApi"


# instance fields
.field private final mOrdinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/components/autofill/AndroidAutofillFeatures;

    const/4 v1, 0x0

    const-string v2, "AndroidAutofillBottomSheetWorkaround"

    invoke-direct {v0, v1, v2}, Lorg/chromium/components/autofill/AndroidAutofillFeatures;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/components/autofill/AndroidAutofillFeatures;->ANDROID_AUTOFILL_BOTTOM_SHEET_WORKAROUND:Lorg/chromium/components/autofill/AndroidAutofillFeatures;

    new-instance v0, Lorg/chromium/components/autofill/AndroidAutofillFeatures;

    const/4 v1, 0x1

    const-string v2, "AndroidAutofillDeprecateAccessibilityApi"

    invoke-direct {v0, v1, v2}, Lorg/chromium/components/autofill/AndroidAutofillFeatures;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/components/autofill/AndroidAutofillFeatures;->ANDROID_AUTOFILL_DEPRECATE_ACCESSIBILITY_API:Lorg/chromium/components/autofill/AndroidAutofillFeatures;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/chromium/base/Features;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lorg/chromium/components/autofill/AndroidAutofillFeatures;->mOrdinal:I

    return-void
.end method


# virtual methods
.method public getFeaturePointer()J
    .locals 2

    invoke-static {}, Lorg/chromium/components/autofill/AndroidAutofillFeaturesJni;->get()Lorg/chromium/components/autofill/AndroidAutofillFeatures$Natives;

    move-result-object v0

    iget p0, p0, Lorg/chromium/components/autofill/AndroidAutofillFeatures;->mOrdinal:I

    invoke-interface {v0, p0}, Lorg/chromium/components/autofill/AndroidAutofillFeatures$Natives;->getFeature(I)J

    move-result-wide v0

    return-wide v0
.end method
