.class public Lcom/sec/terrace/browser/favicon/TinFaviconManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/favicon/TinFaviconManager$Natives;,
        Lcom/sec/terrace/browser/favicon/TinFaviconManager$FaviconListener;
    }
.end annotation


# instance fields
.field private mFaviconListener:Lcom/sec/terrace/browser/favicon/TinFaviconManager$FaviconListener;

.field private mNativeTinFaviconManager:J


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/terrace/browser/favicon/TinFaviconManagerJni;->get()Lcom/sec/terrace/browser/favicon/TinFaviconManager$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/favicon/TinFaviconManager$Natives;->init(Lcom/sec/terrace/browser/favicon/TinFaviconManager;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/favicon/TinFaviconManager;->mNativeTinFaviconManager:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/favicon/TinFaviconManagerJni;->get()Lcom/sec/terrace/browser/favicon/TinFaviconManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/favicon/TinFaviconManager;->mNativeTinFaviconManager:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/favicon/TinFaviconManager$Natives;->destroy(JLcom/sec/terrace/browser/favicon/TinFaviconManager;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/favicon/TinFaviconManager;->mNativeTinFaviconManager:J

    return-void
.end method

.method public destroyFaviconDriver()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/favicon/TinFaviconManager;->mNativeTinFaviconManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/browser/favicon/TinFaviconManagerJni;->get()Lcom/sec/terrace/browser/favicon/TinFaviconManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/favicon/TinFaviconManager;->mNativeTinFaviconManager:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/favicon/TinFaviconManager$Natives;->destroyFaviconDriver(JLcom/sec/terrace/browser/favicon/TinFaviconManager;)V

    return-void
.end method

.method public initFaviconDriver(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/favicon/TinFaviconManager;->mNativeTinFaviconManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/browser/favicon/TinFaviconManagerJni;->get()Lcom/sec/terrace/browser/favicon/TinFaviconManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/favicon/TinFaviconManager;->mNativeTinFaviconManager:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/favicon/TinFaviconManager$Natives;->initFaviconDriver(JLcom/sec/terrace/browser/favicon/TinFaviconManager;Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method public onFaviconAvailable(Landroid/graphics/Bitmap;Z)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/favicon/TinFaviconManager;->mFaviconListener:Lcom/sec/terrace/browser/favicon/TinFaviconManager$FaviconListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/browser/favicon/TinFaviconManager$FaviconListener;->onFaviconAvailable(Landroid/graphics/Bitmap;Z)V

    :cond_0
    return-void
.end method

.method public setFaviconListener(Lcom/sec/terrace/browser/favicon/TinFaviconManager$FaviconListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/favicon/TinFaviconManager;->mFaviconListener:Lcom/sec/terrace/browser/favicon/TinFaviconManager$FaviconListener;

    return-void
.end method
