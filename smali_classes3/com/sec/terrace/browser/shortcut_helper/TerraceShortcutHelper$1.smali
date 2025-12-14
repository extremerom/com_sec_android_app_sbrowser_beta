.class Lcom/sec/terrace/browser/shortcut_helper/TerraceShortcutHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$TinShortcutHelperClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/shortcut_helper/TerraceShortcutHelper;->setClient(Lcom/sec/terrace/browser/shortcut_helper/TerraceShortcutHelper$TerraceShortcutHelperClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$terraceShortcutHelperClient:Lcom/sec/terrace/browser/shortcut_helper/TerraceShortcutHelper$TerraceShortcutHelperClient;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/shortcut_helper/TerraceShortcutHelper$TerraceShortcutHelperClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/shortcut_helper/TerraceShortcutHelper$1;->val$terraceShortcutHelperClient:Lcom/sec/terrace/browser/shortcut_helper/TerraceShortcutHelper$TerraceShortcutHelperClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addShortcutWithRenameDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V
    .locals 9

    move-object v0, p0

    iget-object v0, v0, Lcom/sec/terrace/browser/shortcut_helper/TerraceShortcutHelper$1;->val$terraceShortcutHelperClient:Lcom/sec/terrace/browser/shortcut_helper/TerraceShortcutHelper$TerraceShortcutHelperClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/sec/terrace/browser/shortcut_helper/TerraceShortcutHelper$TerraceShortcutHelperClient;->addShortcutWithRenameDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V

    return-void
.end method
