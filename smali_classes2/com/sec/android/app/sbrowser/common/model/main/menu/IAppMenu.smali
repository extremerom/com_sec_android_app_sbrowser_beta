.class public interface abstract Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008f\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH&\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u0019\u0010\u0010\u001a\u00020\u00022\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH&\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\tH&\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0018\u0010\u0004J\u0019\u0010\u001b\u001a\u00020\u00022\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H&\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u001d\u0010\u0004J\u0017\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\tH&\u00a2\u0006\u0004\u0008\u001f\u0010\u000c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;",
        "",
        "Ldb/r;",
        "dismissAiOptionPopup",
        "()V",
        "",
        "optionKey",
        "notifyAiOptionStatusChanged",
        "(I)V",
        "",
        "isKeepValue",
        "dismissZoomDialog",
        "(Z)V",
        "launchExtensionsActivity",
        "Landroid/content/Intent;",
        "intent",
        "shareVia",
        "(Landroid/content/Intent;)V",
        "addShortcut",
        "addQuickAccess",
        "dismissToolsDialog",
        "isAddBookmarkAvailable",
        "()Z",
        "showZoomInOutPopup",
        "dismissTextSizeDialog",
        "",
        "startFragment",
        "launchSettingsActivity",
        "(Ljava/lang/String;)V",
        "onNewGuiStateChanged",
        "isBackground",
        "restoreZoomValueIfNeeded",
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


# virtual methods
.method public abstract addQuickAccess()V
.end method

.method public abstract addShortcut()V
.end method

.method public abstract dismissAiOptionPopup()V
.end method

.method public abstract dismissTextSizeDialog()V
.end method

.method public abstract dismissToolsDialog()V
.end method

.method public abstract dismissZoomDialog(Z)V
.end method

.method public abstract isAddBookmarkAvailable()Z
.end method

.method public abstract launchExtensionsActivity()V
.end method

.method public abstract launchSettingsActivity(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract notifyAiOptionStatusChanged(I)V
.end method

.method public abstract onNewGuiStateChanged()V
.end method

.method public abstract restoreZoomValueIfNeeded(Z)V
.end method

.method public abstract shareVia(Landroid/content/Intent;)V
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract showZoomInOutPopup()V
.end method
