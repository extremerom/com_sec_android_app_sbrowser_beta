.class Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy$NoAnimator;
.super Landroid/animation/ValueAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoAnimator"
.end annotation


# instance fields
.field private mValue:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy$NoAnimator;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy$NoAnimator;I)Landroid/animation/ValueAnimator;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy$NoAnimator;->withValue(I)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method private withValue(I)Landroid/animation/ValueAnimator;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy$NoAnimator;->mValue:I

    return-object p0
.end method


# virtual methods
.method public getAnimatedValue()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabSideSheetStrategy$NoAnimator;->mValue:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
