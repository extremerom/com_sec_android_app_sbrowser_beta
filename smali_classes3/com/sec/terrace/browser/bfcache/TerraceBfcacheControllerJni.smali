.class public Lcom/sec/terrace/browser/bfcache/TerraceBfcacheControllerJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController$Natives;


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

.method public static get()Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheControllerJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheControllerJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public doNotStoreCurrentPage(JLcom/sec/terrace/browser/bfcache/TerraceBfcacheController;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M7E1j7j4(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public flushEntry(JLcom/sec/terrace/browser/bfcache/TerraceBfcacheController;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MVBSf7is(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public init(Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;)J
    .locals 0

    invoke-static {p1}, LJ/N;->MprXmwgj(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public setAllowList(JLcom/sec/terrace/browser/bfcache/TerraceBfcacheController;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MnwaoPBE(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setBlockedFeatures(JLcom/sec/terrace/browser/bfcache/TerraceBfcacheController;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MOe3XeHy(JLjava/lang/Object;I)V

    return-void
.end method

.method public setBlockedUrl(JLcom/sec/terrace/browser/bfcache/TerraceBfcacheController;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M6Q84eAN(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setConfigSetting(JLcom/sec/terrace/browser/bfcache/TerraceBfcacheController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MXPckQqH(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
