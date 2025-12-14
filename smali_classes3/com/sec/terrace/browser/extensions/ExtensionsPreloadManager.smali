.class public Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;
    }
.end annotation


# instance fields
.field private mActionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->mActionMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->init()V

    return-void
.end method


# virtual methods
.method public getActionList()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->mActionMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public getIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->mActionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->mActionMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->getIcon()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->mActionMap:Ljava/util/HashMap;

    new-instance v1, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;

    sget v2, Lcom/sec/terrace/R$string;->six_translator:I

    sget v3, Lcom/sec/terrace/R$drawable;->internet_addons_ic_tools_translator:I

    invoke-direct {v1, p0, v2, v3}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;-><init>(Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;II)V

    const-string p0, "khmmfcceknncifmkiimjnnjldibgajpl"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isFirstParty(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->mActionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->mActionMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->isFirstParty()Z

    move-result p0

    return p0
.end method

.method public isUsed(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->mActionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->mActionMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->isUsed()Z

    move-result p0

    return p0
.end method

.method public setSupported(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->mActionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->mActionMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->setSupported()V

    :cond_0
    return-void
.end method

.method public setUsed(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->mActionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->mActionMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;

    invoke-virtual {p0, p2}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->setUsed(Z)V

    :cond_0
    return-void
.end method

.method public updatePreloadActionList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->setSupported(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
