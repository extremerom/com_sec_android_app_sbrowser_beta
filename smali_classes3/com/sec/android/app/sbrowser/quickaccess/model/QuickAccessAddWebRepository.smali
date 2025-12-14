.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessAddWebRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessAddWebRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0013\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\nR\u001c\u0010\r\u001a\n \u000c*\u0004\u0018\u00010\u000b0\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessAddWebRepository;",
        "",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "LQc/h;",
        "",
        "isUrlSuggestionEnabled",
        "()LQc/h;",
        "Landroid/content/Context;",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "sharedPreference",
        "Landroid/content/SharedPreferences;",
        "Companion",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessAddWebRepository$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sharedPreference:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessAddWebRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessAddWebRepository$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessAddWebRepository;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessAddWebRepository$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessAddWebRepository;->$stable:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessAddWebRepository;->context:Landroid/content/Context;

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessAddWebRepository;->sharedPreference:Landroid/content/SharedPreferences;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ltb/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessAddWebRepository;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final isUrlSuggestionEnabled()LQc/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/BooleanPreference;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessAddWebRepository;->sharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "sharedPreference"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "search_suggestions"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/livedata/BooleanPreference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/livedata/Preference;->asFlow()LQc/h;

    move-result-object p0

    return-object p0
.end method
