.class public Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtensionContextMenuItem"
.end annotation


# instance fields
.field private mChecked:Z

.field private mCommandId:I

.field private mEnabled:Z

.field private mExtensionId:Ljava/lang/String;

.field private mHasSubmenu:Z

.field private mIcon:Landroid/graphics/Bitmap;

.field private mIsFirst:Z

.field private mKey:Ljava/lang/String;

.field private mLabel:Ljava/lang/String;

.field private mParentId:I

.field private mSubmenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mVisible:Z

.field final synthetic this$0:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;Ljava/lang/String;Ljava/lang/String;IZILandroid/graphics/Bitmap;ZLjava/lang/String;ZZZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->this$0:Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->mSubmenuItems:Ljava/util/List;

    iput-object p2, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->mLabel:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->mExtensionId:Ljava/lang/String;

    iput p4, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->mCommandId:I

    iput-boolean p5, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->mHasSubmenu:Z

    iput p6, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->mParentId:I

    iput-object p7, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->mIcon:Landroid/graphics/Bitmap;

    iput-boolean p8, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->mIsFirst:Z

    iput-object p9, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->mKey:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->mChecked:Z

    iput-boolean p11, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->mVisible:Z

    iput-boolean p12, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public getCommandId()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->mCommandId:I

    return p0
.end method

.method public getExtensionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->mExtensionId:Ljava/lang/String;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getMenuIcon()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->mIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getSubmenu()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->mSubmenuItems:Ljava/util/List;

    return-object p0
.end method

.method public hasSubmenu()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->mHasSubmenu:Z

    return p0
.end method

.method public isFirstParty()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->mIsFirst:Z

    return p0
.end method

.method public isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->mVisible:Z

    return p0
.end method
