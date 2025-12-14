.class public final LH4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu7/d;


# static fields
.field public static final a:LH4/g;

.field public static final b:Lu7/c;

.field public static final c:Lu7/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LH4/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LH4/g;->a:LH4/g;

    invoke-static {}, LMd/c;->c()LMd/c;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, LMd/c;->b:I

    invoke-virtual {v0}, LMd/c;->a()Lx7/a;

    move-result-object v0

    const-class v1, Lcom/google/firebase/encoders/proto/Protobuf;

    invoke-static {v1, v0}, LB/e;->v(Ljava/lang/Class;Lx7/a;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v2, Lu7/c;

    invoke-static {v0}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "startMs"

    invoke-direct {v2, v3, v0}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, LH4/g;->b:Lu7/c;

    invoke-static {}, LMd/c;->c()LMd/c;

    move-result-object v0

    const/4 v2, 0x2

    iput v2, v0, LMd/c;->b:I

    invoke-virtual {v0}, LMd/c;->a()Lx7/a;

    move-result-object v0

    invoke-static {v1, v0}, LB/e;->v(Ljava/lang/Class;Lx7/a;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Lu7/c;

    invoke-static {v0}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "endMs"

    invoke-direct {v1, v2, v0}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v1, LH4/g;->c:Lu7/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, LK4/g;

    check-cast p2, Lu7/e;

    iget-wide v0, p1, LK4/g;->a:J

    sget-object p0, LH4/g;->b:Lu7/c;

    invoke-interface {p2, p0, v0, v1}, Lu7/e;->a(Lu7/c;J)Lu7/e;

    sget-object p0, LH4/g;->c:Lu7/c;

    iget-wide v0, p1, LK4/g;->b:J

    invoke-interface {p2, p0, v0, v1}, Lu7/e;->a(Lu7/c;J)Lu7/e;

    return-void
.end method
