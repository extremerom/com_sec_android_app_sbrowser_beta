.class public Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mTime:J

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordItem;->mTitle:Ljava/lang/String;

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordItem;->mTime:J

    return-void
.end method


# virtual methods
.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordItem;->mTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method
