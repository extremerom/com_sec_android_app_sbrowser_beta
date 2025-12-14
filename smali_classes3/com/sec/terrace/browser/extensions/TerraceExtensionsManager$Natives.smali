.class interface abstract Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract createContextMenu(JLcom/sec/terrace/browser/extensions/TerraceExtensionsManager;)V
.end method

.method public abstract executeAction(JLcom/sec/terrace/browser/extensions/TerraceExtensionsManager;Ljava/lang/String;)V
.end method

.method public abstract executeCommand(JLcom/sec/terrace/browser/extensions/TerraceExtensionsManager;I)V
.end method

.method public abstract getIcon(JLcom/sec/terrace/browser/extensions/TerraceExtensionsManager;Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract init(Ljava/lang/Object;)J
.end method

.method public abstract initExtensions(JLcom/sec/terrace/browser/extensions/TerraceExtensionsManager;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$OnResultInitCallback;)V
.end method

.method public abstract initialized(JLcom/sec/terrace/browser/extensions/TerraceExtensionsManager;)Z
.end method

.method public abstract resetExtensions(JLcom/sec/terrace/browser/extensions/TerraceExtensionsManager;)V
.end method
