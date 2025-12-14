.class Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Clock;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Clock"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Clock;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Clock;)J
    .locals 2

    invoke-direct {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Clock;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private currentTimeMillis()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
