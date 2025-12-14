.class Lcom/sec/terrace/TerraceSecurityStateModelJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceSecurityStateModel$Natives;


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

.method public static get()Lcom/sec/terrace/TerraceSecurityStateModel$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/TerraceSecurityStateModelJni;

    invoke-direct {v0}, Lcom/sec/terrace/TerraceSecurityStateModelJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getSecurityLevelForWebContents(Lorg/chromium/content_public/browser/WebContents;)I
    .locals 0

    invoke-static {p1}, LJ/N;->MbLM$XRv(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
