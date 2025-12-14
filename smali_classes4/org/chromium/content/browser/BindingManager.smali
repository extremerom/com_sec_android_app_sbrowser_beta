.class Lorg/chromium/content/browser/BindingManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final NO_MAX_SIZE:I = -0x1

.field private static sUseNotPerceptibleBindingForTesting:Ljava/lang/Boolean;


# instance fields
.field private final mConnections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/chromium/base/process_launcher/ChildProcessConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionsDroppedDueToMaxSize:I

.field private final mDelayedClearer:Ljava/lang/Runnable;

.field private final mMaxSize:I

.field private final mRanking:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lorg/chromium/base/process_launcher/ChildProcessConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mWaivedConnection:Lorg/chromium/base/process_launcher/ChildProcessConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/Iterable<",
            "Lorg/chromium/base/process_launcher/ChildProcessConnection;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LN/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LN/g;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/content/browser/BindingManager;->mConnections:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "BindingManager"

    const-string v2, "Visible binding enabled: maxSize=%d"

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iput p2, p0, Lorg/chromium/content/browser/BindingManager;->mMaxSize:I

    iput-object p3, p0, Lorg/chromium/content/browser/BindingManager;->mRanking:Ljava/lang/Iterable;

    if-gtz p2, :cond_1

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize must be a positive integer or NO_MAX_SIZE. Was "

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance p2, Lorg/chromium/content/browser/BindingManager$3;

    invoke-direct {p2, p0}, Lorg/chromium/content/browser/BindingManager$3;-><init>(Lorg/chromium/content/browser/BindingManager;)V

    iput-object p2, p0, Lorg/chromium/content/browser/BindingManager;->mDelayedClearer:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/content/browser/BindingManager;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/BindingManager;->mConnections:Ljava/util/Set;

    return-object p0
.end method

