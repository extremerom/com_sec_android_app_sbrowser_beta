.class Lcom/sec/terrace/browser/provider/TinBrowserProvider$HistoryRow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/provider/TinBrowserProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryRow"
.end annotation


# instance fields
.field mCreated:Ljava/lang/Long;

.field mDate:Ljava/lang/Long;

.field mFavicon:[B

.field mId:J

.field mTitle:Ljava/lang/String;

.field mUrl:Ljava/lang/String;

.field mVisits:Ljava/lang/Integer;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromContentValues(Landroid/content/ContentValues;)Lcom/sec/terrace/browser/provider/TinBrowserProvider$HistoryRow;
    .locals 3

    new-instance v0, Lcom/sec/terrace/browser/provider/TinBrowserProvider$HistoryRow;

    invoke-direct {v0}, Lcom/sec/terrace/browser/provider/TinBrowserProvider$HistoryRow;-><init>()V

    const-string v1, "_id"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sec/terrace/browser/provider/TinBrowserProvider$HistoryRow;->mId:J

    :cond_0
    const-string v1, "url"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/browser/provider/TinBrowserProvider$HistoryRow;->mUrl:Ljava/lang/String;

    :cond_1
    const-string v1, "created"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/browser/provider/TinBrowserProvider$HistoryRow;->mCreated:Ljava/lang/Long;

    :cond_2
    const-string v1, "date"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/browser/provider/TinBrowserProvider$HistoryRow;->mDate:Ljava/lang/Long;

    :cond_3
    const-string v1, "favicon"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/browser/provider/TinBrowserProvider$HistoryRow;->mFavicon:[B

    if-nez v1, :cond_4

    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/sec/terrace/browser/provider/TinBrowserProvider$HistoryRow;->mFavicon:[B

    :cond_4
    const-string v1, "title"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/browser/provider/TinBrowserProvider$HistoryRow;->mTitle:Ljava/lang/String;

    :cond_5
    const-string v1, "visits"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/sec/terrace/browser/provider/TinBrowserProvider$HistoryRow;->mVisits:Ljava/lang/Integer;

    :cond_6
    return-object v0
.end method
