.class public final LG4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu7/d;


# static fields
.field public static final a:LG4/d;

.field public static final b:Lu7/c;

.field public static final c:Lu7/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LG4/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LG4/d;->a:LG4/d;

    const-string v0, "clientType"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/d;->b:Lu7/c;

    const-string v0, "androidClientInfo"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/d;->c:Lu7/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, LG4/r;

    check-cast p2, Lu7/e;

    check-cast p1, LG4/j;

    iget-object p0, p1, LG4/j;->a:LG4/q;

    sget-object v0, LG4/d;->b:Lu7/c;

    invoke-interface {p2, v0, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    iget-object p0, p1, LG4/j;->b:LG4/h;

    sget-object p1, LG4/d;->c:Lu7/c;

    invoke-interface {p2, p1, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    return-void
.end method
