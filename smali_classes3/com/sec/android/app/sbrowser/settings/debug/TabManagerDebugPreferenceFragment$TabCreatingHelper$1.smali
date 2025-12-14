.class Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;->requestCreatingNewTab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;

.field final synthetic val$tabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper$1;->val$tabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper$1;->lambda$onTabAdded$0()V

    return-void
.end method

.method private synthetic lambda$onTabAdded$0()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;->d(Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;)V

    return-void
.end method


# virtual methods
.method public onTabAdded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper$1;->val$tabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->removeListener(Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/debug/u;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Lcom/sec/android/app/sbrowser/settings/debug/u;-><init>(ILjava/lang/Object;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
