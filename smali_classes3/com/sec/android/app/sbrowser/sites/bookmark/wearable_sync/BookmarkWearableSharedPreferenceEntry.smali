.class public Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final bookmarkId:J


# direct methods
.method public constructor <init>(Ljava/lang/Long;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceEntry;->bookmarkId:J

    return-void
.end method

.method public static parseFromString(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceEntry;
    .locals 2

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceEntry;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceEntry;-><init>(Ljava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method public getSharedPreferenceString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSharedPreferenceEntry;->bookmarkId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
