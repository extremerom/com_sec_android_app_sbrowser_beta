.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$Companion;",
        "",
        "<init>",
        "()V",
        "LOG_TAG",
        "",
        "moreButtonItem",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;",
        "getInstance",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;",
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

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$Companion;->getInstance$lambda$0()Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;

    move-result-object v0

    return-object v0
.end method

.method private static final getInstance$lambda$0()Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;
    .locals 7

    new-instance v6, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "getApplicationContext(...)"

    invoke-static {v1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;-><init>()V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;LNc/x;ILtb/f;)V

    return-object v6
.end method


# virtual methods
.method public final getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/model/a;

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/a;-><init>(I)V

    const-class v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getOrCreate(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;

    return-object p0
.end method
