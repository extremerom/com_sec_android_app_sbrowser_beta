.class public final Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u0007\u00a2\u0006\u0004\u0008\t\u0010\nR\u0014\u0010\u000c\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$Companion;",
        "",
        "<init>",
        "()V",
        "Landroid/app/Application;",
        "application",
        "LNc/x;",
        "coroutineDispatcher",
        "Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;",
        "getInstance",
        "(Landroid/app/Application;LNc/x;)Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;",
        "",
        "LOG_TAG",
        "Ljava/lang/String;",
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

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/app/Application;LNc/x;)Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$Companion;->getInstance$lambda$0(Landroid/app/Application;LNc/x;)Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance$default(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$Companion;Landroid/app/Application;LNc/x;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, LNc/N;->c:LWc/e;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$Companion;->getInstance(Landroid/app/Application;LNc/x;)Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    move-result-object p0

    return-object p0
.end method

.method private static final getInstance$lambda$0(Landroid/app/Application;LNc/x;)Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;-><init>(Landroid/app/Application;LNc/x;Ltb/f;)V

    return-object v0
.end method


# virtual methods
.method public final getInstance(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;
    .locals 2
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "application"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$Companion;->getInstance$default(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$Companion;Landroid/app/Application;LNc/x;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    move-result-object p0

    return-object p0
.end method

.method public final getInstance(Landroid/app/Application;LNc/x;)Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LNc/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "application"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "coroutineDispatcher"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, LHa/a;

    const/16 v0, 0x1b

    invoke-direct {p0, v0, p1, p2}, LHa/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-class p1, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "getOrCreate(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;

    return-object p0
.end method
