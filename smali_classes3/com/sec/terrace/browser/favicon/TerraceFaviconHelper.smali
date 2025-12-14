.class public Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$Natives;,
        Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;
    }
.end annotation


# instance fields
.field private mNativeTinFaviconHelper:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelperJni;->get()Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$Natives;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$Natives;->init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->mNativeTinFaviconHelper:J

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 6

    iget-wide v0, p0, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->mNativeTinFaviconHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelperJni;->get()Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$Natives;

    move-result-object v0

    iget-wide v4, p0, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->mNativeTinFaviconHelper:J

    invoke-interface {v0, v4, v5}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$Natives;->destroy(J)V

    iput-wide v2, p0, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->mNativeTinFaviconHelper:J

    return-void
.end method

.method public getLargestRawFaviconForUrl(Ljava/lang/String;[IILcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;)V
    .locals 8
    .param p2    # [I
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->mNativeTinFaviconHelper:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "TerraceFaviconHelper"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelperJni;->get()Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$Natives;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->mNativeTinFaviconHelper:J

    add-int/lit8 v6, p3, -0x1

    move-object v5, p1

    move-object v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$Natives;->getLargestRawFaviconForUrl(JLjava/lang/String;ILcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;)V

    return-void
.end method

.method public getLocalFaviconImageForURL(Ljava/lang/String;IILcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;)Z
    .locals 8

    iget-wide v0, p0, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->mNativeTinFaviconHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelperJni;->get()Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->mNativeTinFaviconHelper:J

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$Natives;->getLocalFaviconImageForURL(JLjava/lang/String;IILcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;)Z

    move-result p0

    return p0
.end method

.method public getLocalFaviconImageForURL(Ljava/lang/String;ILcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;)Z
    .locals 8

    iget-wide v0, p0, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->mNativeTinFaviconHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelperJni;->get()Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->mNativeTinFaviconHelper:J

    const/4 v5, 0x7

    move-object v4, p1

    move v6, p2

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$Natives;->getLocalFaviconImageForURL(JLjava/lang/String;IILcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;)Z

    move-result p0

    return p0
.end method

.method public updateDominantColor(Ljava/lang/String;J)V
    .locals 7

    iget-wide v0, p0, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->mNativeTinFaviconHelper:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelperJni;->get()Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->mNativeTinFaviconHelper:J

    move-object v4, p1

    move-wide v5, p2

    invoke-interface/range {v1 .. v6}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$Natives;->updateDominantColor(JLjava/lang/String;J)V

    return-void
.end method
