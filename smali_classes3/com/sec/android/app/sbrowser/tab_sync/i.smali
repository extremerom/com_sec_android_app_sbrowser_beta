.class public final synthetic Lcom/sec/android/app/sbrowser/tab_sync/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_sync/TabSyncManager$TabSyncAccountDelegate;


# virtual methods
.method public final isSamsungAccountSignedIn()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->isAccountsLoggedIn()Z

    move-result p0

    return p0
.end method
