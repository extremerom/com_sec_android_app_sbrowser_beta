.class Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper;->onNativeInitializationSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p0, "pref_enable_anti_tracking_debug_settings"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelperJni;->get()Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper$Natives;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper;->isAntiTrackingDebugSettingsEnabled(Landroid/content/SharedPreferences;)Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper$Natives;->setAntiTrackingDebugSettingsFlag(Z)V

    goto :goto_0

    :cond_0
    const-string p0, "pref_anti_tracking_automatic_storage_access_state"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelperJni;->get()Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper$Natives;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper;->getAutomaticStorageAccessState(Landroid/content/SharedPreferences;)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper$Natives;->setAutomaticStorageAccessStateValue(I)V

    goto :goto_0

    :cond_1
    const-string p0, "pref_enable_server_based_allowlist_blocklist"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelperJni;->get()Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper$Natives;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper;->isServerBasedListEnabled(Landroid/content/SharedPreferences;)Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper$Natives;->enableServerBasedListUsage(Z)V

    :cond_2
    :goto_0
    return-void
.end method
