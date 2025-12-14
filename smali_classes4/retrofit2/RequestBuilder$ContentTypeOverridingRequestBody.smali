.class Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;
.super Lhd/Q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/RequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentTypeOverridingRequestBody"
.end annotation


# instance fields
.field private final contentType:Lhd/D;

.field private final delegate:Lhd/Q;


# direct methods
.method public constructor <init>(Lhd/Q;Lhd/D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Lhd/Q;

    iput-object p2, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->contentType:Lhd/D;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget-object p0, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Lhd/Q;

    invoke-virtual {p0}, Lhd/Q;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lhd/D;
    .locals 0

    iget-object p0, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->contentType:Lhd/D;

    return-object p0
.end method

.method public writeTo(Lwd/h;)V
    .locals 0

    iget-object p0, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Lhd/Q;

    invoke-virtual {p0, p1}, Lhd/Q;->writeTo(Lwd/h;)V

    return-void
.end method
