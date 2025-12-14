.class final Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune$FEATURE_SUPPORT_AI_BRIEF_FOR_UT$2;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltb/m;",
        "Lsb/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune$FEATURE_SUPPORT_AI_BRIEF_FOR_UT$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune$FEATURE_SUPPORT_AI_BRIEF_FOR_UT$2;

    invoke-direct {v0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune$FEATURE_SUPPORT_AI_BRIEF_FOR_UT$2;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune$FEATURE_SUPPORT_AI_BRIEF_FOR_UT$2;->INSTANCE:Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune$FEATURE_SUPPORT_AI_BRIEF_FOR_UT$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune;->INSTANCE:Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune;

    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_AI_BRIEF_FOR_UT"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ldb/m;->b(Ljava/io/Serializable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune$FEATURE_SUPPORT_AI_BRIEF_FOR_UT$2;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
