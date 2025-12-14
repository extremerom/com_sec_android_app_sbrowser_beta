.class public final LG5/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7/a;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;

.field public final c:LG5/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LG5/k;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LG5/k;->b:Ljava/util/HashMap;

    sget-object v0, LG5/i;->c:LG5/i;

    iput-object v0, p0, LG5/k;->c:LG5/i;

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap;LG5/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG5/k;->a:Ljava/util/HashMap;

    iput-object p2, p0, LG5/k;->b:Ljava/util/HashMap;

    iput-object p3, p0, LG5/k;->c:LG5/i;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Class;Lu7/d;)Lv7/a;
    .locals 1

    iget-object v0, p0, LG5/k;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, LG5/k;->b:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public b(LG5/P2;)[B
    .locals 5

    const-class v0, LG5/P2;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v2, LG5/j;

    iget-object v3, p0, LG5/k;->a:Ljava/util/HashMap;

    iget-object v4, p0, LG5/k;->b:Ljava/util/HashMap;

    iget-object p0, p0, LG5/k;->c:LG5/i;

    invoke-direct {v2, v1, v3, v4, p0}, LG5/j;-><init>(Ljava/io/ByteArrayOutputStream;Ljava/util/HashMap;Ljava/util/HashMap;LG5/i;)V

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu7/d;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, v2}, Lu7/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lu7/b;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "No encoder for "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
