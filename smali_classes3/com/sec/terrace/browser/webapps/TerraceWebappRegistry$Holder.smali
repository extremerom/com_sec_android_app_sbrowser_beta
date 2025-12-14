.class Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field private static sInstance:Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;-><init>(I)V

    sput-object v0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$Holder;->sInstance:Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    return-void
.end method

.method public static bridge synthetic a()Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$Holder;->sInstance:Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    return-object v0
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;)V
    .locals 0

    sput-object p0, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$Holder;->sInstance:Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    return-void
.end method
