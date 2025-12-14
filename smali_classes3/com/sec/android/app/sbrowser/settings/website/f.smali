.class public final synthetic Lcom/sec/android/app/sbrowser/settings/website/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$StorageInfoClearedCallback;
.implements Lcom/sec/android/app/sbrowser/settings/website/Website$StoredDataClearedCallback;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/f;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageInfoCleared()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/f;->a:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/website/Website$StoredDataClearedCallback;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/website/Website;->c(Lcom/sec/android/app/sbrowser/settings/website/Website$StoredDataClearedCallback;)V

    return-void
.end method

.method public onStoredDataCleared()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/f;->a:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/website/Website;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->p(Lcom/sec/android/app/sbrowser/settings/website/Website;)V

    return-void
.end method