.method private addBinding(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 0

    invoke-static {}, Lorg/chromium/content/browser/BindingManager;->useNotPerceptibleBinding()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->addNotPerceptibleBinding()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->addVisibleBinding()V

    return-void
.end method

.method public static bridge synthetic b(Lorg/chromium/content/browser/BindingManager;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/BindingManager;->reduce(F)V

    return-void
.end method

.method public static bridge synthetic c(Lorg/chromium/content/browser/BindingManager;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/BindingManager;->removeAllConnections()V

    return-void
.end method

.method private ensureLowestRankIsWaived()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManager;->mRanking:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/process_launcher/ChildProcessConnection;

    iget-object v1, p0, Lorg/chromium/content/browser/BindingManager;->mWaivedConnection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lorg/chromium/content/browser/BindingManager;->addBinding(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/content/browser/BindingManager;->mWaivedConnection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    :cond_2
    iget-object v1, p0, Lorg/chromium/content/browser/BindingManager;->mConnections:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, v0}, Lorg/chromium/content/browser/BindingManager;->removeBinding(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    iput-object v0, p0, Lorg/chromium/content/browser/BindingManager;->mWaivedConnection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    return-void
.end method

.method private isExclusiveNotPerceptibleBinding(Lorg/chromium/base/process_launcher/ChildProcessConnection;)Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/BindingManager;->mWaivedConnection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    if-eq p1, p0, :cond_0

    invoke-virtual {p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->isStrongBindingBound()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->isVisibleBindingBound()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getNotPerceptibleBindingCount()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isExclusiveVisibleBinding(Lorg/chromium/base/process_launcher/ChildProcessConnection;)Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/BindingManager;->mWaivedConnection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    if-eq p1, p0, :cond_0

    invoke-virtual {p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->isStrongBindingBound()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->isNotPerceptibleBindingBound()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->getVisibleBindingCount()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private reduce(F)V
    .locals 5

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManager;->mConnections:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    int-to-float v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float/2addr v2, v1

    float-to-int p1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "BindingManager"

    const-string v4, "Reduce connections from %d to %d"

    invoke-static {v3, v4, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sub-int/2addr v0, p1

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/BindingManager;->removeOldConnections(I)V

    invoke-direct {p0}, Lorg/chromium/content/browser/BindingManager;->ensureLowestRankIsWaived()V

    return-void
.end method

.method private removeAllConnections()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManager;->mConnections:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/BindingManager;->removeOldConnections(I)V

    return-void
.end method

.method private removeBinding(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 0

    invoke-static {}, Lorg/chromium/content/browser/BindingManager;->useNotPerceptibleBinding()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->removeNotPerceptibleBinding()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->removeVisibleBinding()V

    return-void
.end method

.method private removeBindingIfNeeded(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManager;->mWaivedConnection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/content/browser/BindingManager;->mWaivedConnection:Lorg/chromium/base/process_launcher/ChildProcessConnection;

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/BindingManager;->removeBinding(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    :goto_0
    return-void
.end method

.method private removeOldConnections(I)V
    .locals 4

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManager;->mRanking:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/base/process_launcher/ChildProcessConnection;

    iget-object v3, p0, Lorg/chromium/content/browser/BindingManager;->mConnections:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v2}, Lorg/chromium/content/browser/BindingManager;->removeBindingIfNeeded(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    iget-object v3, p0, Lorg/chromium/content/browser/BindingManager;->mConnections:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p1, :cond_0

    :cond_1
    return-void
.end method

.method public static useNotPerceptibleBinding()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lorg/chromium/content/browser/BindingManager;->sUseNotPerceptibleBindingForTesting:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->supportNotPerceptibleBinding()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addConnection(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManager;->mConnections:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/BindingManager;->addBinding(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    iget p1, p0, Lorg/chromium/content/browser/BindingManager;->mMaxSize:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lorg/chromium/content/browser/BindingManager;->mConnections:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iget v0, p0, Lorg/chromium/content/browser/BindingManager;->mMaxSize:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    iget p1, p0, Lorg/chromium/content/browser/BindingManager;->mConnectionsDroppedDueToMaxSize:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/chromium/content/browser/BindingManager;->mConnectionsDroppedDueToMaxSize:I

    invoke-direct {p0, v1}, Lorg/chromium/content/browser/BindingManager;->removeOldConnections(I)V

    invoke-direct {p0}, Lorg/chromium/content/browser/BindingManager;->ensureLowestRankIsWaived()V

    :cond_1
    return-void
.end method

.method public getExclusiveBindingCount()I
    .locals 4

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManager;->mConnections:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-static {}, Lorg/chromium/content/browser/BindingManager;->useNotPerceptibleBinding()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lorg/chromium/content/browser/BindingManager;->isExclusiveNotPerceptibleBinding(Lorg/chromium/base/process_launcher/ChildProcessConnection;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_1
    invoke-direct {p0, v2}, Lorg/chromium/content/browser/BindingManager;->isExclusiveVisibleBinding(Lorg/chromium/base/process_launcher/ChildProcessConnection;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public hasExclusiveVisibleBinding(Lorg/chromium/base/process_launcher/ChildProcessConnection;)Z
    .locals 1

    invoke-static {}, Lorg/chromium/content/browser/BindingManager;->useNotPerceptibleBinding()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManager;->mConnections:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/BindingManager;->isExclusiveVisibleBinding(Lorg/chromium/base/process_launcher/ChildProcessConnection;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBroughtToForeground()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/BindingManager;->mDelayedClearer:Ljava/lang/Runnable;

    invoke-static {p0}, Lorg/chromium/content/browser/LauncherThread;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    new-instance v0, Lorg/chromium/content/browser/BindingManager$2;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/BindingManager$2;-><init>(Lorg/chromium/content/browser/BindingManager;)V

    invoke-static {v0}, Lorg/chromium/content/browser/LauncherThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSentToBackground()V
    .locals 2

    const-string v0, "Android.BindingManger.ConnectionsDroppedDueToMaxSize"

    iget v1, p0, Lorg/chromium/content/browser/BindingManager;->mConnectionsDroppedDueToMaxSize:I

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordCount1000Histogram(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/BindingManager;->mConnectionsDroppedDueToMaxSize:I

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManager;->mConnections:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/chromium/content/browser/BindingManager;->mDelayedClearer:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-static {p0, v0, v1}, Lorg/chromium/content/browser/LauncherThread;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    new-instance v0, Lorg/chromium/content/browser/BindingManager$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/BindingManager$1;-><init>(Lorg/chromium/content/browser/BindingManager;I)V

    invoke-static {v0}, Lorg/chromium/content/browser/LauncherThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public rankingChanged()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/BindingManager;->ensureLowestRankIsWaived()V

    return-void
.end method

.method public removeConnection(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManager;->mConnections:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/BindingManager;->removeBindingIfNeeded(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    :cond_0
    return-void
.end method
