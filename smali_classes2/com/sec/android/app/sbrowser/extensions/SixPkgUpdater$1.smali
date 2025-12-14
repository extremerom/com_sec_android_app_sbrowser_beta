.class Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 13

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const-string v3, "SixPkgUpdater"

    if-eq p1, v2, :cond_3

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    const-string p0, "mBgHandler.handleMessage - Incorrect msg"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->n()I

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "handleMessage - uninst. Installer busy"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->d(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->o(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->uninstallCrx(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v4, "handleMessage - Uninstall failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->o(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->n()I

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "handleMessage - inst. Installer busy"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->f(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->o(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->m(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    const-string v5, "handleMessage - Install failed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->o(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;

    move-result-object v6

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->b(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;)Landroid/content/Context;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isDevExt()Z

    move-result v9

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isInstalledInNative(Ljava/lang/String;)Z

    move-result v10

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->handleInstallFailed(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->c(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;)Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$CrxInstallCallback;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->c(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;)Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$CrxInstallCallback;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, v4}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$CrxInstallCallback;->onCrxInstallFailed(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    :goto_2
    return v1
.end method
