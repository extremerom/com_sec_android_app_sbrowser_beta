.class public final enum Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0086\u0081\u0002\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;",
        "",
        "",
        "value",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "Companion",
        "NONE",
        "ALWAYS",
        "ONLY_STOPPED",
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
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;

.field public static final enum ALWAYS:Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;

.field public static final Companion:Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum NONE:Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;

.field public static final enum ONLY_STOPPED:Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;


# instance fields
.field private final value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;->NONE:Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;->ALWAYS:Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;->ONLY_STOPPED:Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;

    const-string v1, "None"

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;->NONE:Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;

    const-string v1, "Always"

    const-string v2, "ALWAYS"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;->ALWAYS:Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;

    const-string v1, "Only Stopped"

    const-string v2, "ONLY_STOPPED"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;->ONLY_STOPPED:Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;->$values()[Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;->$ENTRIES:Llb/a;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;->Companion:Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/device/BottomBarBlurEffectType;

    return-object v0
.end method
