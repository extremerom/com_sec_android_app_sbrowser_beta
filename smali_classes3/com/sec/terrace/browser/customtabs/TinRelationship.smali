.class public Lcom/sec/terrace/browser/customtabs/TinRelationship;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final origin:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

.field public final packageName:Ljava/lang/String;

.field public final relation:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/customtabs/TinRelationship;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/terrace/browser/customtabs/TinRelationship;->origin:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    iput p3, p0, Lcom/sec/terrace/browser/customtabs/TinRelationship;->relation:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/terrace/browser/customtabs/TinRelationship;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/terrace/browser/customtabs/TinRelationship;->origin:Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/terrace/browser/customtabs/TinRelationship;->relation:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
