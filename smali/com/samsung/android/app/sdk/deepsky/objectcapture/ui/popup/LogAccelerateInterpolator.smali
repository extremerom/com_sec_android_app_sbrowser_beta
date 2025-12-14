.class public final Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/LogAccelerateInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/LogAccelerateInterpolator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/LogAccelerateInterpolator;",
        "Landroid/view/animation/Interpolator;",
        "<init>",
        "()V",
        "base",
        "",
        "logScale",
        "",
        "computeLog",
        "t",
        "getInterpolation",
        "Companion",
        "deepsky-sdk-objectcapture-8.5.4_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/LogAccelerateInterpolator$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LogAccelerateInterpolator"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final base:I

.field private final logScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/LogAccelerateInterpolator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/LogAccelerateInterpolator$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/LogAccelerateInterpolator;->Companion:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/LogAccelerateInterpolator$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/LogAccelerateInterpolator;->base:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/LogAccelerateInterpolator;->computeLog(FI)F

    move-result v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/LogAccelerateInterpolator;->logScale:F

    return-void
.end method

.method private final computeLog(FI)F
    .locals 4

    const/4 p0, 0x1

    int-to-double v0, p0

    int-to-double v2, p2

    float-to-double p0, p1

    neg-double p0, p0

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    sub-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float p1, v0, p1

    iget v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/LogAccelerateInterpolator;->base:I

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/LogAccelerateInterpolator;->computeLog(FI)F

    move-result p1

    iget p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/popup/LogAccelerateInterpolator;->logScale:F

    mul-float/2addr p1, p0

    sub-float/2addr v0, p1

    return v0
.end method
