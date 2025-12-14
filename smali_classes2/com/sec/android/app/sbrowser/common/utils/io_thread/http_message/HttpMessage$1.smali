.class Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$1;
.super Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionOpener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$1;->this$0:Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionOpener;-><init>()V

    return-void
.end method


# virtual methods
.method public open(Ljava/net/URL;)Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$HttpUrlConnectionAdapter;
    .locals 1

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$1$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$1$1;-><init>(Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpMessage$1;Ljava/net/HttpURLConnection;)V

    return-object v0
.end method
