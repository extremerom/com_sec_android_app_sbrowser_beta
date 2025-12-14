.class public final Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\u000c\u001a\u00020\u00078FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u001b\u0010\u0010\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\t\u001a\u0004\u0008\u000e\u0010\u000fR\u001b\u0010\u0013\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\t\u001a\u0004\u0008\u0012\u0010\u000bR\u001b\u0010\u0016\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\t\u001a\u0004\u0008\u0015\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune;",
        "",
        "<init>",
        "()V",
        "",
        "CONFIG_AI_VERSION_PA",
        "I",
        "",
        "AI_SUGGESTION_AVAILABLE$delegate",
        "Ldb/f;",
        "getAI_SUGGESTION_AVAILABLE",
        "()Z",
        "AI_SUGGESTION_AVAILABLE",
        "FEATURE_CONFIG_AI_VERSION$delegate",
        "getFEATURE_CONFIG_AI_VERSION",
        "()I",
        "FEATURE_CONFIG_AI_VERSION",
        "FEATURE_DISABLE_NATIVE_AI$delegate",
        "getFEATURE_DISABLE_NATIVE_AI",
        "FEATURE_DISABLE_NATIVE_AI",
        "FEATURE_SUPPORT_AI_BRIEF_FOR_UT$delegate",
        "getFEATURE_SUPPORT_AI_BRIEF_FOR_UT",
        "FEATURE_SUPPORT_AI_BRIEF_FOR_UT",
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
.field private static final AI_SUGGESTION_AVAILABLE$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CONFIG_AI_VERSION_PA:I = 0x4f1b

.field private static final FEATURE_CONFIG_AI_VERSION$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FEATURE_DISABLE_NATIVE_AI$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FEATURE_SUPPORT_AI_BRIEF_FOR_UT$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune;

    invoke-direct {v0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune;->INSTANCE:Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune;

    sget-object v0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune$AI_SUGGESTION_AVAILABLE$2;->INSTANCE:Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune$AI_SUGGESTION_AVAILABLE$2;

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune;->AI_SUGGESTION_AVAILABLE$delegate:Ldb/f;

    sget-object v0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune$FEATURE_CONFIG_AI_VERSION$2;->INSTANCE:Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune$FEATURE_CONFIG_AI_VERSION$2;

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune;->FEATURE_CONFIG_AI_VERSION$delegate:Ldb/f;

    sget-object v0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune$FEATURE_DISABLE_NATIVE_AI$2;->INSTANCE:Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune$FEATURE_DISABLE_NATIVE_AI$2;

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune;->FEATURE_DISABLE_NATIVE_AI$delegate:Ldb/f;

    sget-object v0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune$FEATURE_SUPPORT_AI_BRIEF_FOR_UT$2;->INSTANCE:Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune$FEATURE_SUPPORT_AI_BRIEF_FOR_UT$2;

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune;->FEATURE_SUPPORT_AI_BRIEF_FOR_UT$delegate:Ldb/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getFEATURE_CONFIG_AI_VERSION(Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune;->getFEATURE_CONFIG_AI_VERSION()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getFEATURE_DISABLE_NATIVE_AI(Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune;->getFEATURE_DISABLE_NATIVE_AI()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getFEATURE_SUPPORT_AI_BRIEF_FOR_UT(Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune;->getFEATURE_SUPPORT_AI_BRIEF_FOR_UT()Z

    move-result p0

    return p0
.end method

.method private final getFEATURE_CONFIG_AI_VERSION()I
    .locals 0

    sget-object p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune;->FEATURE_CONFIG_AI_VERSION$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getFEATURE_DISABLE_NATIVE_AI()Z
    .locals 0

    sget-object p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune;->FEATURE_DISABLE_NATIVE_AI$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final getFEATURE_SUPPORT_AI_BRIEF_FOR_UT()Z
    .locals 0

    sget-object p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune;->FEATURE_SUPPORT_AI_BRIEF_FOR_UT$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getAI_SUGGESTION_AVAILABLE()Z
    .locals 0

    sget-object p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune;->AI_SUGGESTION_AVAILABLE$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
