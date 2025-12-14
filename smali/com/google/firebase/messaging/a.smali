.class public final Lcom/google/firebase/messaging/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu7/d;


# static fields
.field public static final a:Lcom/google/firebase/messaging/a;

.field public static final b:Lu7/c;

.field public static final c:Lu7/c;

.field public static final d:Lu7/c;

.field public static final e:Lu7/c;

.field public static final f:Lu7/c;

.field public static final g:Lu7/c;

.field public static final h:Lu7/c;

.field public static final i:Lu7/c;

.field public static final j:Lu7/c;

.field public static final k:Lu7/c;

.field public static final l:Lu7/c;

.field public static final m:Lu7/c;

.field public static final n:Lu7/c;

.field public static final o:Lu7/c;

.field public static final p:Lu7/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/firebase/messaging/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/a;->a:Lcom/google/firebase/messaging/a;

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

    const-string v3, "projectNumber"

    invoke-direct {v2, v3, v0}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/google/firebase/messaging/a;->b:Lu7/c;

    invoke-static {}, LMd/c;->c()LMd/c;

    move-result-object v0

    const/4 v2, 0x2

    iput v2, v0, LMd/c;->b:I

    invoke-virtual {v0}, LMd/c;->a()Lx7/a;

    move-result-object v0

    invoke-static {v1, v0}, LB/e;->v(Ljava/lang/Class;Lx7/a;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v2, Lu7/c;

    invoke-static {v0}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "messageId"

    invoke-direct {v2, v3, v0}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/google/firebase/messaging/a;->c:Lu7/c;

    invoke-static {}, LMd/c;->c()LMd/c;

    move-result-object v0

    const/4 v2, 0x3

    iput v2, v0, LMd/c;->b:I

    invoke-virtual {v0}, LMd/c;->a()Lx7/a;

    move-result-object v0

    invoke-static {v1, v0}, LB/e;->v(Ljava/lang/Class;Lx7/a;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v2, Lu7/c;

    invoke-static {v0}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "instanceId"

    invoke-direct {v2, v3, v0}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/google/firebase/messaging/a;->d:Lu7/c;

    invoke-static {}, LMd/c;->c()LMd/c;

    move-result-object v0

    const/4 v2, 0x4

    iput v2, v0, LMd/c;->b:I

    invoke-virtual {v0}, LMd/c;->a()Lx7/a;

    move-result-object v0

    invoke-static {v1, v0}, LB/e;->v(Ljava/lang/Class;Lx7/a;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v2, Lu7/c;

    invoke-static {v0}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "messageType"

    invoke-direct {v2, v3, v0}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/google/firebase/messaging/a;->e:Lu7/c;

    invoke-static {}, LMd/c;->c()LMd/c;

    move-result-object v0

    const/4 v2, 0x5

    iput v2, v0, LMd/c;->b:I

    invoke-virtual {v0}, LMd/c;->a()Lx7/a;

    move-result-object v0

    invoke-static {v1, v0}, LB/e;->v(Ljava/lang/Class;Lx7/a;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v2, Lu7/c;

    invoke-static {v0}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "sdkPlatform"

    invoke-direct {v2, v3, v0}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/google/firebase/messaging/a;->f:Lu7/c;

    invoke-static {}, LMd/c;->c()LMd/c;

    move-result-object v0

    const/4 v2, 0x6

    iput v2, v0, LMd/c;->b:I

    invoke-virtual {v0}, LMd/c;->a()Lx7/a;

    move-result-object v0

    invoke-static {v1, v0}, LB/e;->v(Ljava/lang/Class;Lx7/a;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v2, Lu7/c;

    invoke-static {v0}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "packageName"

    invoke-direct {v2, v3, v0}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/google/firebase/messaging/a;->g:Lu7/c;

    invoke-static {}, LMd/c;->c()LMd/c;

    move-result-object v0

    const/4 v2, 0x7

    iput v2, v0, LMd/c;->b:I

    invoke-virtual {v0}, LMd/c;->a()Lx7/a;

    move-result-object v0

    invoke-static {v1, v0}, LB/e;->v(Ljava/lang/Class;Lx7/a;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v2, Lu7/c;

    invoke-static {v0}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "collapseKey"

    invoke-direct {v2, v3, v0}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/google/firebase/messaging/a;->h:Lu7/c;

    invoke-static {}, LMd/c;->c()LMd/c;

    move-result-object v0

    const/16 v2, 0x8

    iput v2, v0, LMd/c;->b:I

    invoke-virtual {v0}, LMd/c;->a()Lx7/a;

    move-result-object v0

    invoke-static {v1, v0}, LB/e;->v(Ljava/lang/Class;Lx7/a;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v2, Lu7/c;

    invoke-static {v0}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "priority"

    invoke-direct {v2, v3, v0}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/google/firebase/messaging/a;->i:Lu7/c;

    invoke-static {}, LMd/c;->c()LMd/c;

    move-result-object v0

    const/16 v2, 0x9

    iput v2, v0, LMd/c;->b:I

    invoke-virtual {v0}, LMd/c;->a()Lx7/a;

    move-result-object v0

    invoke-static {v1, v0}, LB/e;->v(Ljava/lang/Class;Lx7/a;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v2, Lu7/c;

    invoke-static {v0}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "ttl"

    invoke-direct {v2, v3, v0}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/google/firebase/messaging/a;->j:Lu7/c;

    invoke-static {}, LMd/c;->c()LMd/c;

    move-result-object v0

    const/16 v2, 0xa

    iput v2, v0, LMd/c;->b:I

    invoke-virtual {v0}, LMd/c;->a()Lx7/a;

    move-result-object v0

    invoke-static {v1, v0}, LB/e;->v(Ljava/lang/Class;Lx7/a;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v2, Lu7/c;

    invoke-static {v0}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "topic"

    invoke-direct {v2, v3, v0}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/google/firebase/messaging/a;->k:Lu7/c;

    invoke-static {}, LMd/c;->c()LMd/c;

    move-result-object v0

    const/16 v2, 0xb

    iput v2, v0, LMd/c;->b:I

    invoke-virtual {v0}, LMd/c;->a()Lx7/a;

    move-result-object v0

    invoke-static {v1, v0}, LB/e;->v(Ljava/lang/Class;Lx7/a;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v2, Lu7/c;

    invoke-static {v0}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "bulkId"

    invoke-direct {v2, v3, v0}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/google/firebase/messaging/a;->l:Lu7/c;

    invoke-static {}, LMd/c;->c()LMd/c;

    move-result-object v0

    const/16 v2, 0xc

    iput v2, v0, LMd/c;->b:I

    invoke-virtual {v0}, LMd/c;->a()Lx7/a;

    move-result-object v0

    invoke-static {v1, v0}, LB/e;->v(Ljava/lang/Class;Lx7/a;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v2, Lu7/c;

    invoke-static {v0}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "event"

    invoke-direct {v2, v3, v0}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/google/firebase/messaging/a;->m:Lu7/c;

    invoke-static {}, LMd/c;->c()LMd/c;

    move-result-object v0

    const/16 v2, 0xd

    iput v2, v0, LMd/c;->b:I

    invoke-virtual {v0}, LMd/c;->a()Lx7/a;

    move-result-object v0

    invoke-static {v1, v0}, LB/e;->v(Ljava/lang/Class;Lx7/a;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v2, Lu7/c;

    invoke-static {v0}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "analyticsLabel"

    invoke-direct {v2, v3, v0}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/google/firebase/messaging/a;->n:Lu7/c;

    invoke-static {}, LMd/c;->c()LMd/c;

    move-result-object v0

    const/16 v2, 0xe

    iput v2, v0, LMd/c;->b:I

    invoke-virtual {v0}, LMd/c;->a()Lx7/a;

    move-result-object v0

    invoke-static {v1, v0}, LB/e;->v(Ljava/lang/Class;Lx7/a;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v2, Lu7/c;

    invoke-static {v0}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v3, "campaignId"

    invoke-direct {v2, v3, v0}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/google/firebase/messaging/a;->o:Lu7/c;

    invoke-static {}, LMd/c;->c()LMd/c;

    move-result-object v0

    const/16 v2, 0xf

    iput v2, v0, LMd/c;->b:I

    invoke-virtual {v0}, LMd/c;->a()Lx7/a;

    move-result-object v0

    invoke-static {v1, v0}, LB/e;->v(Ljava/lang/Class;Lx7/a;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Lu7/c;

    invoke-static {v0}, LB/e;->w(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "composerLabel"

    invoke-direct {v1, v2, v0}, Lu7/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v1, Lcom/google/firebase/messaging/a;->p:Lu7/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, LI7/d;

    check-cast p2, Lu7/e;

    iget-wide v0, p1, LI7/d;->a:J

    sget-object p0, Lcom/google/firebase/messaging/a;->b:Lu7/c;

    invoke-interface {p2, p0, v0, v1}, Lu7/e;->a(Lu7/c;J)Lu7/e;

    iget-object p0, p1, LI7/d;->b:Ljava/lang/String;

    sget-object v0, Lcom/google/firebase/messaging/a;->c:Lu7/c;

    invoke-interface {p2, v0, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, Lcom/google/firebase/messaging/a;->d:Lu7/c;

    iget-object v0, p1, LI7/d;->c:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, Lcom/google/firebase/messaging/a;->e:Lu7/c;

    iget-object v0, p1, LI7/d;->d:LI7/b;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, Lcom/google/firebase/messaging/a;->f:Lu7/c;

    iget-object v0, p1, LI7/d;->e:LI7/c;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, Lcom/google/firebase/messaging/a;->g:Lu7/c;

    iget-object v0, p1, LI7/d;->f:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    iget-object p0, p1, LI7/d;->g:Ljava/lang/String;

    sget-object v0, Lcom/google/firebase/messaging/a;->h:Lu7/c;

    invoke-interface {p2, v0, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, Lcom/google/firebase/messaging/a;->i:Lu7/c;

    const/4 v0, 0x0

    invoke-interface {p2, p0, v0}, Lu7/e;->b(Lu7/c;I)Lu7/e;

    sget-object p0, Lcom/google/firebase/messaging/a;->j:Lu7/c;

    iget v0, p1, LI7/d;->h:I

    invoke-interface {p2, p0, v0}, Lu7/e;->b(Lu7/c;I)Lu7/e;

    iget-object p0, p1, LI7/d;->i:Ljava/lang/String;

    sget-object v0, Lcom/google/firebase/messaging/a;->k:Lu7/c;

    invoke-interface {p2, v0, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, Lcom/google/firebase/messaging/a;->l:Lu7/c;

    const-wide/16 v0, 0x0

    invoke-interface {p2, p0, v0, v1}, Lu7/e;->a(Lu7/c;J)Lu7/e;

    sget-object p0, Lcom/google/firebase/messaging/a;->m:Lu7/c;

    iget-object v2, p1, LI7/d;->j:LI7/a;

    invoke-interface {p2, p0, v2}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    iget-object p0, p1, LI7/d;->k:Ljava/lang/String;

    sget-object v2, Lcom/google/firebase/messaging/a;->n:Lu7/c;

    invoke-interface {p2, v2, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, Lcom/google/firebase/messaging/a;->o:Lu7/c;

    invoke-interface {p2, p0, v0, v1}, Lu7/e;->a(Lu7/c;J)Lu7/e;

    iget-object p0, p1, LI7/d;->l:Ljava/lang/String;

    sget-object p1, Lcom/google/firebase/messaging/a;->p:Lu7/c;

    invoke-interface {p2, p1, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    return-void
.end method
