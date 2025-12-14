.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nR\u0014\u0010\u000c\u001a\u00020\u000b8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$Companion;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "LNc/x;",
        "coroutineDispatcher",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;",
        "getInstance",
        "(Landroid/content/Context;LNc/x;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;",
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

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;LNc/x;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$Companion;->getInstance$lambda$1(Landroid/content/Context;LNc/x;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance$default(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$Companion;Landroid/content/Context;LNc/x;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, LNc/N;->c:LWc/e;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$Companion;->getInstance(Landroid/content/Context;LNc/x;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;

    move-result-object p0

    return-object p0
.end method

.method private static final getInstance$lambda$1(Landroid/content/Context;LNc/x;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;
    .locals 9

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;

    invoke-direct {v2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-direct {v3, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;

    invoke-direct {v4, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;LNc/x;Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;ILtb/f;)V

    return-object p0
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;LNc/x;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LNc/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "coroutineDispatcher"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/model/G;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/G;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-class p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "getOrCreate(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;

    return-object p0
.end method
