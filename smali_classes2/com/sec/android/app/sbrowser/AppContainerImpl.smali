.class public final Lcom/sec/android/app/sbrowser/AppContainerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/AppContainer;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/AppContainerImpl;",
        "Lcom/sec/android/app/sbrowser/common/AppContainer;",
        "navigationContainer",
        "Lcom/sec/android/app/sbrowser/common/di/NavigationContainer;",
        "viewFactoryContainer",
        "Lcom/sec/android/app/sbrowser/common/di/ViewFactoryContainer;",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/common/di/NavigationContainer;Lcom/sec/android/app/sbrowser/common/di/ViewFactoryContainer;)V",
        "getNavigationContainer",
        "()Lcom/sec/android/app/sbrowser/common/di/NavigationContainer;",
        "getViewFactoryContainer",
        "()Lcom/sec/android/app/sbrowser/common/di/ViewFactoryContainer;",
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
.field private final navigationContainer:Lcom/sec/android/app/sbrowser/common/di/NavigationContainer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewFactoryContainer:Lcom/sec/android/app/sbrowser/common/di/ViewFactoryContainer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/di/NavigationContainer;Lcom/sec/android/app/sbrowser/common/di/ViewFactoryContainer;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/common/di/NavigationContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/common/di/ViewFactoryContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "navigationContainer"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewFactoryContainer"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/AppContainerImpl;->navigationContainer:Lcom/sec/android/app/sbrowser/common/di/NavigationContainer;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/AppContainerImpl;->viewFactoryContainer:Lcom/sec/android/app/sbrowser/common/di/ViewFactoryContainer;

    return-void
.end method


# virtual methods
.method public getNavigationContainer()Lcom/sec/android/app/sbrowser/common/di/NavigationContainer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/AppContainerImpl;->navigationContainer:Lcom/sec/android/app/sbrowser/common/di/NavigationContainer;

    return-object p0
.end method

.method public getViewFactoryContainer()Lcom/sec/android/app/sbrowser/common/di/ViewFactoryContainer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/AppContainerImpl;->viewFactoryContainer:Lcom/sec/android/app/sbrowser/common/di/ViewFactoryContainer;

    return-object p0
.end method
