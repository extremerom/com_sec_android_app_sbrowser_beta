.class public final Lcom/sec/android/app/sbrowser/ViewFactoryContainerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/di/ViewFactoryContainer;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/ViewFactoryContainerImpl;",
        "Lcom/sec/android/app/sbrowser/common/di/ViewFactoryContainer;",
        "<init>",
        "()V",
        "quickAccessMainLayoutFactory",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutFactoryImpl;",
        "getQuickAccessMainLayoutFactory",
        "Lcom/sec/android/app/sbrowser/common/di/QuickAccessMainViewFactory;",
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
.field private final quickAccessMainLayoutFactory:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutFactoryImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutFactoryImpl;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutFactoryImpl;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/ViewFactoryContainerImpl;->quickAccessMainLayoutFactory:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutFactoryImpl;

    return-void
.end method


# virtual methods
.method public getQuickAccessMainLayoutFactory()Lcom/sec/android/app/sbrowser/common/di/QuickAccessMainViewFactory;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/ViewFactoryContainerImpl;->quickAccessMainLayoutFactory:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutFactoryImpl;

    return-object p0
.end method
