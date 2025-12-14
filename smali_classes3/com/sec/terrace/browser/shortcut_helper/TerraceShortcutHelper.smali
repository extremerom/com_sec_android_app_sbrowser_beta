.class public Lcom/sec/terrace/browser/shortcut_helper/TerraceShortcutHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/shortcut_helper/TerraceShortcutHelper$TerraceShortcutHelperClient;
    }
.end annotation


# direct methods
.method public static generateHomeScreenIcon(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->generateHomeScreenIcon(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static setClient(Lcom/sec/terrace/browser/shortcut_helper/TerraceShortcutHelper$TerraceShortcutHelperClient;)V
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/shortcut_helper/TerraceShortcutHelper$1;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/shortcut_helper/TerraceShortcutHelper$1;-><init>(Lcom/sec/terrace/browser/shortcut_helper/TerraceShortcutHelper$TerraceShortcutHelperClient;)V

    invoke-static {v0}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->setClient(Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$TinShortcutHelperClient;)V

    return-void
.end method
