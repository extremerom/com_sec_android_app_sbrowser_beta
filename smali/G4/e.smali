.class public final LG4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu7/d;


# static fields
.field public static final a:LG4/e;

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

    new-instance v0, LG4/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LG4/e;->a:LG4/e;

    const-string v0, "eventTimeMs"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/e;->b:Lu7/c;

    const-string v0, "eventCode"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/e;->c:Lu7/c;

    const-string v0, "eventUptimeMs"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/e;->d:Lu7/c;

    const-string v0, "sourceExtension"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/e;->e:Lu7/c;

    const-string v0, "sourceExtensionJsonProto3"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/e;->f:Lu7/c;

    const-string v0, "timezoneOffsetSeconds"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/e;->g:Lu7/c;

    const-string v0, "networkConnectionInfo"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/e;->h:Lu7/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, LG4/t;

    check-cast p2, Lu7/e;

    check-cast p1, LG4/l;

    iget-wide v0, p1, LG4/l;->a:J

    sget-object p0, LG4/e;->b:Lu7/c;

    invoke-interface {p2, p0, v0, v1}, Lu7/e;->a(Lu7/c;J)Lu7/e;

    iget-object p0, p1, LG4/l;->b:Ljava/lang/Integer;

    sget-object v0, LG4/e;->c:Lu7/c;

    invoke-interface {p2, v0, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG4/e;->d:Lu7/c;

    iget-wide v0, p1, LG4/l;->c:J

    invoke-interface {p2, p0, v0, v1}, Lu7/e;->a(Lu7/c;J)Lu7/e;

    sget-object p0, LG4/e;->e:Lu7/c;

    iget-object v0, p1, LG4/l;->d:[B

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG4/e;->f:Lu7/c;

    iget-object v0, p1, LG4/l;->e:Ljava/lang/String;

    invoke-interface {p2, p0, v0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG4/e;->g:Lu7/c;

    iget-wide v0, p1, LG4/l;->f:J

    invoke-interface {p2, p0, v0, v1}, Lu7/e;->a(Lu7/c;J)Lu7/e;

    sget-object p0, LG4/e;->h:Lu7/c;

    iget-object p1, p1, LG4/l;->g:LG4/o;

    invoke-interface {p2, p0, p1}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    return-void
.end method
