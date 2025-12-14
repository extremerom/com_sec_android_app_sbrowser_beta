.class public final LH4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu7/d;


# static fields
.field public static final a:LH4/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LH4/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LH4/e;->a:LH4/e;

    const-string v0, "clientMetrics"

    invoke-static {v0}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method
