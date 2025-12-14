.class public final Lcom/sec/android/app/sbrowser/parental_control/RemoteConsentManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/parental_control/RemoteConsentManager;",
        "",
        "<init>",
        "()V",
        "Landroidx/fragment/app/f0;",
        "fragmentManager",
        "Ldb/r;",
        "showRemoteConsentDialog",
        "(Landroidx/fragment/app/f0;)V",
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
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/parental_control/RemoteConsentManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/parental_control/RemoteConsentManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/parental_control/RemoteConsentManager;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/parental_control/RemoteConsentManager;->INSTANCE:Lcom/sec/android/app/sbrowser/parental_control/RemoteConsentManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final showRemoteConsentDialog(Landroidx/fragment/app/f0;)V
    .locals 2
    .param p0    # Landroidx/fragment/app/f0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "fragmentManager"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/u;->setCancelable(Z)V

    const-string v1, "ParentalControlDialog"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/u;->show(Landroidx/fragment/app/f0;Ljava/lang/String;)V

    return-void
.end method
