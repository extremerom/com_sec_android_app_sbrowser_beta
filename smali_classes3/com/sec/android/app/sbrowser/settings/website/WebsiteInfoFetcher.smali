.class public Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;,
        Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$LocalStorageInfoFetcher;,
        Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebStorageInfoFetcher;,
        Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$PushNotificationPermissionInfoFetcher;,
        Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$PopupExceptionInfoFetcher;,
        Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebsiteInfoAvailableCallbackRunner;,
        Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$LocationPermissionInfoFetcher;,
        Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$CameraPermissionInfoFetcher;,
        Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$MicroPhonePermissionInfoFetcher;,
        Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$StorageAccessPermissionInfoFetcher;,
        Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$Task;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoCallback;

.field private final mSites:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;",
            "Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;",
            ">;",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->mSites:Ljava/util/Map;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->mCallback:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoCallback;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;)Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->mCallback:Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoCallback;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->mSites:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;)Lcom/sec/android/app/sbrowser/settings/website/Website;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->findOrCreateSite(Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;)Lcom/sec/android/app/sbrowser/settings/website/Website;

    move-result-object p0

    return-object p0
.end method

.method private findOrCreateSite(Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;)Lcom/sec/android/app/sbrowser/settings/website/Website;
    .locals 2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->mSites:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/website/Website;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/website/Website;

    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sbrowser/settings/website/Website;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;Lcom/sec/android/app/sbrowser/settings/website/WebsiteAddress;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->mSites:Ljava/util/Map;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method


# virtual methods
.method public fetchAllPreferences()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;-><init>(I)V

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$LocalStorageInfoFetcher;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$LocalStorageInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;I)V

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebStorageInfoFetcher;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebStorageInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;I)V

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$PushNotificationPermissionInfoFetcher;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$PushNotificationPermissionInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;I)V

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$PopupExceptionInfoFetcher;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$PopupExceptionInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;I)V

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebsiteInfoAvailableCallbackRunner;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebsiteInfoAvailableCallbackRunner;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;I)V

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;->next()V

    return-void
.end method

.method public fetchCameraPreferences(Z)V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;-><init>(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->mSites:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$CameraPermissionInfoFetcher;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$CameraPermissionInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;Z)V

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebsiteInfoAvailableCallbackRunner;

    invoke-direct {p1, p0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebsiteInfoAvailableCallbackRunner;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;I)V

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;->next()V

    return-void
.end method

.method public fetchLocationPreferences(Z)V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;-><init>(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->mSites:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$LocationPermissionInfoFetcher;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$LocationPermissionInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;Z)V

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebsiteInfoAvailableCallbackRunner;

    invoke-direct {p1, p0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebsiteInfoAvailableCallbackRunner;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;I)V

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;->next()V

    return-void
.end method

.method public fetchMicPreferences(Z)V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;-><init>(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->mSites:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$MicroPhonePermissionInfoFetcher;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$MicroPhonePermissionInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;Z)V

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebsiteInfoAvailableCallbackRunner;

    invoke-direct {p1, p0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebsiteInfoAvailableCallbackRunner;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;I)V

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;->next()V

    return-void
.end method

.method public fetchPopupPreferences()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;-><init>(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->mSites:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$PopupExceptionInfoFetcher;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$PopupExceptionInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;I)V

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebsiteInfoAvailableCallbackRunner;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebsiteInfoAvailableCallbackRunner;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;I)V

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;->next()V

    return-void
.end method

.method public fetchPushNotificationPreferences()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;-><init>(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->mSites:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$PushNotificationPermissionInfoFetcher;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$PushNotificationPermissionInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;I)V

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebsiteInfoAvailableCallbackRunner;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebsiteInfoAvailableCallbackRunner;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;I)V

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;->next()V

    return-void
.end method

.method public fetchStoragePreferences()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;-><init>(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;->mSites:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$StorageAccessPermissionInfoFetcher;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$StorageAccessPermissionInfoFetcher;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;I)V

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebsiteInfoAvailableCallbackRunner;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$WebsiteInfoAvailableCallbackRunner;-><init>(Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher;I)V

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteInfoFetcher$TaskQueue;->next()V

    return-void
.end method
