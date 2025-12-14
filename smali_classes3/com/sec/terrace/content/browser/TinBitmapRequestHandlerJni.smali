.class public Lcom/sec/terrace/content/browser/TinBitmapRequestHandlerJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/content/browser/TinBitmapRequestHandler$Natives;


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

.method public static get()Lcom/sec/terrace/content/browser/TinBitmapRequestHandler$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandlerJni;

    invoke-direct {v0}, Lcom/sec/terrace/content/browser/TinBitmapRequestHandlerJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy(JLcom/sec/terrace/content/browser/TinBitmapRequestHandler;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M3Qmb_KE(JLjava/lang/Object;)V

    return-void
.end method

.method public getBitmapFromCache(JLcom/sec/terrace/content/browser/TinBitmapRequestHandler;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;I)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->M8L3CaU6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-void
.end method

.method public getContextMenuImage(JLcom/sec/terrace/content/browser/TinBitmapRequestHandler;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;I)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MwIn3d6r(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-void
.end method

.method public getImageBytes(JLcom/sec/terrace/content/browser/TinBitmapRequestHandler;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;I)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->Mef6Y$BJ(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-void
.end method

.method public init(Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;)J
    .locals 0

    invoke-static {p1}, LJ/N;->M2YMweA3(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method
