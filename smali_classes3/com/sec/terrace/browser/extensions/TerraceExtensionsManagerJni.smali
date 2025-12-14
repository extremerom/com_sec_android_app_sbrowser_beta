.class Lcom/sec/terrace/browser/extensions/TerraceExtensionsManagerJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$Natives;


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

.method public static get()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManagerJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManagerJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public createContextMenu(JLcom/sec/terrace/browser/extensions/TerraceExtensionsManager;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MPgnLtxJ(JLjava/lang/Object;)V

    return-void
.end method

.method public executeAction(JLcom/sec/terrace/browser/extensions/TerraceExtensionsManager;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MjHt3F27(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public executeCommand(JLcom/sec/terrace/browser/extensions/TerraceExtensionsManager;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->Mk3UANpl(JLjava/lang/Object;I)V

    return-void
.end method

.method public getIcon(JLcom/sec/terrace/browser/extensions/TerraceExtensionsManager;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->ML9ZONMG(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public init(Ljava/lang/Object;)J
    .locals 0

    invoke-static {p1}, LJ/N;->MHqF1QtX(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public initExtensions(JLcom/sec/terrace/browser/extensions/TerraceExtensionsManager;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$OnResultInitCallback;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MXHQMpsp(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public initialized(JLcom/sec/terrace/browser/extensions/TerraceExtensionsManager;)Z
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MP7vO$BL(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public resetExtensions(JLcom/sec/terrace/browser/extensions/TerraceExtensionsManager;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MoDeaHpq(JLjava/lang/Object;)V

    return-void
.end method
