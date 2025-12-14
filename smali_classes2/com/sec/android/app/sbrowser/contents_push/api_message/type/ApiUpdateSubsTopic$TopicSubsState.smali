.class Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiUpdateSubsTopic$TopicSubsState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiUpdateSubsTopic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TopicSubsState"
.end annotation


# instance fields
.field private final mId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private final mState:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "state"
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiUpdateSubsTopic$TopicSubsState;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiUpdateSubsTopic$TopicSubsState;->mId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/contents_push/api_message/type/ApiUpdateSubsTopic$TopicSubsState;->mState:Z

    return-void
.end method
