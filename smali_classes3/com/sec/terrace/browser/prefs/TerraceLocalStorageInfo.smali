.class public Lcom/sec/terrace/browser/prefs/TerraceLocalStorageInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final mOrigin:Ljava/lang/String;

.field private final mSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/prefs/TerraceLocalStorageInfo;->mOrigin:Ljava/lang/String;

    iput-wide p2, p0, Lcom/sec/terrace/browser/prefs/TerraceLocalStorageInfo;->mSize:J

    return-void
.end method


# virtual methods
.method public clear(Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$StorageInfoClearedCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/prefs/TerraceLocalStorageInfo;->mOrigin:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge;->clearLocalStorageData(Ljava/lang/String;Lcom/sec/terrace/browser/prefs/TerraceWebsitePreferenceBridge$StorageInfoClearedCallback;)V

    return-void
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/browser/prefs/TerraceLocalStorageInfo;->mSize:J

    return-wide v0
.end method
