.class interface abstract Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract changeExtensionStatus(JLcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;Ljava/lang/String;Z)V
.end method

.method public abstract getExtensionsList(JLcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;)V
.end method

.method public abstract init(Ljava/lang/Object;)J
.end method

.method public abstract initialized(JLcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;)Z
.end method

.method public abstract launchInstallCrx(JLcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract launchUninstallCrx(JLcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;Ljava/lang/String;)Z
.end method

.method public abstract loadExtensionIcon(JLcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;Ljava/lang/String;)V
.end method

.method public abstract reloadExtensionInDelayedTime(JLcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;Ljava/lang/String;)V
.end method

.method public abstract reviveTerminatedExtIfExist(JLcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;Ljava/lang/String;)Z
.end method

.method public abstract terminateExtensionService(JLcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;)V
.end method
