.class public final Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000k\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001)\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0006\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0082@\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0011J\'\u0010\u0018\u001a\u00020\u000f2\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00162\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\'\u0010\u001a\u001a\u00020\u000f2\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00162\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0019J\u0019\u0010\u001b\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\r\u0010!\u001a\u00020 \u00a2\u0006\u0004\u0008!\u0010\u0003J\u001f\u0010$\u001a\u00020\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010#\u001a\u00020\"\u00a2\u0006\u0004\u0008$\u0010%R\u0014\u0010\'\u001a\u00020&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0014\u0010*\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0014\u0010/\u001a\u00020,8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010.R\u0014\u00103\u001a\u0002008BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u00102\u00a8\u00064"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "kotlin.jvm.PlatformType",
        "getContext",
        "()Landroid/content/Context;",
        "Ldb/m;",
        "Landroid/os/Bundle;",
        "fetchParentalControlData-IoAF18A",
        "(Lib/c;)Ljava/lang/Object;",
        "fetchParentalControlData",
        "",
        "url",
        "",
        "isUrlInAllowedList",
        "(Ljava/lang/String;)Z",
        "hasEqualsItemInAllowedList",
        "isUrlInExplicitList",
        "isUrlInBlockedList",
        "hasEqualsItemInBlockedList",
        "",
        "list",
        "hasEqualsItemInList",
        "(Ljava/util/List;Ljava/lang/String;)Z",
        "isUrlInList",
        "getHost",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "LNc/z;",
        "exceptionHandler",
        "()LNc/z;",
        "Ldb/r;",
        "update",
        "",
        "protectLevel",
        "isUrlBlocked",
        "(Ljava/lang/String;I)Z",
        "Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;",
        "parentalControlData",
        "Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;",
        "com/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$observer$1",
        "observer",
        "Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$observer$1;",
        "Lcom/sec/android/app/sbrowser/parental_control/KidsModeDelegate;",
        "getKidsModeDelegate",
        "()Lcom/sec/android/app/sbrowser/parental_control/KidsModeDelegate;",
        "kidsModeDelegate",
        "Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager;",
        "getObserverManager",
        "()Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager;",
        "observerManager",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final observer:Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$observer$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final parentalControlData:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->INSTANCE:Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;

    new-instance v1, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;-><init>()V

    sput-object v1, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->parentalControlData:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;

    new-instance v1, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$observer$1;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$observer$1;-><init>()V

    sput-object v1, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->observer:Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$observer$1;

    const-string v1, "ContentRestrictRepository"

    const-string v2, "init()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDataSource;->INSTANCE:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDataSource;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDataSource;->isParentalCareInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->getObserverManager()Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager;->register()V

    :cond_0
    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$fetchParentalControlData-IoAF18A(Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->fetchParentalControlData-IoAF18A(Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getParentalControlData$p()Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->parentalControlData:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;

    return-object v0
.end method

.method private final exceptionHandler()LNc/z;
    .locals 1

    sget-object p0, LNc/y;->a:LNc/y;

    new-instance v0, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$exceptionHandler$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$exceptionHandler$$inlined$CoroutineExceptionHandler$1;-><init>(LNc/y;)V

    return-object v0
.end method

.method private final fetchParentalControlData-IoAF18A(Lib/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/c<",
            "-",
            "Ldb/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$fetchParentalControlData$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$fetchParentalControlData$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$fetchParentalControlData$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$fetchParentalControlData$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$fetchParentalControlData$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$fetchParentalControlData$1;-><init>(Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;Lib/c;)V

    :goto_0
    iget-object p0, v0, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$fetchParentalControlData$1;->result:Ljava/lang/Object;

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, v0, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$fetchParentalControlData$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p0}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p0}, LG5/A2;->f(Ljava/lang/Object;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$fetchParentalControlData$2;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$fetchParentalControlData$2;-><init>(Lib/c;)V

    iput v2, v0, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$fetchParentalControlData$1;->label:I

    invoke-static {p0, v0}, LNc/E;->j(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_3

    return-object p1

    :cond_3
    :goto_1
    check-cast p0, Ldb/m;

    iget-object p0, p0, Ldb/m;->a:Ljava/lang/Object;

    return-object p0
.end method

.method private final getContext()Landroid/content/Context;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private final getHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getKidsModeDelegate()Lcom/sec/android/app/sbrowser/parental_control/KidsModeDelegate;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "getApplicationContext(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/parental_control/KidsModeDelegateFactory;->createKidsModeDelegate(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;

    move-result-object p0

    return-object p0
.end method

.method private final getObserverManager()Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "getContext(...)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->observer:Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$observer$1;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlContentObserverManager;-><init>(Landroid/content/Context;Landroid/database/ContentObserver;)V

    return-object v0
.end method

.method private final hasEqualsItemInAllowedList(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->parentalControlData:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->getAllowedList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->hasEqualsItemInList(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    const-string p1, "hasEqualsItemInAllowedList: "

    const-string v0, "ContentRestrictRepository"

    invoke-static {p1, v0, p0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method private final hasEqualsItemInBlockedList(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->parentalControlData:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->getBlockedList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->hasEqualsItemInList(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    const-string p1, "hasEqualsItemInBlockedList: "

    const-string v0, "ContentRestrictRepository"

    invoke-static {p1, v0, p0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method private final hasEqualsItemInList(Ljava/util/List;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "toLowerCase(...)"

    const-string v0, "getDefault(...)"

    if-eqz p0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method private final isUrlInAllowedList(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->parentalControlData:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->getAllowedList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->isUrlInList(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    const-string p1, "isInAllowedList: "

    const-string v0, "ContentRestrictRepository"

    invoke-static {p1, v0, p0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method private final isUrlInBlockedList(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->parentalControlData:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->getBlockedList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->isUrlInList(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    const-string p1, "isInBlockedList: "

    const-string v0, "ContentRestrictRepository"

    invoke-static {p1, v0, p0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method private final isUrlInExplicitList(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->getKidsModeDelegate()Lcom/sec/android/app/sbrowser/parental_control/KidsModeDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/KidsModeDelegate;->isExplicitSite(Ljava/lang/String;)Z

    move-result p0

    const-string p1, "isInExplicitList: "

    const-string v0, "ContentRestrictRepository"

    invoke-static {p1, v0, p0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method private final isUrlInList(Ljava/util/List;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "toLowerCase(...)"

    const-string v0, "getDefault(...)"

    if-eqz p0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2}, LKc/k;->q(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    return v3

    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method public final isUrlBlocked(Ljava/lang/String;I)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "ContentRestrictRepository"

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_7

    const/4 v2, 0x1

    if-eq p2, v2, :cond_3

    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    return v1

    :cond_1
    const-string p2, "isLoadingBlocked Protect Level: BLOCK_ALL"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->hasEqualsItemInBlockedList(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v2

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->isUrlInAllowedList(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_3
    const-string p2, "isLoadingBlocked Protect Level: BLOCK_EXPLICIT"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->hasEqualsItemInAllowedList(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    return v1

    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->isUrlInBlockedList(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->isUrlInExplicitList(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1

    :cond_7
    const-string p2, "isLoadingBlocked Protect Level: ALLOW_ALL"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->hasEqualsItemInAllowedList(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    return v1

    :cond_8
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->isUrlInBlockedList(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_9
    :goto_0
    const-string p0, "isLoadingBlocked null url, return false"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final update()V
    .locals 3

    sget-object v0, LNc/N;->c:LWc/e;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->exceptionHandler()LNc/z;

    move-result-object p0

    invoke-virtual {v0, p0}, Lib/a;->plus(Lib/h;)Lib/h;

    move-result-object p0

    invoke-static {p0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$update$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$update$1;-><init>(Lib/c;)V

    const/4 v2, 0x3

    invoke-static {p0, v1, v1, v0, v2}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method
