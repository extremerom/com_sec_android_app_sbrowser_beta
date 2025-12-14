.class public final Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager$Companion;,
        Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager$ObserverStatus;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00142\u00020\u0001:\u0002\u0014\u0015B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager;",
        "",
        "Landroid/content/Context;",
        "context",
        "Landroid/database/ContentObserver;",
        "observer",
        "<init>",
        "(Landroid/content/Context;Landroid/database/ContentObserver;)V",
        "Ldb/r;",
        "register",
        "()V",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "Landroid/database/ContentObserver;",
        "getObserver",
        "()Landroid/database/ContentObserver;",
        "Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager$ObserverStatus;",
        "observerState",
        "Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager$ObserverStatus;",
        "Companion",
        "ObserverStatus",
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


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final observer:Landroid/database/ContentObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private observerState:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager$ObserverStatus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager;->Companion:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/database/ContentObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager;->observer:Landroid/database/ContentObserver;

    sget-object p1, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager$ObserverStatus$Unregistered;->INSTANCE:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager$ObserverStatus$Unregistered;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager;->observerState:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager$ObserverStatus;

    return-void
.end method


# virtual methods
.method public final register()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager;->observerState:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager$ObserverStatus;

    sget-object v1, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager$ObserverStatus$Registered;->INSTANCE:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager$ObserverStatus$Registered;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "ParentalControlDataObserver"

    if-eqz v2, :cond_0

    const-string p0, "observer already registered"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v2, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager$ObserverStatus$Unregistered;->INSTANCE:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager$ObserverStatus$Unregistered;

    invoke-static {v0, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "register"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://com.samsung.android.app.parentalcare.provider/ caresettings"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager;->observer:Landroid/database/ContentObserver;

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager;->observerState:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager$ObserverStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    instance-of v0, p0, Ljava/lang/SecurityException;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    throw p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "register failed "

    invoke-static {v0, p0, v3}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
