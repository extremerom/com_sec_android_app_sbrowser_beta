.class public interface abstract Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract clearLocalStorageData(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract clearPermissionSettingsForOrigin(Ljava/lang/String;)V
.end method

.method public abstract clearStorageData(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract fetchLocalStorageInfo(Ljava/lang/Object;)V
.end method

.method public abstract fetchStorageInfo(Ljava/lang/Object;)V
.end method

.method public abstract getContentSettingValueForOrigin(ILjava/lang/String;Ljava/lang/String;Z)I
.end method

.method public abstract getOriginsForContentSetting(ILjava/lang/Object;ZZ)V
.end method

.method public abstract isContentSettingEnabled(I)Z
.end method

.method public abstract isEmbargoed(ILjava/lang/String;)Z
.end method

.method public abstract setContentSettingEnabled(IZ)V
.end method

.method public abstract setContentSettingValueForOrigin(ILjava/lang/String;Ljava/lang/String;IZ)V
.end method

.method public abstract setEmbargo(ILjava/lang/String;Z)V
.end method
