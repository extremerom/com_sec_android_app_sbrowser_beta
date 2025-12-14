.class Lcom/sec/terrace/TerraceExternalPrerenderHandlerJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceExternalPrerenderHandler$Natives;


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

.method public static get()Lcom/sec/terrace/TerraceExternalPrerenderHandler$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/TerraceExternalPrerenderHandlerJni;

    invoke-direct {v0}, Lcom/sec/terrace/TerraceExternalPrerenderHandlerJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addPrerender(JLorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->MgI4sZEi(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Z

    move-result p0

    return p0
.end method

.method public cancelCurrentPrerender(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MYAuqQvL(J)V

    return-void
.end method

.method public init()J
    .locals 2

    invoke-static {}, LJ/N;->M90_0eQ9()J

    move-result-wide v0

    return-wide v0
.end method
