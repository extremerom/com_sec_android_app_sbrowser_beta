.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "SUGGESTION_ID",
        "DOCUMENT_TTL_DAYS",
        "",
        "HIGHLIGHT_BRACE",
        "LAUNCH_INDEX",
        "",
        "RECOMMEND_INDEX",
        "hasCapabilityUsage",
        "",
        "context",
        "Landroid/content/Context;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasCapabilityUsage(Landroid/content/Context;)Z
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "context"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/aisuggestion/capability/ContextualInsightCapabilityProvider;->getCapability(Landroid/content/Context;)Lcom/samsung/android/sdk/aisuggestion/capability/ContextualInsightCapability;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/sdk/aisuggestion/capability/ContextualInsightCapability;->isAvailable()Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "si__AiBriefHandler"

    if-nez p1, :cond_0

    const-string p0, "suggestion-related configuration is not activated"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-class p1, Lcom/samsung/android/sdk/aisuggestion/schema/sbrowser/ReadArticlesDataDocument;

    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/sdk/aisuggestion/capability/ContextualInsightCapability;->isSchemaTypeAvailable([Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ReadArticlesDataDocument schema is not available"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
