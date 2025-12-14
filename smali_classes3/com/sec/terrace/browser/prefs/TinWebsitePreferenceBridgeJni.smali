.class Lcom/sec/terrace/browser/prefs/TinWebsitePreferenceBridgeJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/prefs/TinWebsitePreferenceBridge$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/prefs/TinWebsitePreferenceBridge$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/prefs/TinWebsitePreferenceBridgeJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/prefs/TinWebsitePreferenceBridgeJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public clearBannerData(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MOI9juDK(Ljava/lang/Object;Z)V

    return-void
.end method

.method public clearMediaLicenses(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, LJ/N;->MR_ZEeWn(Ljava/lang/Object;)V

    return-void
.end method
