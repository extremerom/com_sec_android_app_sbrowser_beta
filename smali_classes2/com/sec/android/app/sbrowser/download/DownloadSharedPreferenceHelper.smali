.class public Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper$LazyHolder;,
        Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper$Observer;
    }
.end annotation


# instance fields
.field private final mDownloadSharedPreferenceEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper$Observer;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->mDownloadSharedPreferenceEntries:Ljava/util/List;

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->parseDownloadSharedPrefs()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->mObservers:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->mObservers:Ljava/util/List;

    return-object p0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper$LazyHolder;->a()Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;

    move-result-object v0

    return-object v0
.end method

.method private parseDownloadSharedPrefs()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "PendingDownloadNotifications"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/download/DMSUtils;->getStoredDownloadInfo(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->parseFromString(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    move-result-object v1

    iget v2, v1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->notificationId:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->mDownloadSharedPreferenceEntries:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private storeDownloadSharedPreferenceEntries()V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->mDownloadSharedPreferenceEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->mDownloadSharedPreferenceEntries:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->getSharedPreferenceString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "PendingDownloadNotifications"

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/sbrowser/download/DMSUtils;->storeDownloadInfo(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public addObserver(Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper$Observer;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->mObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOrReplaceSharedPreferenceEntry(Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->mDownloadSharedPreferenceEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->downloadGuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->downloadGuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->mDownloadSharedPreferenceEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->storeDownloadSharedPreferenceEntries()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper$1;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getDownloadSharedPreferenceEntry(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->mDownloadSharedPreferenceEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->mDownloadSharedPreferenceEntries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->downloadGuid:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->mDownloadSharedPreferenceEntries:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntries()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->mDownloadSharedPreferenceEntries:Ljava/util/List;

    return-object p0
.end method

.method public hasEntry(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->getDownloadSharedPreferenceEntry(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeObserver(Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper$Observer;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->mObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeSharedPreferenceEntry(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->mDownloadSharedPreferenceEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->downloadGuid:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper;->storeDownloadSharedPreferenceEntries()V

    :cond_1
    return-void
.end method
