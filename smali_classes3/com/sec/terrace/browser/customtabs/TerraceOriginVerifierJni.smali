.class public Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifierJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$Natives;


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

.method public static get()Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifierJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifierJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy(JLcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Mag3cLPy(JLjava/lang/Object;)V

    return-void
.end method

.method public init(Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;)J
    .locals 0

    invoke-static {p1}, LJ/N;->MVfm_a7d(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public verifyOrigin(JLcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->MJHLxdi4(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
