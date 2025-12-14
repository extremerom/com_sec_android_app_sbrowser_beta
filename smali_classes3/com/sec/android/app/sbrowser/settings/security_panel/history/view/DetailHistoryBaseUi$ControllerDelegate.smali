.class public interface abstract Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ControllerDelegate"
.end annotation


# virtual methods
.method public abstract deleteItems(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getConfirmCancelID()Ljava/lang/String;
.end method

.method public abstract getConfirmOkID()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getItemClickID()Ljava/lang/String;
.end method

.method public abstract getScreenID()Ljava/lang/String;
.end method

.method public abstract getSecretModeSummary()Ljava/lang/String;
.end method

.method public abstract getSortMode()I
.end method

.method public abstract getSummary()Ljava/lang/String;
.end method

.method public abstract hasNoData()Z
.end method

.method public abstract satMoreClick()V
.end method

.method public abstract setBlockStatus(Z)V
.end method

.method public abstract setPATStatus(Z)V
.end method

.method public abstract setSatLevel(I)V
.end method

.method public abstract setScreenID(Ljava/lang/String;)V
.end method

.method public abstract sortBy(I)V
.end method
