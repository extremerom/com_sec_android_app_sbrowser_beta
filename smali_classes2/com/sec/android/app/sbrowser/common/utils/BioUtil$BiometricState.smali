.class final enum Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/utils/BioUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BiometricState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

.field public static final enum BIOMETRIC_SUPPORTED:Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

.field public static final enum BIOMETRIC_UNDETERMINED:Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

.field public static final enum BIOMETRIC_UNSUPPORTED:Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;->BIOMETRIC_UNDETERMINED:Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;->BIOMETRIC_SUPPORTED:Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;->BIOMETRIC_UNSUPPORTED:Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

    const-string v1, "BIOMETRIC_UNDETERMINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;->BIOMETRIC_UNDETERMINED:Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

    const-string v1, "BIOMETRIC_SUPPORTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;->BIOMETRIC_SUPPORTED:Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

    const-string v1, "BIOMETRIC_UNSUPPORTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;->BIOMETRIC_UNSUPPORTED:Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;->$values()[Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;->$VALUES:[Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;->$VALUES:[Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/utils/BioUtil$BiometricState;

    return-object v0
.end method
