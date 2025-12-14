.class public interface abstract Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract closeAllTab()V
.end method

.method public abstract editTabs(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)V
.end method

.method public abstract filterOptionsMenu(Landroid/view/Menu;)V
.end method

.method public abstract groupTabs()V
.end method

.method public abstract onDismiss()V
.end method

.method public abstract recordMoreSecretModeSecurity()V
.end method

.method public abstract removeSyncedDevice()V
.end method

.method public abstract renameGroup(Z)V
.end method

.method public abstract reopenClosedTab()V
.end method

.method public abstract sendSALoggingForMoreMenu(Ljava/lang/String;)V
.end method

.method public abstract showChangeViewTypeDialog()V
.end method

.method public abstract showReopenClosedTabMenu(Landroid/view/Menu;)V
.end method
