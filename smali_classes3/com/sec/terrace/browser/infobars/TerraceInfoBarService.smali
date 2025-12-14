.class public Lcom/sec/terrace/browser/infobars/TerraceInfoBarService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/infobars/TerraceInfoBarService$TerraceInfoBarServiceDelegate;
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/sec/terrace/browser/infobars/TerraceInfoBarService$TerraceInfoBarServiceDelegate;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/sec/terrace/browser/infobars/TerraceInfoBarService;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/infobars/TerraceInfoBarService;

    invoke-direct {v0}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarService;-><init>()V

    return-object v0
.end method

.method private destroy()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/infobars/TerraceInfoBarService;->mDelegate:Lcom/sec/terrace/browser/infobars/TerraceInfoBarService$TerraceInfoBarServiceDelegate;

    return-void
.end method


# virtual methods
.method public addInfoBar(Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;)Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/infobars/TerraceInfoBarService;->mDelegate:Lcom/sec/terrace/browser/infobars/TerraceInfoBarService$TerraceInfoBarServiceDelegate;

    if-nez p0, :cond_0

    const-string p0, "TerraceInfoBarService"

    const-string p1, "addInfoBar delegate is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarService$TerraceInfoBarServiceDelegate;->addInfoBar(Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;)Z

    move-result p0

    return p0
.end method

.method public removeInfoBar(Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;)Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/infobars/TerraceInfoBarService;->mDelegate:Lcom/sec/terrace/browser/infobars/TerraceInfoBarService$TerraceInfoBarServiceDelegate;

    if-nez p0, :cond_0

    const-string p0, "TerraceInfoBarService"

    const-string p1, "removeInfoBar delegate is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarService$TerraceInfoBarServiceDelegate;->removeInfoBar(Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;)Z

    move-result p0

    return p0
.end method

.method public setDelegate(Lcom/sec/terrace/browser/infobars/TerraceInfoBarService$TerraceInfoBarServiceDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/infobars/TerraceInfoBarService;->mDelegate:Lcom/sec/terrace/browser/infobars/TerraceInfoBarService$TerraceInfoBarServiceDelegate;

    return-void
.end method
