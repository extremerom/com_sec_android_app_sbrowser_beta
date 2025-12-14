.class Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$CrxChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->initializeInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCrxInstallFailed(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->g(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    return-void
.end method

.method public onCrxInstalled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->h(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public onCrxUninstalled(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->i(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2, p2}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->reloadPreloadAction(Ljava/lang/String;ZZZ)V

    :cond_0
    return-void
.end method
