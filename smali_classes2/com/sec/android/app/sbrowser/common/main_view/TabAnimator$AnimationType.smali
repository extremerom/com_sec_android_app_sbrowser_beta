.class public final enum Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

.field public static final enum BACKGROUND:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

.field public static final enum CREATE:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

.field public static final enum DELETE:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;->CREATE:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;->BACKGROUND:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;->DELETE:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

    const-string v1, "CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;->CREATE:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

    const-string v1, "BACKGROUND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;->BACKGROUND:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

    const-string v1, "DELETE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;->DELETE:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;->$values()[Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;

    return-object v0
.end method
