.class public final Lcom/sec/android/app/sbrowser/common/constants/quickaccess/QuickAccessDatabaseConstants$Info;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/constants/quickaccess/QuickAccessDatabaseConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Info"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/constants/quickaccess/QuickAccessDatabaseConstants$Info;",
        "",
        "<init>",
        "()V",
        "URI",
        "Landroid/net/Uri;",
        "getURI",
        "()Landroid/net/Uri;",
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

.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/common/constants/quickaccess/QuickAccessDatabaseConstants$Info;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URI:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/constants/quickaccess/QuickAccessDatabaseConstants$Info;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/constants/quickaccess/QuickAccessDatabaseConstants$Info;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/quickaccess/QuickAccessDatabaseConstants$Info;->INSTANCE:Lcom/sec/android/app/sbrowser/common/constants/quickaccess/QuickAccessDatabaseConstants$Info;

    const-string v0, "content://quickaccess.db"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "parse(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/quickaccess/QuickAccessDatabaseConstants$Info;->URI:Landroid/net/Uri;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/common/constants/quickaccess/QuickAccessDatabaseConstants$Info;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getURI()Landroid/net/Uri;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/quickaccess/QuickAccessDatabaseConstants$Info;->URI:Landroid/net/Uri;

    return-object p0
.end method
