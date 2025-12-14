.class public final Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreModelFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreModelFactory;",
        "",
        "<init>",
        "()V",
        "createRestoreModel",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModel;",
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
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreModelFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreModelFactory;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreModelFactory;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreModelFactory;->INSTANCE:Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreModelFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createRestoreModel(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModel;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRestoreModelImpl;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
