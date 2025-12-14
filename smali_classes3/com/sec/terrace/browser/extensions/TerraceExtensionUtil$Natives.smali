.class interface abstract Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract canBeSecretModeEnabled(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)Z
.end method

.method public abstract getExtensionOptionPage(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getExtensionPermissions(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getExtensionPermissionsWithAPISet(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;[I)[Ljava/lang/String;
.end method

.method public abstract getInstallSource(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getInstalledExtVer(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSecretModeState(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)Z
.end method

.method public abstract init(Ljava/lang/Object;)J
.end method

.method public abstract initialized(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;)Z
.end method

.method public abstract isEnabledInNative(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)Z
.end method

.method public abstract isFirstParty(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)Z
.end method

.method public abstract isInstalledInNative(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)Z
.end method

.method public abstract readSIXOrigin(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)I
.end method

.method public abstract setInstallSource(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract storeSIXOrigin(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;I)V
.end method

.method public abstract updateSecretModeState(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;Z)V
.end method
