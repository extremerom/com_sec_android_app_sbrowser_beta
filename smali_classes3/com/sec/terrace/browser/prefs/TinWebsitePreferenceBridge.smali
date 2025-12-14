.class public Lcom/sec/terrace/browser/prefs/TinWebsitePreferenceBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/prefs/TinWebsitePreferenceBridge$Natives;
    }
.end annotation


# direct methods
.method public static clearSiteData(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinWebsitePreferenceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinWebsitePreferenceBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/prefs/TinWebsitePreferenceBridge$Natives;->clearBannerData(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinWebsitePreferenceBridgeJni;->get()Lcom/sec/terrace/browser/prefs/TinWebsitePreferenceBridge$Natives;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sec/terrace/browser/prefs/TinWebsitePreferenceBridge$Natives;->clearMediaLicenses(Ljava/lang/String;)V

    return-void
.end method
