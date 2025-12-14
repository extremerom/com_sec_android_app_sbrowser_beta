.class final enum Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SIX_ENABLE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;

.field public static final enum DEFAULT_ONLY:Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;

.field public static final enum EITHER_ONE:Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;

.field public static final enum PLUGIN_ONLY:Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;->EITHER_ONE:Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;->PLUGIN_ONLY:Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;->DEFAULT_ONLY:Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;

    const-string v1, "EITHER_ONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;->EITHER_ONE:Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;

    const-string v1, "PLUGIN_ONLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;->PLUGIN_ONLY:Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;

    const-string v1, "DEFAULT_ONLY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;->DEFAULT_ONLY:Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;->$values()[Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;->$VALUES:[Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;->$VALUES:[Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;

    return-object v0
.end method
