.class public final Lcom/samsung/android/sdk/aisuggestion/schema/core/CoreSchemaVersion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/samsung/android/sdk/aisuggestion/schema/core/CoreSchemaVersion;",
        "",
        "()V",
        "CURRENT_VERSION",
        "",
        "getCURRENT_VERSION$annotations",
        "getCURRENT_VERSION",
        "()J",
        "deepsky-sdk-aisuggestion-1.6.13_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CURRENT_VERSION:J

.field public static final INSTANCE:Lcom/samsung/android/sdk/aisuggestion/schema/core/CoreSchemaVersion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CoreSchemaVersion;

    invoke-direct {v0}, Lcom/samsung/android/sdk/aisuggestion/schema/core/CoreSchemaVersion;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CoreSchemaVersion;->INSTANCE:Lcom/samsung/android/sdk/aisuggestion/schema/core/CoreSchemaVersion;

    sget-object v0, Lcom/samsung/android/sdk/aisuggestion/BuildConfig;->CORE_SCHEMA_VERSION:Ljava/lang/Long;

    const-string v1, "CORE_SCHEMA_VERSION"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CoreSchemaVersion;->CURRENT_VERSION:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCURRENT_VERSION()J
    .locals 2

    sget-wide v0, Lcom/samsung/android/sdk/aisuggestion/schema/core/CoreSchemaVersion;->CURRENT_VERSION:J

    return-wide v0
.end method

.method public static synthetic getCURRENT_VERSION$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method
