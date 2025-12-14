.class public final Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/bixby2/internalaction/InternalActionHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\rH\u0016J0\u0010\u0011\u001a\u0002H\u0012\"\u0010\u0008\u0000\u0010\u0012\u0018\u0001*\u0008\u0012\u0004\u0012\u0002H\u00120\u00132\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u0002H\u0012H\u0082\u0008\u00a2\u0006\u0002\u0010\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\u0006X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateHandler;",
        "Lcom/samsung/android/sdk/bixby2/internalaction/InternalActionHandler;",
        "()V",
        "DEFAULT_TIME_TO_LIVE",
        "",
        "KEY_RUNNING_STATE",
        "",
        "KEY_TIME_TO_LIVE",
        "TAG",
        "actionId",
        "getActionId",
        "()Ljava/lang/String;",
        "executeAction",
        "Landroid/os/Bundle;",
        "context",
        "Landroid/content/Context;",
        "params",
        "safeValueOf",
        "T",
        "",
        "type",
        "default",
        "(Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;",
        "bixbyappsdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field private static final DEFAULT_TIME_TO_LIVE:J = 0xea60L

.field public static final INSTANCE:Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_RUNNING_STATE:Ljava/lang/String; = "runningState"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_TIME_TO_LIVE:Ljava/lang/String; = "timeToLive"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "InteractiveGuideStateHandler"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final actionId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateHandler;

    invoke-direct {v0}, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateHandler;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateHandler;->INSTANCE:Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateHandler;

    const-string v0, "bixby_updateUserGuideState"

    sput-object v0, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateHandler;->actionId:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final safeValueOf(Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    :try_start_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This function has a reified type parameter and thus can only be inlined at compilation time, not called directly."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p2
.end method


# virtual methods
.method public executeAction(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p2, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;->INSTANCE:Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;

    sget-object p1, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager$State;->FINISHED:Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager$State;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "runningState"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-class v1, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager$State;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :catch_0
    check-cast p1, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager$State;

    const-string v0, "timeToLive"

    const-wide/32 v1, 0xea60

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;->updateCurrentState(Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager$State;J)V

    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public getActionId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateHandler;->actionId:Ljava/lang/String;

    return-object p0
.end method
