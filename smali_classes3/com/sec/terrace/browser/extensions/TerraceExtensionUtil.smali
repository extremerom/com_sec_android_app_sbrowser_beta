.class public Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$TerraceExtensionUtilObserver;,
        Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$LazyHolder;,
        Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;
    }
.end annotation


# instance fields
.field private final mNativeTinExtensionUtil:J

.field private final mObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$TerraceExtensionUtilObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EnableExtensions"

    invoke-static {v0}, Lcom/sec/terrace/TerraceFeatureList;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtilJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;->init(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;)Lorg/chromium/base/ObserverList;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mObservers:Lorg/chromium/base/ObserverList;

    return-object p0
.end method

.method public static getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$LazyHolder;->a()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canBeSecretModeEnabled(Ljava/lang/String;)Z
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string p0, "TerraceExtensionUtil"

    const-string p1, "canBeSecretModeEnabled - No native to call"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtilJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;->canBeSecretModeEnabled(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getExtensionOptionPage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string p0, "TerraceExtensionUtil"

    const-string p1, "getExtensionOptionPage - No native to call. Aborting!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtilJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;->getExtensionOptionPage(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExtensionPermissions(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string p0, "TerraceExtensionUtil"

    const-string p1, "getExtensionPermissions - No native to call. Aborting!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtilJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    invoke-interface {v1, v2, v3, p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;->getExtensionPermissions(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getExtensionPermissionsWithAPISet([I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string p0, "TerraceExtensionUtil"

    const-string p1, "getExtensionPermissionsWithAPISet - No native to call"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtilJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    invoke-interface {v1, v2, v3, p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;->getExtensionPermissionsWithAPISet(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;[I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getInstallSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getInstallSource for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TerraceExtensionUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const-string p0, "getInstallSource - null. no native to call"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtilJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;->getInstallSource(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInstalledExtVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string p0, "TerraceExtensionUtil"

    const-string p1, "getInstalledExtVersion - No native to call. Aborting!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtilJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;->getInstalledExtVer(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSecretModeState(Ljava/lang/String;)Z
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string p0, "TerraceExtensionUtil"

    const-string p1, "getSecretModeState - No native to call"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtilJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;->getSecretModeState(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public initialized()Z
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtilJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;->initialized(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabledInNative(Ljava/lang/String;)Z
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string p0, "TerraceExtensionUtil"

    const-string p1, "isEnabledInNative - No native to call"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtilJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;->isEnabledInNative(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isFirstParty(Ljava/lang/String;)Z
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string p0, "TerraceExtensionUtil"

    const-string p1, "isFirstParty - No native to call"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtilJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;->isFirstParty(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isInstalledInNative(Ljava/lang/String;)Z
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string p0, "TerraceExtensionUtil"

    const-string p1, "isInstalledInNative - No native to call"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtilJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;->isInstalledInNative(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public readSIXOrigin(Ljava/lang/String;)I
    .locals 6

    const-string v0, "readSIXOrigin running for "

    const-string v1, "TerraceExtensionUtil"

    invoke-static {v0, p1, v1}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const-string p0, "readSIXOrigin - No native to call. Aborting!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtilJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;->readSIXOrigin(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public registerObserver(Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$TerraceExtensionUtilObserver;)V
    .locals 0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public setInstallSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setInstallSource for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TerraceExtensionUtil"

    invoke-static {v0, p2, v1}, Lt/b;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const-string p0, "setInstallSource - abort. no native to call"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtilJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;->setInstallSource(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public storeSIXOrigin(Ljava/lang/String;I)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "storeSIXOrigin running with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TerraceExtensionUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const-string p0, "storeSIXOrigin - No native to call. Aborting!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtilJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    invoke-interface/range {v2 .. v7}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;->storeSIXOrigin(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;I)V

    return-void
.end method

.method public unregisterObserver(Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$TerraceExtensionUtilObserver;)V
    .locals 2

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$1;-><init>(Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$TerraceExtensionUtilObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateSecretModeState(Ljava/lang/String;Z)V
    .locals 6

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string p0, "TerraceExtensionUtil"

    const-string p1, "updateSecretModeState - No native to call"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtilJni;->get()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mNativeTinExtensionUtil:J

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$Natives;->updateSecretModeState(JLcom/sec/terrace/browser/extensions/TerraceExtensionUtil;Ljava/lang/String;Z)V

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$TerraceExtensionUtilObserver;

    invoke-interface {v0, p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil$TerraceExtensionUtilObserver;->updateSecretModeState(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
