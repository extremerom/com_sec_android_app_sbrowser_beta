.class public final Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getCrossAppActionBookmarkModel$model$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->getCrossAppActionBookmarkModel(Lz4/a;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/CrossAppActionBookmarkModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getCrossAppActionBookmarkModel$model$1",
        "Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;",
        "isActivityDestroyed",
        "",
        "getHandler",
        "Landroid/os/Handler;",
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
.method public getHandler()Landroid/os/Handler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isActivityDestroyed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
