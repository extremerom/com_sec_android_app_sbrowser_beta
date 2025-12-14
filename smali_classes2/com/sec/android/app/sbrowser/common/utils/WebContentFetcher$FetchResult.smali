.class Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FetchResult"
.end annotation


# instance fields
.field mContent:Ljava/lang/Object;

.field mContentUrl:Ljava/lang/String;

.field mPageUrl:Ljava/lang/String;

.field mType:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;-><init>()V

    return-void
.end method
