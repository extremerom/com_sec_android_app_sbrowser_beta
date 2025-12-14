.class public final synthetic Lcom/sec/android/app/sbrowser/tab_sync/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/m;->a:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    return-void
.end method


# virtual methods
.method public final onStatusChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/m;->a:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->d(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;I)V

    return-void
.end method
