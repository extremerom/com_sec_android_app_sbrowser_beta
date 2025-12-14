.class public final Lcom/sec/android/app/sbrowser/NavigationContainerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/di/NavigationContainer;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/NavigationContainerImpl;",
        "Lcom/sec/android/app/sbrowser/common/di/NavigationContainer;",
        "<init>",
        "()V",
        "getWallpaperOptionNavigator",
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionNavigatorImpl;",
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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getWallpaperOptionNavigator()Lcom/sec/android/app/sbrowser/common/di/WallpaperOptionNavigator;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/NavigationContainerImpl;->getWallpaperOptionNavigator()Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionNavigatorImpl;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperOptionNavigator()Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionNavigatorImpl;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionNavigatorImpl;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionNavigatorImpl;-><init>()V

    return-object p0
.end method
