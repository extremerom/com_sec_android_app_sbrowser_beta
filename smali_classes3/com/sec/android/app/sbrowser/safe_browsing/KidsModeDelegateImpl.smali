.class public final Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/parental_control/KidsModeDelegate;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u000bR\u001b\u0010\u0011\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;",
        "Lcom/sec/android/app/sbrowser/parental_control/KidsModeDelegate;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "",
        "url",
        "",
        "isExplicitSite",
        "(Ljava/lang/String;)Z",
        "Landroid/content/Context;",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;",
        "repository$delegate",
        "Ldb/f;",
        "getRepository",
        "()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;",
        "repository",
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


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final repository$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;->context:Landroid/content/Context;

    new-instance p1, Lcom/sec/android/app/sbrowser/safe_browsing/a;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Lcom/sec/android/app/sbrowser/safe_browsing/a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;->repository$delegate:Ldb/f;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;->repository_delegate$lambda$0(Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRepository(Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;->getRepository()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    move-result-object p0

    return-object p0
.end method

.method private final getRepository()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;->repository$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    return-object p0
.end method

.method private static final repository_delegate$lambda$0(Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;
    .locals 10

    sget-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->Companion:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$Companion;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;->context:Landroid/content/Context;

    const/16 v8, 0x7e

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v9}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$Companion;->getInstance$default(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$Companion;Landroid/content/Context;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;LNc/x;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public isExplicitSite(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl$isExplicitSite$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl$isExplicitSite$1;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;Ljava/lang/String;Lib/c;)V

    sget-object p0, Lib/i;->a:Lib/i;

    invoke-static {p0, v0}, LNc/E;->D(Lib/h;Lsb/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
