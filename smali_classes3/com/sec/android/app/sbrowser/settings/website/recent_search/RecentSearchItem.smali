.class public Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDateTime:J

.field private mId:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchItem;->mId:I

    iput-wide p3, p0, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchItem;->mDateTime:J

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchItem;->mTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method
