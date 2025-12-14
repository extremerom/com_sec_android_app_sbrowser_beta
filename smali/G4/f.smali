.class public final LG4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu7/d;


# static fields
.field public static final a:LG4/f;

.field public static final b:Lu7/c;

.field public static final c:Lu7/c;

.field public static final d:Lu7/c;

.field public static final e:Lu7/c;

.field public static final f:Lu7/c;

.field public static final g:Lu7/c;

.field public static final h:Lu7/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LG4/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LG4/f;->a:LG4/f;

    const-string v0, "requestTimeMs"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/f;->b:Lu7/c;

    const-string v0, "requestUptimeMs"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/f;->c:Lu7/c;

    const-string v0, "clientInfo"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/f;->d:Lu7/c;

    const-string v0, "logSource"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/f;->e:Lu7/c;

    const-string v0, "logSourceName"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/f;->f:Lu7/c;

    const-string v0, "logEvent"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/f;->g:Lu7/c;

    const-string v0, "qosTier"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/f;->h:Lu7/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, LG4/u;

    check-cast p2, Lu7/e;

    check-cast p1, LG4/m;

    iget-wide v0, p1, LG4/m;->a:J

    sget-object p0, LG4/f;->b:Lu7/c;

    invoke-interface {p2, p0, v0, v1}, Lu7/e;->a(Lu7/c;J)Lu7/e;

    iget-wide v0, p1, LG4/m;->b:J

    sget-object p0, LG4/f;->c:Lu7/c;

    invoke-interface {p2, p0, v0, v1}, Lu7/e;->a(Lu7/c;J)Lu7/e;

    iget-object p0, p1, LG4/m;->c:LG4/j;

    sget-object v0, LG4/f;->d:Lu7/c;

    invoke-interface {p2, v0, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG4/f;->e:Lu7/c;

    iget-object v0, p1, LG4/m;->d:Ljava/lang/Integer;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG4/f;->f:Lu7/c;

    iget-object v0, p1, LG4/m;->e:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    iget-object p0, p1, LG4/m;->f:Ljava/util/ArrayList;

    sget-object v0, LG4/f;->g:Lu7/c;

    invoke-interface {p2, v0, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG4/f;->h:Lu7/c;

    iget-object p1, p1, LG4/m;->g:LG4/y;

    invoke-interface {p2, p0, p1}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    return-void
.end method
