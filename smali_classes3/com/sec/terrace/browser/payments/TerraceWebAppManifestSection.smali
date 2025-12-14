.class public final Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final fingerprints:[[B

.field public final id:Ljava/lang/String;

.field public final minVersion:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;->id:Ljava/lang/String;

    iput-wide p2, p0, Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;->minVersion:J

    new-array p1, p4, [[B

    iput-object p1, p0, Lcom/sec/terrace/browser/payments/TerraceWebAppManifestSection;->fingerprints:[[B

    return-void
.end method
