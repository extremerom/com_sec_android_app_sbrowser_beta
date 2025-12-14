.class Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$LazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;-><init>(I)V

    sput-object v0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$LazyHolder;->INSTANCE:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    return-void
.end method

.method public static bridge synthetic a()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$LazyHolder;->INSTANCE:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    return-object v0
.end method
