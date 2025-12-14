.class public Lcom/sec/terrace/TerraceStateJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceState$Natives;


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

.method public static get()Lcom/sec/terrace/TerraceState$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/TerraceStateJni;

    invoke-direct {v0}, Lcom/sec/terrace/TerraceStateJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public freeWebContentsStateBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-static {p1}, LJ/N;->MQ9UbV3P(Ljava/lang/Object;)V

    return-void
.end method

.method public getContentsStateAsByteBuffer(Lorg/chromium/content_public/browser/WebContents;)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-static {p1}, LJ/N;->McyjeNsL(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getDisplayTitleFromByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M$NN22gs(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public restoreContentsFromByteBuffer(Ljava/nio/ByteBuffer;IZ)Lorg/chromium/content_public/browser/WebContents;
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M1EQ83VR(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/content_public/browser/WebContents;

    return-object p0
.end method
