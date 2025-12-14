.class public Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;
.super Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FetchResponse"
.end annotation


# instance fields
.field public final body:Ljava/io/ByteArrayOutputStream;

.field public final responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/io/ByteArrayOutputStream;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/io/ByteArrayOutputStream;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;->responseHeaders:Ljava/util/Map;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;->body:Ljava/io/ByteArrayOutputStream;

    return-void
.end method
