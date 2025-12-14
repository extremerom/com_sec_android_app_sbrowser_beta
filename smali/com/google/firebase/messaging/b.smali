.class public final Lcom/google/firebase/messaging/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu7/d;


# static fields
.field public static final a:Lcom/google/firebase/messaging/b;

.field public static final b:Lu7/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/firebase/messaging/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/b;->a:Lcom/google/firebase/messaging/b;

    invoke-static {}, LMd/c;->c()LMd/c;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, LMd/c;->b:I

    invoke-virtual {v0}, LMd/c;->a()Lx7/a;

    move-result-object v0

    const-class v1, Lcom/google/firebase/encoders/proto/Protobuf;

    invoke-static {v1, v0}, LB/e;->v(Ljava/lang/Class;Lx7/a;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Lu7/c;

    invoke-static {v0}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "messagingClientEvent"

    invoke-direct {v1, v2, v0}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v1, Lcom/google/firebase/messaging/b;->b:Lu7/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LI7/e;

    check-cast p2, Lu7/e;

    iget-object p0, p1, LI7/e;->a:LI7/d;

    sget-object p1, Lcom/google/firebase/messaging/b;->b:Lu7/c;

    invoke-interface {p2, p1, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    return-void
.end method
