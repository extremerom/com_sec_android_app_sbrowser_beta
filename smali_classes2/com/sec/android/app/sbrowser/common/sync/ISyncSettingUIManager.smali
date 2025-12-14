.class public interface abstract Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;
    }
.end annotation


# virtual methods
.method public abstract checkSyncProfile()I
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public getContentSync(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initRPCSetting(Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;)V
    .locals 0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;->onCompleted()V

    return-void
.end method

.method public loadPerformancePolicy()V
    .locals 0

    return-void
.end method

.method public requestLocalSync(Landroid/net/Uri;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public requestLocalSync(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public requestLocalSync(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public requestSync(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract showSetting(Landroid/app/Activity;)V
.end method

.method public abstract switchOnOff(Z)Z
.end method
