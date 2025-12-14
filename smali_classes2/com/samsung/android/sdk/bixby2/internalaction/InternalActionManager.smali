.class public final Lcom/samsung/android/sdk/bixby2/internalaction/InternalActionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0008J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\u0005R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/samsung/android/sdk/bixby2/internalaction/InternalActionManager;",
        "",
        "()V",
        "labsActions",
        "",
        "",
        "Lcom/samsung/android/sdk/bixby2/internalaction/InternalActionHandler;",
        "executeAction",
        "Landroid/os/Bundle;",
        "action",
        "context",
        "Landroid/content/Context;",
        "params",
        "isInternalAction",
        "",
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


# static fields
.field public static final INSTANCE:Lcom/samsung/android/sdk/bixby2/internalaction/InternalActionManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final labsActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/bixby2/internalaction/InternalActionHandler;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/sdk/bixby2/internalaction/InternalActionManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/bixby2/internalaction/InternalActionManager;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/bixby2/internalaction/InternalActionManager;->INSTANCE:Lcom/samsung/android/sdk/bixby2/internalaction/InternalActionManager;

    sget-object v0, Lcom/samsung/android/sdk/bixby2/labs/ScreenLayoutHandler;->INSTANCE:Lcom/samsung/android/sdk/bixby2/labs/ScreenLayoutHandler;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby2/labs/ScreenLayoutHandler;->getActionId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ldb/j;

    invoke-direct {v2, v1, v0}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideInAppHandler;->INSTANCE:Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideInAppHandler;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideInAppHandler;->getActionId()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ldb/j;

    invoke-direct {v3, v1, v0}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateHandler;->INSTANCE:Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateHandler;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateHandler;->getActionId()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ldb/j;

    invoke-direct {v4, v1, v0}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v3, v4}, [Ldb/j;

    move-result-object v0

    invoke-static {v0}, Lfb/B;->k([Ldb/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/bixby2/internalaction/InternalActionManager;->labsActions:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final executeAction(Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "action"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/bixby2/internalaction/InternalActionManager;->labsActions:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/bixby2/internalaction/InternalActionHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2, p3}, Lcom/samsung/android/sdk/bixby2/internalaction/InternalActionHandler;->executeAction(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :cond_1
    return-object p0
.end method

.method public final isInternalAction(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "action"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/bixby2/internalaction/InternalActionManager;->labsActions:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
