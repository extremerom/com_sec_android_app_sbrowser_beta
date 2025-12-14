.class public Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridgeJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$Natives;


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

.method public static get()Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridgeJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridgeJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public clearLocalStorageData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MY_ZUe$F(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public clearPermissionSettingsForOrigin(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, LJ/N;->MAjNHUUT(Ljava/lang/Object;)V

    return-void
.end method

.method public clearStorageData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MP63egGr(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public fetchLocalStorageInfo(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, LJ/N;->MM5SMkhI(Ljava/lang/Object;)V

    return-void
.end method

.method public fetchStorageInfo(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, LJ/N;->Mo2iOQxB(Ljava/lang/Object;)V

    return-void
.end method

.method public getContentSettingValueForOrigin(ILjava/lang/String;Ljava/lang/String;Z)I
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MCFrSMJM(ILjava/lang/Object;Ljava/lang/Object;Z)I

    move-result p0

    return p0
.end method

.method public getOriginsForContentSetting(ILjava/lang/Object;ZZ)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MGC8QP0p(ILjava/lang/Object;ZZ)V

    return-void
.end method

.method public isContentSettingEnabled(I)Z
    .locals 0

    invoke-static {p1}, LJ/N;->MFY2aTd9(I)Z

    move-result p0

    return p0
.end method

.method public isEmbargoed(ILjava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M0F$AQqa(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setContentSettingEnabled(IZ)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MTkUP8tN(IZ)V

    return-void
.end method

.method public setContentSettingValueForOrigin(ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MwzAw20c(ILjava/lang/Object;Ljava/lang/Object;IZ)V

    return-void
.end method

.method public setEmbargo(ILjava/lang/String;Z)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MNsPpVn$(ILjava/lang/Object;Z)V

    return-void
.end method
