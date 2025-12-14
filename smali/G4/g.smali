.class public final LG4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu7/d;


# static fields
.field public static final a:LG4/g;

.field public static final b:Lu7/c;

.field public static final c:Lu7/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LG4/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LG4/g;->a:LG4/g;

    const-string v0, "networkType"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/g;->b:Lu7/c;

    const-string v0, "mobileSubtype"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/g;->c:Lu7/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, LG4/x;

    check-cast p2, Lu7/e;

    check-cast p1, LG4/o;

    iget-object p0, p1, LG4/o;->a:LG4/w;

    sget-object v0, LG4/g;->b:Lu7/c;

    invoke-interface {p2, v0, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    sget-object p0, LG4/g;->c:Lu7/c;

    iget-object p1, p1, LG4/o;->b:LG4/v;

    invoke-interface {p2, p0, p1}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    return-void
.end method
