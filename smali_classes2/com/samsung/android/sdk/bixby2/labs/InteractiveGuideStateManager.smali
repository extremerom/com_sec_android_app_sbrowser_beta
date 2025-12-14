.class public final Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager$State;,
        Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0008\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0001\u001eB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\t\u0010\u0008J\r\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u001d\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\r\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\u00148\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001a\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001c\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;",
        "",
        "<init>",
        "()V",
        "Lcom/samsung/android/sdk/bixby2/InteractiveGuideStateListener;",
        "listener",
        "Ldb/r;",
        "addStateListener",
        "(Lcom/samsung/android/sdk/bixby2/InteractiveGuideStateListener;)V",
        "removeStateListener",
        "clearListener",
        "Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager$State;",
        "newState",
        "",
        "timeToLive",
        "updateCurrentState",
        "(Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager$State;J)V",
        "",
        "isInteractiveGuideRunning",
        "()Z",
        "",
        "TAG",
        "Ljava/lang/String;",
        "",
        "listenerList",
        "Ljava/util/List;",
        "currentState",
        "Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager$State;",
        "lastTimeStamp",
        "J",
        "State",
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
.field public static final INSTANCE:Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "InteractiveGuideStateManager"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile currentState:Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager$State;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile lastTimeStamp:J

.field private static final listenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/bixby2/InteractiveGuideStateListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile timeToLive:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;->INSTANCE:Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;->listenerList:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager$State;->FINISHED:Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager$State;

    sput-object v0, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;->currentState:Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager$State;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addStateListener(Lcom/samsung/android/sdk/bixby2/InteractiveGuideStateListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/sdk/bixby2/InteractiveGuideStateListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "listener"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;->listenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final clearListener()V
    .locals 0

    sget-object p0, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;->listenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final isInteractiveGuideRunning()Z
    .locals 6

    sget-object p0, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;->currentState:Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager$State;

    sget-object v0, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;->lastTimeStamp:J

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;->timeToLive:J

    cmp-long p0, v2, v4

    if-gtz p0, :cond_2

    move v0, v1

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    sget-object p0, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager$State;->FINISHED:Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager$State;

    sput-object p0, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;->currentState:Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager$State;

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "isInteractiveGuideRunning : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " state : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;->currentState:Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager$State;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "InteractiveGuideStateManager"

    invoke-static {v1, p0}, Lcom/samsung/android/sdk/bixby2/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final removeStateListener(Lcom/samsung/android/sdk/bixby2/InteractiveGuideStateListener;)V
    .locals 0
    .param p1    # Lcom/samsung/android/sdk/bixby2/InteractiveGuideStateListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "listener"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;->listenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateCurrentState(Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager$State;J)V
    .locals 2
    .param p1    # Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "newState"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "updateCurrentState : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;->currentState:Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager$State;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", timeToLive["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "InteractiveGuideStateManager"

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/bixby2/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;->currentState:Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager$State;

    sput-object p1, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;->currentState:Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager$State;

    sget-object v0, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p2, 0x2

    if-eq v0, p2, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 p2, 0x0

    sput-wide p2, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;->timeToLive:J

    sput-wide p2, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;->lastTimeStamp:J

    if-eq p0, p1, :cond_2

    sget-object p0, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;->listenerList:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/bixby2/InteractiveGuideStateListener;

    invoke-interface {p1}, Lcom/samsung/android/sdk/bixby2/InteractiveGuideStateListener;->onFinished()V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;->lastTimeStamp:J

    sput-wide p2, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;->timeToLive:J

    if-eq p0, p1, :cond_2

    sget-object p0, Lcom/samsung/android/sdk/bixby2/labs/InteractiveGuideStateManager;->listenerList:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/bixby2/InteractiveGuideStateListener;

    invoke-interface {p1}, Lcom/samsung/android/sdk/bixby2/InteractiveGuideStateListener;->onStarted()V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
