.class Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$1;
.super Lorg/chromium/base/process_launcher/ChildProcessLauncher$Delegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$1;->this$0:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    invoke-direct {p0}, Lorg/chromium/base/process_launcher/ChildProcessLauncher$Delegate;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoundConnection(Lorg/chromium/base/process_launcher/ChildConnectionAllocator;Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;)Lorg/chromium/base/process_launcher/ChildProcessConnection;
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$1;->this$0:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->k(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$1;->this$0:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->o(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->u()Lorg/chromium/content/browser/SpareChildConnection;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/chromium/content/browser/SpareChildConnection;->getConnection(Lorg/chromium/base/process_launcher/ChildConnectionAllocator;Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;)Lorg/chromium/base/process_launcher/ChildProcessConnection;

    move-result-object p0

    return-object p0
.end method

.method public onBeforeConnectionAllocated(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p1}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->z(Landroid/os/Bundle;)V

    return-void
.end method

.method public onBeforeConnectionSetup(Landroid/os/Bundle;)V
    .locals 2

    const-string p0, "com.google.android.apps.chrome.extra.cpu_count"

    invoke-static {}, Lorg/chromium/base/CpuFeatures;->getCount()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "com.google.android.apps.chrome.extra.cpu_features"

    invoke-static {}, Lorg/chromium/base/CpuFeatures;->getMask()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->v()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->v()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->getInstance()Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->getMediator()Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/chromium/base/library_loader/LibraryLoader$MultiProcessMediator;->putSharedRelrosToBundle(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public onConnectionEstablished(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 8

    invoke-virtual {p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getPid()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->s()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$1;->this$0:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$1;->this$0:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->m(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)Lorg/chromium/content/browser/ChildProcessRanking;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$1;->this$0:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->m(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)Lorg/chromium/content/browser/ChildProcessRanking;

    move-result-object v1

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/content/browser/ChildProcessRanking;->addConnection(Lorg/chromium/base/process_launcher/ChildProcessConnection;ZJZI)V

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$1;->this$0:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->j(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)Lorg/chromium/content/browser/BindingManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$1;->this$0:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->j(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)Lorg/chromium/content/browser/BindingManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/BindingManager;->rankingChanged()V

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$1;->this$0:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->o(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessConnectionMetrics;->getInstance()Lorg/chromium/content/browser/ChildProcessConnectionMetrics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ChildProcessConnectionMetrics;->addConnection(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$1;->this$0:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->n(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->hasVisibleActivities()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$1;->this$0:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->q(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)V

    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$1;->this$0:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->l(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImplJni;->get()Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$Natives;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$1;->this$0:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    invoke-static {v1}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->l(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)J

    move-result-wide v1

    invoke-virtual {p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getPid()I

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$Natives;->onChildProcessStarted(JI)V

    :cond_3
    iget-object p0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$1;->this$0:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->p(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)V

    return-void
.end method

.method public onConnectionLost(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 2

    invoke-virtual {p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getPid()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getPid()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->y(I)V

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->s()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$1;->this$0:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->j(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)Lorg/chromium/content/browser/BindingManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$1;->this$0:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->j(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)Lorg/chromium/content/browser/BindingManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/BindingManager;->removeConnection(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$1;->this$0:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->m(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)Lorg/chromium/content/browser/ChildProcessRanking;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$1;->this$0:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->m(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)Lorg/chromium/content/browser/ChildProcessRanking;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ChildProcessRanking;->removeConnection(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$1;->this$0:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->j(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)Lorg/chromium/content/browser/BindingManager;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$1;->this$0:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->j(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)Lorg/chromium/content/browser/BindingManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/BindingManager;->rankingChanged()V

    :cond_3
    iget-object p0, p0, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl$1;->this$0:Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;

    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->o(Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessConnectionMetrics;->getInstance()Lorg/chromium/content/browser/ChildProcessConnectionMetrics;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/ChildProcessConnectionMetrics;->removeConnection(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    :cond_4
    return-void
.end method

.method public onReceivedZygoteInfo(Lorg/chromium/base/process_launcher/ChildProcessConnection;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p1, p2}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->x(Lorg/chromium/base/process_launcher/ChildProcessConnection;Landroid/os/Bundle;)V

    return-void
.end method
