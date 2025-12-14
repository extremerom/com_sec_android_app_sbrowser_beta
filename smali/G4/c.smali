.class public final LG4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu7/d;


# static fields
.field public static final a:LG4/c;

.field public static final b:Lu7/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LG4/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LG4/c;->a:LG4/c;

    const-string v0, "logRequest"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    move-result-object v0

    sput-object v0, LG4/c;->b:Lu7/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LG4/p;

    check-cast p2, Lu7/e;

    check-cast p1, LG4/i;

    iget-object p0, p1, LG4/i;->a:Ljava/util/ArrayList;

    sget-object p1, LG4/c;->b:Lu7/c;

    invoke-interface {p2, p1, p0}, Lu7/e;->c(Lu7/c;Ljava/lang/Object;)Lu7/e;

    return-void
.end method
