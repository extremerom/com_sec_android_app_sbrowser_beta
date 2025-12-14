.class public Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsActionCallback;,
        Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsClipboardCallback;,
        Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ContextMenuPopulatorCallback;,
        Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$LazyHolder;,
        Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$Natives;,
        Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$OnResultInitCallback;,
        Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;,
        Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;
    }
.end annotation


# instance fields
.field private mActionCallback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsActionCallback;

.field private mActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mActionResourceId:I

.field private mClipboardCallback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsClipboardCallback;

.field private mIsInitialized:Z

.field private mMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mNativeTinExtensionsManager:J

.field private mPopulatorCallback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ContextMenuPopulatorCallback;

.field private mPreloadManager:Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mActionList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mMenuItems:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mActionResourceId:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mPreloadManager:Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;

    iput-boolean v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mIsInitialized:Z

    const-string v0, "EnableExtensions"

    invoke-static {v0}, Lcom/sec/terrace/TerraceFeatureList;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManagerJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$Natives;->init(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mNativeTinExtensionsManager:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mNativeTinExtensionsManager:J

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mNativeTinExtensionsManager:J

    return-wide v0
.end method

.method private addAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "addAction id : "

    const-string v1, "TerraceExtensionsManager"

    invoke-static {v0, p1, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mPreloadManager:Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->isUsed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->removeActionInternal(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mPreloadManager:Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->setUsed(Ljava/lang/String;Z)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->addActionInternal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addActionInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mActionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_1
    iget v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mActionResourceId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mActionResourceId:I

    const v1, 0xc351

    add-int v6, v0, v1

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mActionList:Ljava/util/List;

    new-instance v1, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;-><init>(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mActionCallback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsActionCallback;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsActionCallback;->onActionListUpdated()V

    :cond_2
    return-void
.end method

.method private addExtensionMenuItem(Ljava/lang/String;Ljava/lang/String;IZILandroid/graphics/Bitmap;ZLjava/lang/String;ZZZ)V
    .locals 15
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v1, p0

    iget-object v0, v1, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mMenuItems:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mMenuItems:Ljava/util/List;

    :cond_0
    const/4 v0, -0x1

    move/from16 v6, p5

    if-ne v6, v0, :cond_1

    iget-object v13, v1, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mMenuItems:Ljava/util/List;

    new-instance v14, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;-><init>(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;Ljava/lang/String;Ljava/lang/String;IZILandroid/graphics/Bitmap;ZLjava/lang/String;ZZZ)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mMenuItems:Ljava/util/List;

    move-object v0, p0

    move-object v1, v2

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->addSubmenu(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IZIZLjava/lang/String;ZZZ)V

    :goto_0
    return-void
.end method

.method private addPreloadAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "addPreloadAction id : "

    const-string v1, "TerraceExtensionsManager"

    invoke-static {v0, p1, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->addActionInternal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addSubmenu(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IZIZLjava/lang/String;ZZZ)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZIZ",
            "Ljava/lang/String;",
            "ZZZ)V"
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    move-object/from16 v2, p1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    invoke-virtual {v3}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->hasSubmenu()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getCommandId()I

    move-result v4

    move/from16 v15, p6

    if-ne v4, v15, :cond_0

    invoke-virtual {v3}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getSubmenu()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    const/4 v12, 0x0

    move-object v5, v1

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    move/from16 v15, p9

    move/from16 v16, p10

    move/from16 v17, p11

    invoke-direct/range {v5 .. v17}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;-><init>(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;Ljava/lang/String;Ljava/lang/String;IZILandroid/graphics/Bitmap;ZLjava/lang/String;ZZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getSubmenu()Ljava/util/List;

    move-result-object v6

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    invoke-direct/range {v5 .. v16}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->addSubmenu(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;IZIZLjava/lang/String;ZZZ)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;)Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mPreloadManager:Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;

    return-object p0
.end method

.method public static getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$LazyHolder;->a()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object v0

    return-object v0
.end method

.method private iconUpdated(Ljava/lang/String;)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "iconUpdated action id : "

    const-string v1, "TerraceExtensionsManager"

    invoke-static {v0, p1, v1}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mActionCallback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsActionCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsActionCallback;->onIconUpdated(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private removeAction(Ljava/lang/String;)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "removeAction action id : "

    const-string v1, "TerraceExtensionsManager"

    invoke-static {v0, p1, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->removeActionInternal(Ljava/lang/String;)V

    return-void
.end method

.method private removeActionInternal(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mActionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mActionCallback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsActionCallback;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsActionCallback;->onActionListUpdated()V

    :cond_1
    return-void
.end method

.method private removePreloadAction(Ljava/lang/String;)V
    .locals 2

    const-string v0, "removePreloadAction id : "

    const-string v1, "TerraceExtensionsManager"

    invoke-static {v0, p1, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->removeActionInternal(Ljava/lang/String;)V

    return-void
.end method

.method private resetContextMenu()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mMenuItems:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mMenuItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mMenuItems:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method public createContextMenu()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mNativeTinExtensionsManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManagerJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mNativeTinExtensionsManager:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$Natives;->createContextMenu(JLcom/sec/terrace/browser/extensions/TerraceExtensionsManager;)V

    return-void
.end method

.method public createContextMenuPopulator(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceContextMenuPopulator;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mPopulatorCallback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ContextMenuPopulatorCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ContextMenuPopulatorCallback;->createContextMenuPopulator(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceContextMenuPopulator;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public executeAction(Ljava/lang/String;)V
    .locals 4

    const-string v0, "executeAction id : "

    const-string v1, "TerraceExtensionsManager"

    invoke-static {v0, p1, v1}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mNativeTinExtensionsManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManagerJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mNativeTinExtensionsManager:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$Natives;->executeAction(JLcom/sec/terrace/browser/extensions/TerraceExtensionsManager;Ljava/lang/String;)V

    return-void
.end method

.method public executeCommand(I)V
    .locals 3

    const-string v0, "executeCommand id : "

    const-string v1, "TerraceExtensionsManager"

    invoke-static {p1, v0, v1}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManagerJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mNativeTinExtensionsManager:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$Natives;->executeCommand(JLcom/sec/terrace/browser/extensions/TerraceExtensionsManager;I)V

    return-void
.end method

.method public getActionList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mActionList:Ljava/util/List;

    return-object p0
.end method

.method public getContextMenu(Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;
    .locals 3

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mMenuItems:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getExtensionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public getExtensionMenuItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mMenuItems:Ljava/util/List;

    return-object p0
.end method

.method public hideClipboard(Lcom/sec/terrace/Terrace;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mClipboardCallback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsClipboardCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsClipboardCallback;->hideClipboard(Lcom/sec/terrace/Terrace;)V

    :cond_0
    return-void
.end method

.method public initialize()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mIsInitialized:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mNativeTinExtensionsManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManagerJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mNativeTinExtensionsManager:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$Natives;->initialized(JLcom/sec/terrace/browser/extensions/TerraceExtensionsManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mIsInitialized:Z

    new-instance v0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;

    invoke-direct {v0}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mPreloadManager:Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;

    :cond_0
    return-void
.end method

.method public isInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mIsInitialized:Z

    return p0
.end method

.method public registerClipboardPasteListener(Lcom/sec/terrace/Terrace;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mClipboardCallback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsClipboardCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsClipboardCallback;->registerClipboardPasteListener(Lcom/sec/terrace/Terrace;)V

    :cond_0
    return-void
.end method

.method public reloadPreloadAction(Ljava/lang/String;ZZZ)V
    .locals 5

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mPreloadManager:Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reloadPreloadAction id : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TerraceExtensionsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "reloadPreloadAction isDefaultExtEnabled: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "reloadPreloadAction isDefaultExt: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "reloadPreloadAction isEnabled: "

    invoke-static {v0, v1, p4}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mPreloadManager:Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->getActionList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->isSupported()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "reloadPreloadAction isSupported: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->isInstalled()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "reloadPreloadAction isInstalled: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->isUsed()Z

    move-result v2

    const-string v3, "reloadPreloadAction isUsed: "

    invoke-static {v3, v1, v2}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->isInstalled()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "reloadPreloadAction - handling installed default ext"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p4, :cond_2

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->isUsed()Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "reloadPreloadAction - addPreloadAction for default ext"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mPreloadManager:Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;

    invoke-virtual {p2, p1, v3}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->setUsed(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->addPreloadAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_5

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->isUsed()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "reloadPreloadAction - removePreloadAction for default ext"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->removePreloadAction(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mPreloadManager:Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->setUsed(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-string p2, "reloadPreloadAction - handle non default ext and not installed default ext"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->isSupported()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->isInstalled()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->isUsed()Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "reloadPreloadAction - addPreloadAction"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mPreloadManager:Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;

    invoke-virtual {p2, p1, v3}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->setUsed(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->addPreloadAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->isInstalled()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->isUsed()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "reloadPreloadAction - removePreloadAction"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->removePreloadAction(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mPreloadManager:Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->setUsed(Ljava/lang/String;Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setContextMenuPopulatorCallback(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ContextMenuPopulatorCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mPopulatorCallback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ContextMenuPopulatorCallback;

    return-void
.end method

.method public setExtensionActionCallback(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsActionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mActionCallback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsActionCallback;

    return-void
.end method

.method public setExtensionClipboardCallback(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsClipboardCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mClipboardCallback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsClipboardCallback;

    return-void
.end method

.method public showClipboard(Lcom/sec/terrace/Terrace;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mClipboardCallback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsClipboardCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsClipboardCallback;->showClipboard(Lcom/sec/terrace/Terrace;)V

    :cond_0
    return-void
.end method

.method public unregisterClipboardPasteListener(Lcom/sec/terrace/Terrace;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mClipboardCallback:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsClipboardCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsClipboardCallback;->unregisterClipboardPasteListener(Lcom/sec/terrace/Terrace;)V

    :cond_0
    return-void
.end method

.method public updatePreloadActionList(Ljava/util/List;ZLjava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updatePreloadActionList - isDefaultExtEnabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TerraceExtensionsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "updatePreloadActionList - defaultExtIdSet len: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mPreloadManager:Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->updatePreloadActionList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mPreloadManager:Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->getActionList()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mActionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    invoke-virtual {v3}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v5

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v3, v6}, [Ljava/lang/Object;

    move-result-object v3

    const-string v6, "updatePreloadActionList - isExisted for %s is %b"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "updatePreloadActionList - isSupported: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;

    invoke-virtual {v6}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->isSupported()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "updatePreloadActionList - isInstalled: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;

    invoke-virtual {v6}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->isInstalled()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "updatePreloadActionList - isUsed: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;

    invoke-virtual {v6}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->isUsed()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;

    invoke-virtual {v3}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "updatePreloadActionList - isDefaultExt: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;

    invoke-virtual {v6}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->isInstalled()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz p2, :cond_5

    if-eqz v3, :cond_5

    :cond_4
    move v4, v5

    :cond_5
    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->isUsed()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updatePreloadActionList - calling addPreloadAction for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;

    invoke-virtual {v3}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->mPreloadManager:Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;

    invoke-virtual {v3}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;->setUsed(Ljava/lang/String;Z)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->addPreloadAction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method
