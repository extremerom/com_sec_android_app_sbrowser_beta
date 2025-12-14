.class public Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtensionActionItem"
.end annotation


# instance fields
.field private mId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mResourceId:I

.field final synthetic this$0:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;


# direct methods
.method private constructor <init>(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->this$0:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->mId:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->mName:Ljava/lang/String;

    iput p4, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->mResourceId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;-><init>(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->this$0:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    invoke-static {v0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->a(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->this$0:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    invoke-static {v0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->b(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;)Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->isUsed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManagerJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$Natives;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->this$0:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    invoke-static {v1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->a(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->this$0:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->mId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$Natives;->getIcon(JLcom/sec/terrace/browser/extensions/TerraceExtensionsManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->this$0:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    invoke-static {v0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->b(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;)Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->mId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->getIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getInstallSource()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->this$0:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    invoke-static {v0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->a(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->mId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstallSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInstalled()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->this$0:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    invoke-static {v0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->a(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->mId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->isInstalledInNative(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getResourceId()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->mResourceId:I

    return p0
.end method

.method public isFirstParty()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->this$0:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    invoke-static {v0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->a(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->this$0:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    invoke-static {v0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->b(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;)Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->isUsed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->mId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->isFirstParty(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->this$0:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    invoke-static {v0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->b(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;)Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->mId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->isFirstParty(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
