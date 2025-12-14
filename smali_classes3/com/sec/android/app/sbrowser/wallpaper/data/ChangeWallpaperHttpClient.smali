.class public final Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0013\u001a\u00020\u00128\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperHttpClient;",
        "",
        "<init>",
        "()V",
        "",
        "name",
        "value",
        "Lhd/C;",
        "createHeaderInterceptor",
        "(Ljava/lang/String;Ljava/lang/String;)Lhd/C;",
        "Lvd/c;",
        "createNetworkInterceptor",
        "()Lvd/c;",
        "",
        "isHeaderTypeImage",
        "Lhd/I;",
        "createHttpClient",
        "(Z)Lhd/I;",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperProfile;",
        "profile",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperProfile;",
        "getProfile",
        "()Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperProfile;",
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
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperHttpClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final profile:Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperProfile;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperHttpClient;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperHttpClient;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperHttpClient;->INSTANCE:Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperHttpClient;

    sget-object v0, Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperProfile;->Companion:Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperProfile$Companion;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getChangeWallpaperServerProfile()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getChangeWallpaperServerProfile(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperProfile$Companion;->fromValue(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperProfile;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperHttpClient;->profile:Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperProfile;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperHttpClient;->createNetworkInterceptor$lambda$1(Ljava/lang/String;)V

    return-void
.end method

.method private final createHeaderInterceptor(Ljava/lang/String;Ljava/lang/String;)Lhd/C;
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperHttpClient$createHeaderInterceptor$$inlined$invoke$1;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperHttpClient$createHeaderInterceptor$$inlined$invoke$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private final createNetworkInterceptor()Lvd/c;
    .locals 3

    sget-object p0, Lvd/a;->BASIC:Lvd/a;

    new-instance v0, Lvd/c;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/debug/o;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/settings/debug/o;-><init>(I)V

    invoke-direct {v0, v1}, Lvd/c;-><init>(Lvd/b;)V

    invoke-virtual {v0, p0}, Lvd/c;->c(Lvd/a;)V

    const-string p0, "x-api-key"

    invoke-virtual {v0, p0}, Lvd/c;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method private static final createNetworkInterceptor$lambda$1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "log"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ChangeWallpaperHttpClient"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final createHttpClient(Z)Lhd/I;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lhd/H;

    invoke-direct {v0}, Lhd/H;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "accept"

    const-string v1, "image/*"

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperHttpClient;->createHeaderInterceptor(Ljava/lang/String;Ljava/lang/String;)Lhd/C;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Content-Type"

    const-string v1, "application/json"

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperHttpClient;->createHeaderInterceptor(Ljava/lang/String;Ljava/lang/String;)Lhd/C;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lhd/H;->a(Lhd/C;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperHttpClient;->createNetworkInterceptor()Lvd/c;

    move-result-object p0

    const-string p1, "interceptor"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, v0, Lhd/H;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2, p0}, Lhd/H;->b(JLjava/util/concurrent/TimeUnit;)V

    const-wide/16 v3, 0x1e

    invoke-virtual {v0, v3, v4, p0}, Lhd/H;->c(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v0, v1, v2, p0}, Lhd/H;->d(JLjava/util/concurrent/TimeUnit;)V

    new-instance p0, Lhd/I;

    invoke-direct {p0, v0}, Lhd/I;-><init>(Lhd/H;)V

    return-object p0
.end method

.method public final getProfile()Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperProfile;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperHttpClient;->profile:Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperProfile;

    return-object p0
.end method
