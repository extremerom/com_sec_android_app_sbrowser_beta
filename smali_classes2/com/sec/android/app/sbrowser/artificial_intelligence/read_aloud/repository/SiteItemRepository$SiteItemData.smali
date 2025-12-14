.class Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/repository/SiteItemRepository$SiteItemData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/repository/SiteItemRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SiteItemData"
.end annotation


# instance fields
.field private mSites:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sites"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudSiteItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "size"
    .end annotation
.end field

.field private mVersion:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/repository/SiteItemRepository$SiteItemData;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/repository/SiteItemRepository$SiteItemData;->mSites:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/repository/SiteItemRepository$SiteItemData;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/repository/SiteItemRepository$SiteItemData;->mSize:I

    return p0
.end method
