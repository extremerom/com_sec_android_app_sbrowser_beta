.class public Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage$JsonObjectHttpResponse;
.super Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsonObjectHttpResponse"
.end annotation


# instance fields
.field public final jsonObject:Lorg/json/JSONObject;

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
.method public constructor <init>(Lorg/json/JSONObject;Ljava/util/Map;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage$JsonObjectHttpResponse;->jsonObject:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/JsonObjectHttpMessage$JsonObjectHttpResponse;->responseHeaders:Ljava/util/Map;

    return-void
.end method
