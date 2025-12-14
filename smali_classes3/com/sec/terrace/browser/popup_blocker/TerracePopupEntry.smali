.class public Lcom/sec/terrace/browser/popup_blocker/TerracePopupEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mPopupBlocked:Z

.field private mTimestamp:J

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/popup_blocker/TerracePopupEntry;->mUrl:Ljava/lang/String;

    iput-wide p2, p0, Lcom/sec/terrace/browser/popup_blocker/TerracePopupEntry;->mTimestamp:J

    iput-boolean p4, p0, Lcom/sec/terrace/browser/popup_blocker/TerracePopupEntry;->mPopupBlocked:Z

    return-void
.end method


# virtual methods
.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/browser/popup_blocker/TerracePopupEntry;->mTimestamp:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/popup_blocker/TerracePopupEntry;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public isPopupBlocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/popup_blocker/TerracePopupEntry;->mPopupBlocked:Z

    return p0
.end method
