.class public Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtensionActionItem"
.end annotation


# instance fields
.field private mFirstParty:Z

.field private mIconResId:I

.field private mId:Ljava/lang/String;

.field private mNameResId:I

.field private mSupported:Z

.field private mUsed:Z

.field final synthetic this$0:Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;II)V
    .locals 6

    const-string v2, "khmmfcceknncifmkiimjnnjldibgajpl"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;-><init>(Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;Ljava/lang/String;IIZ)V

    return-void
.end method

.method private constructor <init>(Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;Ljava/lang/String;IIZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->mId:Ljava/lang/String;

    iput p3, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->mNameResId:I

    iput p4, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->mIconResId:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->mSupported:Z

    iput-boolean p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->mUsed:Z

    iput-boolean p5, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->mFirstParty:Z

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/Bitmap;
    .locals 5

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "ExtensionsPreloadManager"

    const-string v0, "getIcon terraceActivity is null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->mIconResId:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->mNameResId:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isFirstParty()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->mFirstParty:Z

    return p0
.end method

.method public isInstalled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->mId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->isInstalledInNative(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->mSupported:Z

    return p0
.end method

.method public isUsed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->mUsed:Z

    return p0
.end method

.method public setSupported()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->mSupported:Z

    return-void
.end method

.method public setUsed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionsPreloadManager$ExtensionActionItem;->mUsed:Z

    return-void
.end method
