.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CornerRadius"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\u0005R\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;",
        "",
        "",
        "radius",
        "<init>",
        "(I)V",
        "I",
        "getRadius",
        "()I",
        "setRadius",
        "Lk9/m;",
        "cornerRadiusSide",
        "Lk9/m;",
        "getCornerRadiusSide",
        "()Lk9/m;",
        "setCornerRadiusSide",
        "(Lk9/m;)V",
        "Companion",
        "SBrowser_highendBetaGlobal64Release"
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
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private cornerRadiusSide:Lk9/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private radius:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;->$stable:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;->radius:I

    sget-object v0, Lk9/m;->ALL:Lk9/m;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;->cornerRadiusSide:Lk9/m;

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;->radius:I

    return-void
.end method


# virtual methods
.method public final getCornerRadiusSide()Lk9/m;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;->cornerRadiusSide:Lk9/m;

    return-object p0
.end method

.method public final getRadius()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;->radius:I

    return p0
.end method
