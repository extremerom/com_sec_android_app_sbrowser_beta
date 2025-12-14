.class public Lcom/sec/android/app/sbrowser/hello/HelloService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/services/TerraceServiceBase;
.implements Lcom/sec/terrace/services/hello/mojom/TerraceHello;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ping(ILcom/sec/terrace/services/hello/mojom/TerraceHello$Ping_Response;)V
    .locals 0

    invoke-interface {p2, p1}, Lcom/sec/terrace/services/hello/mojom/TerraceHello$Ping_Response;->call(I)V

    return-void
.end method
