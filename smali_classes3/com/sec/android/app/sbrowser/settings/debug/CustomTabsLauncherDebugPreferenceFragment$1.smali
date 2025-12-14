.class Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment$1;
.super LH/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;LH/k;)V
    .locals 4
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LH/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->j(Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;LH/k;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->h(Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;)LH/k;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p1, p1, LH/k;->a:Lc/e;

    invoke-interface {p1}, Lc/e;->r0()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->h(Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;)LH/k;

    move-result-object p2

    new-instance v0, LH/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LH/j;

    invoke-direct {v1, v0}, LH/j;-><init>(LH/c;)V

    iget-object v0, p2, LH/k;->a:Lc/e;

    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Lc/e;->u0(LH/j;)Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v3, :cond_0

    :catch_1
    move-object v3, v2

    goto :goto_0

    :cond_0
    new-instance v3, LH/w;

    iget-object p2, p2, LH/k;->b:Landroid/content/ComponentName;

    invoke-direct {v3, v0, v1, p2}, LH/w;-><init>(Lc/e;LH/j;Landroid/content/ComponentName;)V

    :goto_0
    invoke-static {p1, v3}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->k(Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;LH/w;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->i(Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;)LH/w;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->i(Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;)LH/w;

    move-result-object p0

    const-string p1, "https://www.google.com"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :try_start_2
    iget-object v0, p0, LH/w;->a:Lc/e;

    iget-object p0, p0, LH/w;->b:LH/j;

    invoke-interface {v0, p0, p1, p2, v2}, Lc/e;->A(Lc/b;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->j(Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;LH/k;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;->k(Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsLauncherDebugPreferenceFragment;LH/w;)V

    return-void
.end method
