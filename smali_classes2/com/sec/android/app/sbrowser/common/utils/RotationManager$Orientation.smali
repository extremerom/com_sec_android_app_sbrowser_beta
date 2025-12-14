.class public final enum Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/utils/RotationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

.field public static final enum LANDSCAPE:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

.field public static final enum PORTRAIT:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

.field public static final enum UNKNOWN:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;->UNKNOWN:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;->LANDSCAPE:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;->PORTRAIT:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;->UNKNOWN:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

    const-string v1, "LANDSCAPE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;->LANDSCAPE:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

    const-string v1, "PORTRAIT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;->PORTRAIT:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;->$values()[Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;->$VALUES:[Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;->$VALUES:[Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Orientation;

    return-object v0
.end method
