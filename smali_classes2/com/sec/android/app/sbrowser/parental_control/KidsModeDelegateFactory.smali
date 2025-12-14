.class public final Lcom/sec/android/app/sbrowser/parental_control/KidsModeDelegateFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/parental_control/KidsModeDelegateFactory;",
        "",
        "<init>",
        "()V",
        "createKidsModeDelegate",
        "Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;",
        "context",
        "Landroid/content/Context;",
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
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/parental_control/KidsModeDelegateFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/parental_control/KidsModeDelegateFactory;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/parental_control/KidsModeDelegateFactory;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/parental_control/KidsModeDelegateFactory;->INSTANCE:Lcom/sec/android/app/sbrowser/parental_control/KidsModeDelegateFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createKidsModeDelegate(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
