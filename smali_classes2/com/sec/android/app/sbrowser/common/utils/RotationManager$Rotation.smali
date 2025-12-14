.class public final enum Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/utils/RotationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Rotation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

.field public static final enum R0:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

.field public static final enum R180:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

.field public static final enum R270:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

.field public static final enum R90:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

.field public static final enum UNKNOWN:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;
    .locals 5

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;->UNKNOWN:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;->R0:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;->R90:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;->R180:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    sget-object v4, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;->R270:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;->UNKNOWN:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    const-string v1, "R0"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;->R0:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    const-string v1, "R90"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;->R90:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    const-string v1, "R180"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;->R180:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    const-string v1, "R270"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;->R270:Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;->$values()[Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;->$VALUES:[Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;->$VALUES:[Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/utils/RotationManager$Rotation;

    return-object v0
.end method
