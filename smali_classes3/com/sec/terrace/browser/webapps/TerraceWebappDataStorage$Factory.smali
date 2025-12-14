.class Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;
    .locals 0

    new-instance p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
